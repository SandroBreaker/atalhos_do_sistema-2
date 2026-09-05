# Mapeamento dos fluxos

Hoje o projeto funciona em **4 camadas**, embora elas estejam meio misturadas:

```text
┌──────────────────────────────┐
│          LOGIN BASH          │
│          ~/.bashrc           │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│       ~/.bash_aliases        │
│ aliases + funções + mano()   │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│       ~/.mano/loader.sh      │
│ carrega aliases customizados │
│ define loader de categorias  │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│        comando: mano         │
└──────────────┬───────────────┘
               │
       ┌───────┴────────┐
       ▼                ▼
 BUILT-IN          CUSTOM
 funções           categories/*.sh
       │                │
       └───────┬────────┘
               ▼
          função executada
```

## 1. Fluxo de inicialização

```text
Bash inicia
   │
   ▼
~/.bashrc
   │
   └── source ~/.bash_aliases
              │
              ├── aliases
              ├── funções
              ├── mano_ferramentas()
              ├── mano_rede()
              ├── mano_pacotes()
              ├── ...
              │
              └── source ~/.mano/loader.sh
                           │
                           ├── source ~/.mano/aliases.sh
                           │
                           └── define
                               mano_load_custom_categories()
```

### Ponto crítico

O `loader.sh` **não carrega imediatamente as categorias**.

Ele apenas cria:

```bash
mano_load_custom_categories()
```

As categorias são carregadas depois, dentro de:

```bash
mano()
```

Isso foi uma boa decisão para manter o carregamento relativamente leve.

Mas existe uma consequência:

```text
Terminal abriu
      │
      ├── alias Search existe
      │
      └── mano_custom_Search NÃO existe ainda
```

Então:

```bash
Search
```

pode dar:

```text
command not found
```

até o `mano` ter executado `mano_load_custom_categories()`.

Esse é um bug arquitetural real, não só cosmético.

---

# 2. Fluxo do `mano`

```text
mano
 │
 ▼
while true
 │
 ▼
mano_load_custom_categories
 │
 ▼
zera arrays
 │
 ├── gaming.sh
 ├── Search.sh
 ├── qualquer-nova-categoria.sh
 │
 ▼
source arquivo
 │
 ├── MANO_CUSTOM_NAME
 ├── MANO_CUSTOM_DESC
 └── MANO_CUSTOM_FUNC
 │
 ▼
arrays:
MANO_CUSTOM_NAMES[]
MANO_CUSTOM_DESCS[]
MANO_CUSTOM_FUNCS[]
 │
 ▼
renderiza menu
 │
 ├── 1 Ferramentas
 ├── 2 Rede
 ├── ...
 ├── 9 PowerShell
 ├── 10 Gaming
 ├── 11 Procurar
 └── ...
```

Depois:

```text
entrada
 │
 ├── 1..9 → função fixa
 │
 ├── 10+ → calcula índice
 │          │
 │          └── MANO_CUSTOM_FUNCS[indice]
 │
 ├── r → source ~/.bashrc
 │
 └── 0 → return
```

Esse mecanismo está **conceitualmente bom**.

Você já tem um mini sistema de plugins.

---

# 3. Fluxo de criação de categoria

```text
mano-add
   │
   ▼
menu()
   │
   ▼
2) Nova categoria
   │
   ├── nome
   ├── descrição
   ├── gera slug
   ├── gera arquivo
   ├── gera função
   ├── chmod +x
   └── nano
```

Exemplo:

```text
"Ferramentas Dev"
       │
       ▼
ferramentas_dev.sh
       │
       ├── MANO_CUSTOM_NAME
       ├── MANO_CUSTOM_DESC
       ├── MANO_CUSTOM_FUNC
       └── mano_custom_ferramentas_dev()
```

Depois:

```text
mano
 │
 └── loader detecta automaticamente
```

Essa parte está bacana.

É exatamente o comportamento que você quer de uma arquitetura modular.

---

# 4. Fluxo de criação de alias

Hoje:

```text
mano-add
 │
 ▼
Novo alias
 │
 ▼
seleciona categoria
 │
 ▼
lê MANO_CUSTOM_FUNC
 │
 ▼
nome = teste
 │
 ▼
append em category.sh
```

Resultado:

```bash
alias teste='mano_custom_Search'
```

Aqui existe uma peculiaridade:

### O alias pertence fisicamente à categoria

```text
categories/
 └── Search.sh
       ├── metadata
       ├── função
       └── alias teste
```

Isso é válido, mas cria uma dependência estranha:

```text
alias
 ↓
função
 ↓
categoria
```

Se apagar a categoria:

```text
Search.sh
```

o alias continua existindo em:

```text
.mano/aliases.sh
```

ou no shell atual, dependendo de como foi carregado.

Isso pode gerar **aliases órfãos**.

---

# Análise crítica

## 🟢 O que está realmente bom

### 1. Descoberta automática de categorias

```bash
for file in "$MANO_CATEGORY_DIR"/*.sh
```

Isso é o coração correto do projeto.

Você não precisa editar:

```bash
mano()
```

para criar:

```text
gaming
search
backup
multimedia
dev
etc.
```

Isso é modularidade de verdade.

---

### 2. Arrays separados de metadata

```bash
MANO_CUSTOM_NAMES
MANO_CUSTOM_DESCS
MANO_CUSTOM_FUNCS
```

Boa separação.

Você já está tratando categoria como objeto conceitual:

```text
Categoria
 ├── nome
 ├── descrição
 └── função
```

Só está implementado em Bash na base do sofrimento humano.

---

### 3. `mano-add` já é praticamente um gerenciador de plugins

Você tem:

```text
CREATE
EDIT
DELETE
LIST
VALIDATE
```

Ou seja:

```text
CRUD + validação
```

Para um projeto Bash pessoal, isso já passou da fase de "uns aliases".

---

# 🔴 Problemas que eu corrigiria primeiro

## 1. `.bash_aliases` está fazendo coisa demais

Hoje:

```text
.bash_aliases
 ├── aliases
 ├── funções auxiliares
 ├── menus
 ├── gerenciamento de categorias
 ├── lógica de sistema
 ├── integração AI
 └── bootstrap do MANO
```

Esse arquivo virou um **god file**.

Está funcionando, mas crescerá até virar uma desgraça impossível de manter.

---

## 2. Categorias são recarregadas toda vez que o menu desenha

Você faz:

```bash
while true; do
    mano_load_custom_categories
    ...
done
```

Então:

```text
abre mano
 ↓
carrega categorias
 ↓
usuário escolhe
 ↓
volta
 ↓
carrega categorias novamente
 ↓
volta
 ↓
carrega novamente
```

Não é catastrófico.

Mas é desnecessário.

Melhor:

```text
mano
 │
 ├── load_custom_categories
 │
 └── while true
       ├── render
       ├── execute
       └── repeat
```

E somente:

```text
r
```

faria reload.

---

# 3. `source` de qualquer `.sh` = código arbitrário

Esse aqui é o ponto mais sério:

```bash
source "$file"
```

Você está dizendo:

> "Todo `.sh` que aparecer nessa pasta merece executar código."

Para uma máquina pessoal, tranquilo.

Mas arquiteturalmente:

```text
categoria = plugin executável
```

E não:

```text
categoria = configuração
```

Isso deveria ser uma decisão consciente.

---

# 4. `bash -n` não valida o comportamento

Seu:

```bash
bash -n arquivo.sh
```

só responde:

```text
sintaxe válida
```

Não responde:

```text
função existe?
metadata válida?
alias válido?
dependências existem?
variáveis corretas?
categoria consegue carregar?
```

Eu faria uma validação em níveis:

```text
NÍVEL 1
bash -n

NÍVEL 2
metadata

NÍVEL 3
função declarada

NÍVEL 4
categoria carregável

NÍVEL 5
aliases válidos
```

---

# 5. `mano-add` não deveria escrever diretamente no código da categoria

Hoje:

```bash
printf '\nalias %s='\''%s'\''\n' "$nome" "$func" >> "$arquivo"
```

Isso mistura:

```text
plugin
+
configuração
```

Eu separaria.

### Melhor:

```text
.mano/
├── categories/
│   ├── gaming.sh
│   └── search.sh
│
├── aliases/
│   ├── gaming.sh
│   └── search.sh
```

Ou ainda melhor:

```text
categories/
    gaming.sh

aliases/
    gaming.conf
```

Aí categoria contém **comportamento**.

Alias contém **configuração**.

---

# 6. Caminhos estão hardcoded demais

Exemplo:

```bash
/media/sandro/Storage
```

e:

```bash
/media/sandro/Storage/04_Projetos_e_Codigo/Pastas_Projeto/dev
```

Hoje funciona.

Mas seu sistema não é realmente portável.

Melhor:

```bash
MANO_STORAGE="/media/$USER/Storage"
```

E depois:

```bash
"$MANO_STORAGE/Downloads"
"$MANO_STORAGE/04_Projetos_e_Codigo/Pastas_Projeto/dev"
```

Melhor ainda:

```bash
MANO_STORAGE="${MANO_STORAGE:-/media/$USER/Storage}"
```

---

# A maior melhoria que eu faria

Transformaria a arquitetura nisso:

```text
atalhos_do_sistema/
│
├── .bashrc
├── .bash_aliases
│
└── .mano/
    │
    ├── core/
    │   ├── loader.sh
    │   ├── menu.sh
    │   ├── utils.sh
    │   └── config.sh
    │
    ├── aliases/
    │   ├── system.sh
    │   ├── dev.sh
    │   └── custom.sh
    │
    ├── categories/
    │   ├── gaming.sh
    │   ├── search.sh
    │   └── ...
    │
    ├── data/
    │   └── config.sh
    │
    └── bin/
        └── mano-add
```

E o fluxo:

```text
.bashrc
   │
   ▼
.bash_aliases
   │
   ▼
.mano/core/loader.sh
   │
   ├── config
   ├── utils
   ├── aliases
   └── categories
          │
          ▼
        mano
          │
          ├── Core categories
          │
          └── Plugins
                 │
                 ├── Gaming
                 ├── Search
                 ├── Backup
                 └── qualquer nova categoria
```

---

# E eu mudaria o conceito de categoria

Hoje:

```bash
MANO_CUSTOM_NAME
MANO_CUSTOM_DESC
MANO_CUSTOM_FUNC
```

Eu criaria uma API simples:

```bash
mano_register_category \
    "🎮 Gaming" \
    "Ferramentas para jogos" \
    "mano_custom_gaming"
```

Aí o plugin fica:

```bash
#!/usr/bin/env bash

mano_custom_gaming() {
    ...
}

mano_register_category \
    "🎮 Gaming" \
    "Ferramentas para jogos" \
    "mano_custom_gaming"
```

Isso elimina a dependência de variáveis mágicas.

Fica muito mais parecido com um sistema de plugins real.

---

# Fluxo ideal V2

```text
                    ┌──────────────┐
                    │    BASH      │
                    └──────┬───────┘
                           │
                           ▼
                  ┌─────────────────┐
                  │ bootstrap MANO  │
                  └───────┬─────────┘
                          │
              ┌───────────┴───────────┐
              ▼                       ▼
       built-in modules         custom plugins
              │                       │
              └───────────┬───────────┘
                          ▼
                    registry MANO
                          │
                          ▼
                      menu()
                          │
             ┌────────────┼────────────┐
             ▼            ▼            ▼
          categoria    categoria    categoria
             │            │            │
             └────────────┼────────────┘
                          ▼
                       ação
```

E o `mano-add`:

```text
                 mano-add
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
     aliases    categories   validation
        │           │           │
        ▼           ▼           ▼
     registry   plugins      diagnostics
```

---

# Minha avaliação

| Área                           | Estado                                     |
| ------------------------------ | ------------------------------------------ |
| Modularidade                   | 🟢 Boa                                     |
| Descoberta automática          | 🟢 Muito boa                               |
| UX do menu                     | 🟢 Boa                                     |
| CRUD                           | 🟢 Bom                                     |
| Organização                    | 🟡 Precisa refatorar                       |
| Portabilidade                  | 🟡 Média                                   |
| Validação                      | 🟡 Básica                                  |
| Segurança do loader            | 🟠 Fraca                                   |
| Separação de responsabilidades | 🔴 Ruim                                    |
| Escalabilidade                 | 🟡 Boa ideia, implementação começa a pesar |

**O projeto está no ponto exato em que vale refatorar antes de adicionar mais 30 funcionalidades.** Depois disso vira aquele clássico sistema que ninguém entende, inclusive o filho da puta que escreveu. kkk

A direção que eu seguiria é: **MANO Core + Registry + Plugins + Config + CLI**, mantendo Bash por enquanto. Não vejo necessidade nenhuma de reescrever isso em Python agora. A arquitetura já permite crescer sem jogar fora o que você construiu.
