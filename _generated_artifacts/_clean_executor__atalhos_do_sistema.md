## MODO CLEAN EXPORT: atalhos_do_sistema

## PROJECT STRUCTURE
```text
└── atalhos_do_sistema
    ├── .mano
    │   ├── categories
    │   │   ├── gaming.sh
    │   │   └── Search.sh
    │   ├── aliases.sh
    │   ├── loader.sh
    │   └── mano-add
    ├── .bash_aliases
    └── .bashrc
```

### 2. SOURCE FILES

#### File: .bash_aliases
```text
# ============================================================
#                 SANDRO BASH ARSENAL
# ============================================================
# Arquivo: ~/.bash_aliases
# Menu principal: mano
# ============================================================

# ============================================================
# 🌐 REDE / INTERNET
# ============================================================

alias p='ping 8.8.8.8'
alias pg='ping -c 4 8.8.8.8'

alias n='nmcli'
alias ni='nmcli device status'
alias nc='nmcli connection show'
alias m='nmtui'

alias ipi='ip -br addr'
alias ipr='ip route'

alias ports='sudo ss -tulpn'
alias listen='ss -lntup'

alias dns='resolvectl status'
alias dnsf='sudo resolvectl flush-caches'

alias net='ip -br addr && echo && ip route'

alias publicip='curl -4 ifconfig.me'
alias headers='curl -I https://example.com'

# ============================================================
# 📦 APT / PACOTES
# ============================================================

alias up='sudo apt update && sudo apt upgrade'
alias upd='sudo apt update'
alias upgrade='sudo apt upgrade'

alias ins='sudo apt install'
alias rem='sudo apt remove'
alias purge='sudo apt purge'

alias autorem='sudo apt autoremove'
alias clean='sudo apt autoclean && sudo apt autoremove'

alias search='apt search'
alias show='apt show'

alias installed='apt list --installed 2>/dev/null'

alias fix='sudo apt --fix-broken install'
alias dpkgfix='sudo dpkg --configure -a'

# ============================================================
# 📁 NAVEGAÇÃO RÁPIDA
# ============================================================

alias home='cd ~'
alias back='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias root='cd /'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias c='clear'
alias cls='clear'

alias here='pwd'
alias tree='tree -C'

# ============================================================
# 📝 CONFIGURAÇÃO / BASH
# ============================================================

alias nan='nano ~/.bashrc'
alias aliases='nano ~/.bash_aliases'
alias bashrc='nano ~/.bashrc'
alias profile='nano ~/.profile'
alias zshrc='nano ~/.zshrc'

alias reload='source ~/.bashrc'

alias br='bash'

# ============================================================
# 🔧 SISTEMA
# ============================================================

alias mem='free -h'
alias ram='free -h'

alias disk='df -h'

alias disks='lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINTS'

alias cpu='lscpu'
alias kernel='uname -a'

alias sys='inxi -Fxxxz'
alias gpu='inxi -Gxx'

alias temp='sensors'

alias pstop='htop'

alias topcpu='ps aux --sort=-%cpu | head -20'
alias topmem='ps aux --sort=-%mem | head -20'

alias uptimep='uptime -p'

alias swp='swapon --show'
alias swap='free -h'

alias swappiness='cat /proc/sys/vm/swappiness'

# ============================================================
# 💾 DISCO / ARQUIVOS
# ============================================================

alias du1='du -h --max-depth=1 2>/dev/null | sort -h'

alias biggest='du -ah . 2>/dev/null | sort -rh | head -20'

alias cpv='cp -iv'
alias mvv='mv -iv'
alias rmv='rm -iv'

alias mdir='mkdir -pv'

alias mountlist='mount | column -t'

alias usb='lsusb'
alias pci='lspci'

# ============================================================
# 🔎 PROCESSOS
# ============================================================

alias psg='ps aux | grep -i'

alias jobsx='jobs -l'

alias kill9='kill -9'

alias portsnow='sudo lsof -i -P -n | grep LISTEN'

# ============================================================
# 🧰 GIT
# ============================================================

alias gs='git status'
alias ga='git add'

alias gc='git commit'
alias gp='git push'

alias gl='git log --oneline --graph --decorate --all'

alias gd='git diff'

alias gco='git checkout'
alias gb='git branch'

alias clone='git clone'

# ============================================================
# 🐍 PYTHON
# ============================================================

alias py='python3'
alias pip='python3 -m pip'

alias venv='python3 -m venv .venv'

alias activate='source .venv/bin/activate'

alias freeze='pip freeze'

# ============================================================
# 🟢 NODE / NPM
# ============================================================

alias npi='npm install'
alias npd='npm install -D'

alias nr='npm run'
alias nrd='npm run dev'
alias nrb='npm run build'
alias nrs='npm run start'

alias nls='npm list --depth=0'

alias nodev='node --version'
alias npmv='npm --version'

# ============================================================
# 🐳 DOCKER
# ============================================================

alias d='docker'

alias dps='docker ps'
alias dpsa='docker ps -a'

alias di='docker images'

alias dex='docker exec -it'

alias dlog='docker logs'

alias dstop='docker stop'
alias drm='docker rm'

alias dc='docker compose'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dcl='docker compose logs -f'

# ============================================================
# ⚡ POWERSHELL
# ============================================================

alias pshell='pwsh'
alias ps7='pwsh -NoProfile'

alias psv='pwsh -NoProfile -Command "$PSVersionTable.PSVersion"'

# ============================================================
# 🤖 OLLAMA / IA
# ============================================================

alias oll='ollama'
alias olls='ollama list'
alias ollps='ollama ps'
alias ollrun='ollama run'
alias ollstop='ollama stop'

alias ollama-proxy='HTTPS_PROXY=http://10.179.83.59:44355 ollama serve'

alias on='export http_proxy=http://10.179.83.59:44355 https_proxy=http://10.179.83.59:44355'
alias off='unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY'

# ============================================================
# 📱 ANDROID / ADB / SCRCPY
# ============================================================

alias adbdev='adb devices'
alias adbsh='adb shell'
alias adbreboot='adb reboot'

alias cell='cd /media/sandro/Storage/Downloads/scrcpy-linux-x86_64-v3.3.4 && ./scrcpy -m 1024 -b 2M --max-fps=30 --video-codec=h264 -S'

# ============================================================
# 🧰 VIBE TOOLKIT
# ============================================================

alias toolkit='vibe-toolkit'

# ============================================================
# 🧹 MANUTENÇÃO
# ============================================================

alias clslog='sudo journalctl --vacuum-time=7d'

alias journal='journalctl -p 3 -xb'

alias failed='systemctl --failed'

alias services='systemctl --type=service --state=running'

alias rb='sudo reboot'
alias offpc='sudo shutdown -h now'

# ============================================================
# 📊 INFORMAÇÕES RÁPIDAS
# ============================================================

alias who='whoami'
alias where='which'

alias path='echo "$PATH" | tr ":" "\n"'

alias hist30='history | tail -30'

# ============================================================
# 🛠️ FUNÇÕES AUXILIARES
# ============================================================

mkcd() {
    if [ -z "$1" ]; then
        echo "Uso: mkcd <diretorio>"
        return 1
    fi

    mkdir -pv "$1" && cd "$1"
}

proc() {
    if [ -z "$1" ]; then
        echo "Uso: proc <nome>"
        return 1
    fi

    ps aux | grep -i -- "$1" | grep -v grep
}

size() {
    if [ -z "$1" ]; then
        du -sh .
    else
        du -sh "$1"
    fi
}

bak() {
    if [ -z "$1" ]; then
        echo "Uso: bak <arquivo>"
        return 1
    fi

    cp -iv "$1" "$1.bak"
}

# ============================================================
# 🧭 CONTROLE DO MENU
# ============================================================

mano_pause() {
    echo
    read -rp "Pressione ENTER para voltar..." _
}

# ============================================================
# 📱 FERRAMENTAS
# ============================================================

mano_ferramentas() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║              📱 FERRAMENTAS                 ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 📱 scrcpy / celular                     ║"
        echo "║  2) 📱 ADB dispositivos                     ║"
        echo "║  3) 📱 ADB shell                            ║"
        echo "║  4) 📱 ADB reboot                           ║"
        echo "║  5) 🧰 Vibe Toolkit                         ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                cell
                ;;

            2)
                adbdev
                mano_pause
                ;;

            3)
                adbsh
                ;;

            4)
                adbreboot
                mano_pause
                ;;

            5)
                toolkit
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 🌐 REDE
# ============================================================

mano_rede() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║                 🌐 REDE                     ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 📡 Status interfaces                    ║"
        echo "║  2) 🌐 IP / interfaces                      ║"
        echo "║  3) 🛣️  Rotas                               ║"
        echo "║  4) 🔌 Portas abertas                       ║"
        echo "║  5) 👂 Serviços escutando                   ║"
        echo "║  6) 🧭 Diagnóstico completo                  ║"
        echo "║  7) 🌍 IP público                            ║"
        echo "║  8) 🧠 DNS                                  ║"
        echo "║  9) 🧹 Limpar cache DNS                      ║"
        echo "║ 10) 🛠️  NetworkManager                      ║"
        echo "║ 11) 🏓 Ping Google                           ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                ni
                mano_pause
                ;;

            2)
                ipi
                mano_pause
                ;;

            3)
                ipr
                mano_pause
                ;;

            4)
                ports
                mano_pause
                ;;

            5)
                listen
                mano_pause
                ;;

            6)
                net
                mano_pause
                ;;

            7)
                publicip
                echo
                mano_pause
                ;;

            8)
                dns
                mano_pause
                ;;

            9)
                dnsf
                echo "✅ Cache DNS limpo."
                mano_pause
                ;;

            10)
                m
                ;;

            11)
                pg
                mano_pause
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 📦 PACOTES
# ============================================================

mano_pacotes() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║                📦 PACOTES                   ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 🔄 Atualizar índice                     ║"
        echo "║  2) ⬆️  Atualizar sistema                    ║"
        echo "║  3) 📦 Instalar pacote                       ║"
        echo "║  4) 🗑️  Remover pacote                       ║"
        echo "║  5) 💀 Purge pacote                          ║"
        echo "║  6) 🧹 Autoremove                            ║"
        echo "║  7) 🔍 Procurar pacote                       ║"
        echo "║  8) ℹ️  Informações pacote                   ║"
        echo "║  9) 📋 Pacotes instalados                    ║"
        echo "║ 10) 🔧 Corrigir dependências                 ║"
        echo "║ 11) 🛠️  Corrigir dpkg                        ║"
        echo "║ 12) 🧽 Limpeza                               ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                upd
                mano_pause
                ;;

            2)
                up
                mano_pause
                ;;

            3)
                read -rp "  📦 Pacote para instalar: " pkg
                [ -n "$pkg" ] && sudo apt install "$pkg"
                mano_pause
                ;;

            4)
                read -rp "  🗑️ Pacote para remover: " pkg
                [ -n "$pkg" ] && sudo apt remove "$pkg"
                mano_pause
                ;;

            5)
                read -rp "  💀 Pacote para purge: " pkg
                [ -n "$pkg" ] && sudo apt purge "$pkg"
                mano_pause
                ;;

            6)
                autorem
                mano_pause
                ;;

            7)
                read -rp "  🔍 Buscar: " pkg
                [ -n "$pkg" ] && apt search "$pkg"
                mano_pause
                ;;

            8)
                read -rp "  ℹ️ Pacote: " pkg
                [ -n "$pkg" ] && apt show "$pkg"
                mano_pause
                ;;

            9)
                installed
                mano_pause
                ;;

            10)
                fix
                mano_pause
                ;;

            11)
                dpkgfix
                mano_pause
                ;;

            12)
                clean
                mano_pause
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 📁 ARQUIVOS
# ============================================================

mano_arquivos() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║                📁 ARQUIVOS                  ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 📋 Listar arquivos                      ║"
        echo "║  2) 👁️  Arquivos ocultos                     ║"
        echo "║  3) 🌳 Tree                                 ║"
        echo "║  4) 📊 Tamanho por pasta                     ║"
        echo "║  5) 🔎 Maiores arquivos                      ║"
        echo "║  6) 💾 Uso do disco                          ║"
        echo "║  7) 💿 Discos / partições                    ║"
        echo "║  8) 🔌 USB                                   ║"
        echo "║  9) 🧩 PCI                                   ║"
        echo "║ 10) 📍 Diretório atual                       ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                ll
                mano_pause
                ;;

            2)
                la
                mano_pause
                ;;

            3)
                tree
                mano_pause
                ;;

            4)
                du1
                mano_pause
                ;;

            5)
                biggest
                mano_pause
                ;;

            6)
                disk
                mano_pause
                ;;

            7)
                disks
                mano_pause
                ;;

            8)
                usb
                mano_pause
                ;;

            9)
                pci
                mano_pause
                ;;

            10)
                here
                mano_pause
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 📂 NAVEGAÇÃO
# ============================================================

mano_navegacao() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║               📂 NAVEGAÇÃO                  ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 🏠 Home                                 ║"
        echo "║  2) ⬆️  Voltar 1 pasta                       ║"
        echo "║  3) ⬆️  Voltar 2 pastas                      ║"
        echo "║  4) ⬆️  Voltar 3 pastas                      ║"
        echo "║  5) 📍 Onde estou                            ║"
        echo "║  6) 📋 Listar arquivos                      ║"
        echo "║  7) 👁️  Listar ocultos                       ║"
        echo "║  8) 🌳 Tree                                 ║"
        echo "║  9) 📁 Ir para pasta                        ║"
        echo "║ 10) ➕ Criar pasta                           ║"
        echo "║ 11) 🚀 Criar pasta + entrar                 ║"
        echo "║ 12) 🌳 Ir para raiz /                        ║"
        echo "║ 13) 💾 Ir para Storage                       ║"
        echo "║ 14) 📥 Ir para Downloads                     ║"
        echo "║ 15) 🛠️  Ir para Projetos                     ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        echo
        echo "📍 Atual: $(pwd)"
        echo

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                cd ~ || return
                ;;

            2)
                cd .. || return
                ;;

            3)
                cd ../.. || return
                ;;

            4)
                cd ../../.. || return
                ;;

            5)
                echo
                pwd
                mano_pause
                ;;

            6)
                echo
                ls -CF
                mano_pause
                ;;

            7)
                echo
                ls -la
                mano_pause
                ;;

            8)
                echo
                tree -C
                mano_pause
                ;;

            9)
                echo
                read -rp "  📁 Caminho: " destino

                if [ -n "$destino" ]; then
                    cd "$destino" 2>/dev/null || {
                        echo
                        echo "❌ Pasta não encontrada."
                        mano_pause
                    }
                fi
                ;;

            10)
                echo
                read -rp "  📁 Nome da pasta: " pasta

                if [ -n "$pasta" ]; then
                    mkdir -pv "$pasta"
                    mano_pause
                fi
                ;;

            11)
                echo
                read -rp "  🚀 Nome da pasta: " pasta

                if [ -n "$pasta" ]; then
                    mkdir -pv "$pasta" && cd "$pasta"
                fi
                ;;

            12)
                cd / || return
                ;;

            13)
                if [ -d "/media/sandro/Storage" ]; then
                    cd "/media/sandro/Storage" || return
                else
                    echo
                    echo "❌ Storage não encontrado."
                    mano_pause
                fi
                ;;

            14)
                if [ -d "/media/sandro/Storage/Downloads" ]; then
                    cd "/media/sandro/Storage/Downloads" || return
                else
                    echo
                    echo "❌ Downloads não encontrado."
                    mano_pause
                fi
                ;;

            15)
                if [ -d "/media/sandro/Storage/04_Projetos_e_Codigo/Pastas_Projeto/dev" ]; then
                    cd "/media/sandro/Storage/04_Projetos_e_Codigo/Pastas_Projeto/dev" || return
                else
                    echo
                    echo "❌ Diretório de projetos não encontrado."
                    mano_pause
                fi
                ;;

            b|B)
                return
                ;;

            *)
                echo
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 🔧 SISTEMA
# ============================================================

mano_sistema() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║                 🔧 SISTEMA                  ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 🧠 RAM                                  ║"
        echo "║  2) 💾 Disco                                ║"
        echo "║  3) 💿 Discos / partições                   ║"
        echo "║  4) 🖥️  GPU                                 ║"
        echo "║  5) 🧩 CPU                                  ║"
        echo "║  6) 🌡️  Temperaturas                         ║"
        echo "║  7) 🐧 Kernel                               ║"
        echo "║  8) 📊 Sistema completo                     ║"
        echo "║  9) 🔥 Processos CPU                        ║"
        echo "║ 10) 🧠 Processos RAM                        ║"
        echo "║ 11) ❌ Serviços falhos                      ║"
        echo "║ 12) ⚙️  Serviços ativos                     ║"
        echo "║ 13) 📜 Erros do journal                     ║"
        echo "║ 14) 🔄 Swap                                 ║"
        echo "║ 15) 🧮 Swappiness                            ║"
        echo "║ 16) ⏱️  Uptime                               ║"
        echo "║ 17) 🔌 USB                                  ║"
        echo "║ 18) 🧩 PCI                                  ║"
        echo "║ 19) 📈 htop                                 ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                ram
                mano_pause
                ;;

            2)
                disk
                mano_pause
                ;;

            3)
                disks
                mano_pause
                ;;

            4)
                gpu
                mano_pause
                ;;

            5)
                cpu
                mano_pause
                ;;

            6)
                temp
                mano_pause
                ;;

            7)
                kernel
                mano_pause
                ;;

            8)
                sys
                mano_pause
                ;;

            9)
                topcpu
                mano_pause
                ;;

            10)
                topmem
                mano_pause
                ;;

            11)
                failed
                mano_pause
                ;;

            12)
                services
                mano_pause
                ;;

            13)
                journal
                mano_pause
                ;;

            14)
                swp
                mano_pause
                ;;

            15)
                swappiness
                mano_pause
                ;;

            16)
                uptimep
                mano_pause
                ;;

            17)
                usb
                mano_pause
                ;;

            18)
                pci
                mano_pause
                ;;

            19)
                htop
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 🧑‍💻 DESENVOLVIMENTO
# ============================================================

mano_dev() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║            🧑‍💻 DESENVOLVIMENTO             ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 🧰 Git status                            ║"
        echo "║  2) ➕ Git add                               ║"
        echo "║  3) 💾 Git commit                            ║"
        echo "║  4) ⬆️  Git push                             ║"
        echo "║  5) 📜 Git log                               ║"
        echo "║  6) 🔍 Git diff                              ║"
        echo "║  7) 🌿 Git branch                            ║"
        echo "║  8) 📥 Git clone                             ║"
        echo "║  9) 🐍 Python versão                         ║"
        echo "║ 10) 📦 Pip versão                            ║"
        echo "║ 11) 🟢 Node versão                           ║"
        echo "║ 12) 📦 NPM versão                            ║"
        echo "║ 13) 📦 NPM install                           ║"
        echo "║ 14) 🛠️  NPM install -D                       ║"
        echo "║ 15) ▶️  NPM run                              ║"
        echo "║ 16) 🚀 NPM dev                               ║"
        echo "║ 17) 🏗️  NPM build                            ║"
        echo "║ 18) 🐳 Docker PS                             ║"
        echo "║ 19) 🐳 Docker imagens                        ║"
        echo "║ 20) 🐳 Docker Compose                        ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                gs
                mano_pause
                ;;

            2)
                read -rp "  Arquivos: " files
                [ -n "$files" ] && git add $files
                mano_pause
                ;;

            3)
                read -rp "  Mensagem do commit: " msg
                [ -n "$msg" ] && git commit -m "$msg"
                mano_pause
                ;;

            4)
                gp
                mano_pause
                ;;

            5)
                gl
                mano_pause
                ;;

            6)
                gd
                mano_pause
                ;;

            7)
                gb
                mano_pause
                ;;

            8)
                read -rp "  URL do repositório: " url
                [ -n "$url" ] && git clone "$url"
                mano_pause
                ;;

            9)
                python3 --version
                mano_pause
                ;;

            10)
                python3 -m pip --version
                mano_pause
                ;;

            11)
                node --version
                mano_pause
                ;;

            12)
                npm --version
                mano_pause
                ;;

            13)
                npi
                mano_pause
                ;;

            14)
                npd
                mano_pause
                ;;

            15)
                read -rp "  Script npm: " script
                [ -n "$script" ] && npm run "$script"
                mano_pause
                ;;

            16)
                nrd
                ;;

            17)
                nrb
                mano_pause
                ;;

            18)
                dps
                mano_pause
                ;;

            19)
                di
                mano_pause
                ;;

            20)
                dc
                mano_pause
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# 🤖 IA
# ============================================================

mano_ia() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║                  🤖 IA                      ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) 🤖 Ollama                               ║"
        echo "║  2) 📋 Modelos instalados                   ║"
        echo "║  3) ⚡ Modelos em execução                  ║"
        echo "║  4) ▶️  Executar modelo                      ║"
        echo "║  5) 🛑 Parar modelo                         ║"
        echo "║  6) 🌐 Iniciar Ollama proxy                 ║"
        echo "║  7) 🌐 Ativar proxy                         ║"
        echo "║  8) 🚫 Desativar proxy                      ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                oll
                mano_pause
                ;;

            2)
                olls
                mano_pause
                ;;

            3)
                ollps
                mano_pause
                ;;

            4)
                read -rp "  🤖 Modelo: " model
                [ -n "$model" ] && ollrun "$model"
                ;;

            5)
                read -rp "  🛑 Modelo: " model
                [ -n "$model" ] && ollstop "$model"
                mano_pause
                ;;

            6)
                ollama-proxy
                ;;

            7)
                on
                echo "✅ Proxy ativado."
                mano_pause
                ;;

            8)
                off
                echo "🚫 Proxy desativado."
                mano_pause
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# ⚡ POWERSHELL
# ============================================================

mano_powershell() {

    while true; do

        clear

        echo "╔══════════════════════════════════════════════╗"
        echo "║              ⚡ POWERSHELL                  ║"
        echo "╠══════════════════════════════════════════════╣"
        echo "║                                              ║"
        echo "║  1) ⚡ Abrir PowerShell                     ║"
        echo "║  2) 🔢 Versão PowerShell                    ║"
        echo "║  3) 🧪 PowerShell sem perfil                ║"
        echo "║                                              ║"
        echo "║  b) ↩ Voltar                                ║"
        echo "║                                              ║"
        echo "╚══════════════════════════════════════════════╝"

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                pshell
                ;;

            2)
                psv
                mano_pause
                ;;

            3)
                ps7
                ;;

            b|B)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}

# ============================================================
# ============================================================
# MANO NIVEL 2 MODULAR
# ============================================================

if [[ -f "$HOME/.mano/loader.sh" ]]; then
    source "$HOME/.mano/loader.sh"
fi

alias mano-add='$HOME/.mano/mano-add'

# ============================================================
# MANO MENU DINAMICO NIVEL 2
# ============================================================

mano() {

    while true; do

        clear

        # Atualiza categorias personalizadas
        if declare -F mano_load_custom_categories >/dev/null 2>&1; then
            mano_load_custom_categories
        else
            MANO_CUSTOM_NAMES=()
            MANO_CUSTOM_DESCS=()
            MANO_CUSTOM_FUNCS=()
        fi

        echo
        echo "╔════════════════════════════════════════════╗"
        echo "║            🛠️  ATALHOS DO SISTEMA         ║"
        echo "╚════════════════════════════════════════════╝"
        echo

        printf "  📍 %s\n" "$PWD"
        echo

        echo "  1) 🧰 Ferramentas"
        echo "  2) 🌐 Rede"
        echo "  3) 📦 Pacotes"
        echo "  4) 📁 Arquivos"
        echo "  5) 🧭 Navegação"
        echo "  6) 🔧 Sistema"
        echo "  7) 🧑‍💻 Desenvolvimento"
        echo "  8) 🤖 IA"
        echo "  9) ⚡ PowerShell"

        local i
        local numero=10

        for i in "${!MANO_CUSTOM_NAMES[@]}"; do

            printf " %2d) 🧩 %s\n" \
                "$numero" \
                "${MANO_CUSTOM_NAMES[$i]}"

            ((numero++))

        done

        echo
        echo "  r) 🔄 Recarregar"
        echo "  0) 🚪 Sair"
        echo

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                mano_ferramentas
                ;;

            2)
                mano_rede
                ;;

            3)
                mano_pacotes
                ;;

            4)
                mano_arquivos
                ;;

            5)
                mano_navegacao
                ;;

            6)
                mano_sistema
                ;;

            7)
                mano_dev
                ;;

            8)
                mano_ia
                ;;

            9)
                mano_powershell
                ;;

            r|R)
                source "$HOME/.bashrc"
                ;;

            0)
                clear
                echo
                echo "👋 Saindo do arsenal."
                echo
                return
                ;;

            *)
                if [[ "$op" =~ ^[0-9]+$ ]] &&
                   (( op >= 10 && op < numero )); then

                    local indice=$((op - 10))
                    local func="${MANO_CUSTOM_FUNCS[$indice]}"

                    if [[ -n "$func" ]] &&
                       declare -F "$func" >/dev/null 2>&1; then

                        "$func"

                    else

                        echo
                        echo "❌ Categoria inválida."
                        sleep 2

                    fi

                else

                    echo
                    echo "❌ Opção inválida."
                    sleep 1

                fi
                ;;

        esac

    done
}
```

#### File: .bashrc
```text
# ~/.bashrc
# Executado por bash(1) para shells interativos.

# Não faça nada se o shell não for interativo
case $- in
    *i*) ;;
      *) return;;
esac

# Não coloque linhas duplicadas ou que gerem erro neste arquivo.

# Histórico
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Verificar tamanho da janela após cada comando
shopt -s checkwinsize

# Corrigir suporte a lesspipe quando disponível
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Prompt colorido quando possível
case "$TERM" in
    xterm-color|*-256color)
        color_prompt=yes
        ;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt

# Título do terminal
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\u@\h: \w\a\]$PS1"
        ;;
esac

# Ativa suporte a aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

#### File: .mano/aliases.sh
```text
#!/usr/bin/env bash

# ============================================================
# 🧩 ALIASES CUSTOMIZADOS DO MANO
# ============================================================

# Adicione aliases personalizados aqui.
# Exemplo:
# alias exemplo='echo "Funcionou!"'

# Criado pelo mano-add em 2026-09-05 06:13:17
alias cls='clear'

# Criado pelo mano-add em 2026-09-05 07:00:48
alias Search='mano_custom_Search'
alias teste='mano_custom_teste'
```

#### File: .mano/categories/gaming.sh
```text
#!/usr/bin/env bash

MANO_CUSTOM_NAME="🎮 Gaming"
MANO_CUSTOM_DESC="Ferramentas para jogos"
MANO_CUSTOM_FUNC="mano_custom_gaming"

mano_custom_gaming() {

    while true; do

        clear

        echo
        echo "╔════════════════════════════════════════════╗"
        printf "║ %-42s ║\n" "🎮 Gaming"
        echo "╚════════════════════════════════════════════╝"
        echo

        echo "  1) 🔧 Testar categoria"
        echo "  0) ⬅️ Voltar"
        echo

        read -rp "  >> Escolha: " op

        case "$op" in

            1)
                echo
                echo "✅ Categoria funcionando."
                echo
                echo "📂 Arquivo:"
                echo "   /home/sandro/.mano/categories/gaming.sh"
                read -rp "ENTER..." _
                ;;

            0)
                return
                ;;

            *)
                echo "❌ Opção inválida."
                sleep 1
                ;;

        esac

    done
}
```

#### File: .mano/categories/Search.sh
```text
#!/usr/bin/env bash

MANO_CUSTOM_NAME="🔍 Procurar"
MANO_CUSTOM_DESC="Localiza arquivos pelo nome"
MANO_CUSTOM_FUNC="mano_custom_Search"

mano_custom_Search() {
    while true; do
        clear

        echo
        echo "╔════════════════════════════════════════════╗"
        echo "║              🔍 PROCURAR                   ║"
        echo "╚════════════════════════════════════════════╝"
        echo

        echo "  Onde procurar?"
        echo
        echo "  1) 🏠 Home"
        echo "  2) 💾 Storage"
        echo "  3) 📂 Pasta atual"
        echo "  4) 🌎 Todo o sistema"
        echo "  0) ⬅️ Voltar"
        echo

        read -rp "  >> Escolha: " local_op

        case "$local_op" in
            1)
                pasta="$HOME"
                ;;
            2)
                pasta="/media/sandro/Storage"

                if [[ ! -d "$pasta" ]]; then
                    echo
                    echo "  ❌ Storage não encontrado."
                    sleep 2
                    continue
                fi
                ;;
            3)
                pasta="$PWD"
                ;;
            4)
                pasta="/"
                ;;
            0)
                return
                ;;
            *)
                echo
                echo "  ❌ Opção inválida."
                sleep 1
                continue
                ;;
        esac

        echo
        read -rp "  🔎 Nome ou parte do nome: " termo

        if [[ -z "$termo" ]]; then
            echo
            echo "  ❌ Informe um nome."
            sleep 2
            continue
        fi

        echo
        echo "  🔍 Procurando..."
        echo "  📂 Local: $pasta"
        echo "  🔎 Termo: $termo"
        echo

        mapfile -t resultados < <(
            find "$pasta" \
                -type f \
                -iname "*${termo}*" \
                -print 2>/dev/null
        )

        if (( ${#resultados[@]} == 0 )); then
            echo "  ❌ Nenhum arquivo encontrado."
            echo
            read -rp "  Pressione ENTER para continuar..." _
            continue
        fi

        echo "  ✅ ${#resultados[@]} arquivo(s) encontrado(s):"
        echo

        local i=1

        for arquivo in "${resultados[@]}"; do
            printf "  %3d) %s\n" "$i" "$arquivo"
            ((i++))
        done

        echo
        read -rp "  Pressione ENTER para voltar..." _
    done
}
```

#### File: .mano/loader.sh
```text
#!/usr/bin/env bash

MANO_HOME="$HOME/.mano"
MANO_CATEGORY_DIR="$MANO_HOME/categories"

# ============================================================
# ALIASES PERSONALIZADOS
# ============================================================

if [[ -f "$MANO_HOME/aliases.sh" ]]; then
    source "$MANO_HOME/aliases.sh"
fi

# ============================================================
# CATEGORIAS PERSONALIZADAS
# ============================================================

mano_load_custom_categories() {

    MANO_CUSTOM_NAMES=()
    MANO_CUSTOM_DESCS=()
    MANO_CUSTOM_FUNCS=()

    local file

    shopt -s nullglob

    for file in "$MANO_CATEGORY_DIR"/*.sh; do

        unset MANO_CUSTOM_NAME
        unset MANO_CUSTOM_DESC
        unset MANO_CUSTOM_FUNC

        if source "$file" 2>/dev/null; then

            if [[ -n "${MANO_CUSTOM_NAME:-}" ]] &&
               [[ -n "${MANO_CUSTOM_FUNC:-}" ]]; then

                MANO_CUSTOM_NAMES+=("$MANO_CUSTOM_NAME")
                MANO_CUSTOM_DESCS+=("${MANO_CUSTOM_DESC:-Categoria personalizada}")
                MANO_CUSTOM_FUNCS+=("$MANO_CUSTOM_FUNC")

            fi

        fi

    done

    shopt -u nullglob
}
```

#### File: .mano/mano-add
```text
#!/usr/bin/env bash

set -o pipefail

MANO_HOME="$HOME/.mano"
ALIAS_FILE="$MANO_HOME/aliases.sh"
CATEGORY_DIR="$MANO_HOME/categories"
MAIN_ALIAS_FILE="$HOME/.bash_aliases"

mkdir -p "$MANO_HOME" "$CATEGORY_DIR"

pause() {
    echo
    read -rp "Pressione ENTER para continuar..." _
}

validar_nome() {
    [[ "$1" =~ ^[a-zA-Z_][a-zA-Z0-9_-]*$ ]]
}

carregar_categoria() {
    local arquivo="$1"

    unset MANO_CUSTOM_NAME
    unset MANO_CUSTOM_DESC
    unset MANO_CUSTOM_FUNC

    source "$arquivo" 2>/dev/null
}

obter_categorias() {
    local -n _resultado=$1

    _resultado=()

    shopt -s nullglob
    _resultado=("$CATEGORY_DIR"/*.sh)
    shopt -u nullglob
}

criar_alias() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║              ➕ NOVO ALIAS                 ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo
    local escolha
    local nome
    local func
    local cat_nome
    local alias_existente

    obter_categorias categorias

    if (( ${#categorias[@]} == 0 )); then
        echo "  ❌ Nenhuma categoria encontrada."
        echo
        echo "  Crie primeiro uma categoria em:"
        echo "  2) 📂 Nova categoria"
        pause
        return
    fi

    echo "  Escolha a categoria onde o alias será criado:"
    echo

    local i=1

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        printf "  %2d) %s\n" \
            "$i" \
            "${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"

        ((i++))
    done

    echo
    echo "  0) ⬅️ Voltar"
    echo

    read -rp "  >> Categoria: " escolha

    if [[ "$escolha" == "0" ]]; then
        return
    fi

    if ! [[ "$escolha" =~ ^[0-9]+$ ]] ||
       (( escolha < 1 || escolha > ${#categorias[@]} )); then
        echo
        echo "  ❌ Categoria inválida."
        pause
        return
    fi

    arquivo="${categorias[$((escolha - 1))]}"

    carregar_categoria "$arquivo"

    cat_nome="${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"
    func="${MANO_CUSTOM_FUNC:-}"

    if [[ -z "$func" ]]; then
        echo
        echo "  ❌ A categoria não possui MANO_CUSTOM_FUNC."
        pause
        return
    fi

    echo
    echo "  📂 Categoria:"
    echo "     $cat_nome"
    echo
    echo "  🔧 Função associada:"
    echo "     $func"
    echo

    read -rp "  Nome do alias: " nome

    if [[ -z "$nome" ]]; then
        echo
        echo "  ❌ Nome não pode ficar vazio."
        pause
        return
    fi

    if ! validar_nome "$nome"; then
        echo
        echo "  ❌ Nome inválido."
        echo "     Use letras, números, _ ou -."
        pause
        return
    fi

    # Verifica aliases existentes no arquivo da categoria,
    # no arquivo global do MANO e no .bash_aliases principal.
    if grep -Eq "^[[:space:]]*alias[[:space:]]+$nome=" "$arquivo" 2>/dev/null ||
       grep -Eq "^[[:space:]]*alias[[:space:]]+$nome=" "$ALIAS_FILE" 2>/dev/null ||
       grep -Eq "^[[:space:]]*alias[[:space:]]+$nome=" "$MAIN_ALIAS_FILE" 2>/dev/null; then

        echo
        echo "  ❌ O alias '$nome' já existe."
        pause
        return
    fi

    # O alias é gravado DENTRO da categoria.
    printf '\nalias %s='\''%s'\''\n' "$nome" "$func" >> "$arquivo"

    echo
    echo "  ✅ Alias criado!"
    echo
    echo "     📂 Categoria: $cat_nome"
    echo "     🔗 Alias:     $nome"
    echo "     🔧 Destino:   $func"
    echo
    echo "  📄 Arquivo:"
    echo "     $arquivo"

    pause
}

criar_categoria() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║             📂 NOVA CATEGORIA              ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local nome
    local desc
    local slug
    local arquivo
    local func

    read -rp "  Nome da categoria: " nome

    if [[ -z "$nome" ]]; then
        echo
        echo "  ❌ Nome não pode ficar vazio."
        pause
        return
    fi

    read -rp "  Descrição: " desc

    slug="$(
        printf '%s' "$nome" |
        tr '[:upper:]' '[:lower:]' |
        sed 's/[^a-z0-9_-]/_/g; s/__*/_/g; s/^_//; s/_$//'
    )"

    if [[ -z "$slug" ]]; then
        echo
        echo "  ❌ Não foi possível gerar o identificador."
        pause
        return
    fi

    arquivo="$CATEGORY_DIR/${slug}.sh"
    func="mano_custom_${slug}"

    if [[ -e "$arquivo" ]]; then
        echo
        echo "  ❌ A categoria já existe:"
        echo "     $arquivo"
        pause
        return
    fi

    cat > "$arquivo" <<CATEGORY_EOF
#!/usr/bin/env bash

MANO_CUSTOM_NAME="$nome"
MANO_CUSTOM_DESC="$desc"
MANO_CUSTOM_FUNC="$func"

$func() {
    while true; do
        clear

        echo
        echo "╔════════════════════════════════════════════╗"
        printf "║ %-42s ║\n" "$nome"
        echo "╚════════════════════════════════════════════╝"
        echo

        echo "  1) 🔧 Testar categoria"
        echo "  0) ⬅️ Voltar"
        echo

        read -rp "  >> Escolha: " op

        case "\$op" in
            1)
                echo
                echo "  ✅ Categoria funcionando."
                echo
                echo "  📂 Arquivo:"
                echo "     $arquivo"
                pause
                ;;
            0)
                return
                ;;
            *)
                echo
                echo "  ❌ Opção inválida."
                sleep 1
                ;;
        esac
    done
}
CATEGORY_EOF

    chmod +x "$arquivo"

    echo
    echo "  ✅ Categoria criada:"
    echo
    echo "     📂 $nome"
    echo "     📝 $desc"
    echo "     🔧 $func"
    echo
    echo "  📄 Arquivo:"
    echo "     $arquivo"
    echo
    echo "  ✏️ Abrindo editor..."

    sleep 1
    nano "$arquivo"
}

editar_aliases() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║              📝 EDITAR ALIASES             ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    echo "  1) 🧩 ~/.mano/aliases.sh"
    echo "  2) 🏠 ~/.bash_aliases"
    echo "  0) ⬅️ Voltar"
    echo

    local op
    read -rp "  >> Escolha: " op

    case "$op" in
        1)
            nano "$ALIAS_FILE"
            ;;
        2)
            nano "$MAIN_ALIAS_FILE"
            ;;
        0)
            return
            ;;
        *)
            echo
            echo "  ❌ Opção inválida."
            sleep 1
            ;;
    esac
}

editar_categoria() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║            📝 EDITAR CATEGORIA             ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo
    local escolha

    obter_categorias categorias

    if (( ${#categorias[@]} == 0 )); then
        echo "  ❌ Nenhuma categoria encontrada."
        pause
        return
    fi

    local i=1

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        printf "  %2d) %s\n" \
            "$i" \
            "${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"

        ((i++))
    done

    echo
    echo "  0) ⬅️ Voltar"
    echo

    read -rp "  >> Escolha: " escolha

    if [[ "$escolha" == "0" ]]; then
        return
    fi

    if [[ "$escolha" =~ ^[0-9]+$ ]] &&
       (( escolha >= 1 && escolha <= ${#categorias[@]} )); then

        nano "${categorias[$((escolha - 1))]}"
    else
        echo
        echo "  ❌ Opção inválida."
        sleep 1
    fi
}

remover_alias() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║             🗑️ REMOVER ALIAS              ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo
    local escolha

    obter_categorias categorias

    if (( ${#categorias[@]} == 0 )); then
        echo "  ❌ Nenhuma categoria encontrada."
        pause
        return
    fi

    echo "  Escolha a categoria:"
    echo

    local i=1

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        printf "  %2d) %s\n" \
            "$i" \
            "${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"

        ((i++))
    done

    echo
    echo "  0) ⬅️ Voltar"
    echo

    read -rp "  >> Categoria: " escolha

    if [[ "$escolha" == "0" ]]; then
        return
    fi

    if ! [[ "$escolha" =~ ^[0-9]+$ ]] ||
       (( escolha < 1 || escolha > ${#categorias[@]} )); then
        echo
        echo "  ❌ Categoria inválida."
        pause
        return
    fi

    arquivo="${categorias[$((escolha - 1))]}"

    carregar_categoria "$arquivo"

    echo
    echo "  📂 ${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"
    echo

    mapfile -t aliases < <(
        grep -E '^[[:space:]]*alias[[:space:]]+[a-zA-Z_][a-zA-Z0-9_-]*=' "$arquivo"
    )

    if (( ${#aliases[@]} == 0 )); then
        echo "  ❌ Nenhum alias nesta categoria."
        pause
        return
    fi

    i=1

    for linha in "${aliases[@]}"; do
        if [[ "$linha" =~ ^[[:space:]]*alias[[:space:]]+([a-zA-Z_][a-zA-Z0-9_-]*)= ]]; then
            printf "  %2d) %s\n" "$i" "${BASH_REMATCH[1]}"
        fi
        ((i++))
    done

    echo
    echo "  0) ⬅️ Voltar"
    echo

    read -rp "  >> Alias: " escolha

    if [[ "$escolha" == "0" ]]; then
        return
    fi

    if ! [[ "$escolha" =~ ^[0-9]+$ ]] ||
       (( escolha < 1 || escolha > ${#aliases[@]} )); then
        echo
        echo "  ❌ Alias inválido."
        pause
        return
    fi

    local linha="${aliases[$((escolha - 1))]}"
    local nome

    if [[ "$linha" =~ ^[[:space:]]*alias[[:space:]]+([a-zA-Z_][a-zA-Z0-9_-]*)= ]]; then
        nome="${BASH_REMATCH[1]}"
    else
        echo
        echo "  ❌ Não foi possível identificar o alias."
        pause
        return
    fi

    echo
    echo "  🗑️ Remover '$nome'?"
    read -rp "  Confirmar [s/N]: " confirmar

    if [[ "$confirmar" =~ ^[Ss]$ ]]; then
        sed -i -E "/^[[:space:]]*alias[[:space:]]+$nome=/d" "$arquivo"

        echo
        echo "  ✅ Alias removido."
    else
        echo
        echo "  ❌ Operação cancelada."
    fi

    pause
}

remover_categoria() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║           🗑️ REMOVER CATEGORIA             ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo
    local escolha

    obter_categorias categorias

    if (( ${#categorias[@]} == 0 )); then
        echo "  ❌ Nenhuma categoria encontrada."
        pause
        return
    fi

    local i=1

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        printf "  %2d) %s\n" \
            "$i" \
            "${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"

        ((i++))
    done

    echo
    echo "  0) ⬅️ Voltar"
    echo

    read -rp "  >> Escolha: " escolha

    if [[ "$escolha" == "0" ]]; then
        return
    fi

    if [[ "$escolha" =~ ^[0-9]+$ ]] &&
       (( escolha >= 1 && escolha <= ${#categorias[@]} )); then

        arquivo="${categorias[$((escolha - 1))]}"

        carregar_categoria "$arquivo"

        echo
        echo "  📂 Categoria:"
        echo "     ${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"
        echo

        read -rp "  Excluir definitivamente? [s/N]: " confirmar

        if [[ "$confirmar" =~ ^[Ss]$ ]]; then
            rm -f "$arquivo"

            echo
            echo "  ✅ Categoria removida."
        else
            echo
            echo "  ❌ Operação cancelada."
        fi

        pause
    else
        echo
        echo "  ❌ Opção inválida."
        sleep 1
    fi
}

listar_aliases() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║              📋 LISTAR ALIASES             ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo
    local encontrados=0

    obter_categorias categorias

    echo "  🧩 ALIASES POR CATEGORIA"
    echo "  ───────────────────────────────────────────"

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        local nome="${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"
        local -a aliases_categoria=()

        mapfile -t aliases_categoria < <(
            grep -E '^[[:space:]]*alias[[:space:]]+' "$arquivo" 2>/dev/null
        )

        if (( ${#aliases_categoria[@]} > 0 )); then
            echo
            echo "  📂 $nome"

            for linha in "${aliases_categoria[@]}"; do
                echo "     $linha"
                ((encontrados++))
            done
        fi
    done

    if (( encontrados == 0 )); then
        echo
        echo "  Nenhum alias encontrado nas categorias."
    fi

    echo
    echo "  🧩 ALIASES GLOBAIS DO MANO"
    echo "  ───────────────────────────────────────────"

    if [[ -f "$ALIAS_FILE" ]]; then
        grep -E '^[[:space:]]*alias[[:space:]]+' "$ALIAS_FILE" 2>/dev/null ||
            echo "  Nenhum alias."
    else
        echo "  Arquivo não encontrado."
    fi

    echo
    echo "  🏠 ALIASES PRINCIPAIS"
    echo "  ───────────────────────────────────────────"

    if [[ -f "$MAIN_ALIAS_FILE" ]]; then
        grep -E '^[[:space:]]*alias[[:space:]]+' "$MAIN_ALIAS_FILE" 2>/dev/null ||
            echo "  Nenhum alias."
    else
        echo "  Arquivo não encontrado."
    fi

    pause
}

listar_categorias() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║            📋 LISTAR CATEGORIAS            ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local -a categorias=()
    local arquivo

    obter_categorias categorias

    if (( ${#categorias[@]} == 0 )); then
        echo "  ❌ Nenhuma categoria encontrada."
        pause
        return
    fi

    local i=1

    for arquivo in "${categorias[@]}"; do
        carregar_categoria "$arquivo"

        echo "  $i) ${MANO_CUSTOM_NAME:-$(basename "$arquivo" .sh)}"
        echo "     ${MANO_CUSTOM_DESC:-Sem descrição}"
        echo "     Função: ${MANO_CUSTOM_FUNC:-não definida}"
        echo "     Arquivo: $arquivo"
        echo

        ((i++))
    done

    pause
}

validar() {
    clear

    echo
    echo "╔════════════════════════════════════════════╗"
    echo "║           🧪 VALIDAR CONFIGURAÇÃO          ║"
    echo "╚════════════════════════════════════════════╝"
    echo

    local erros=0
    local arquivo

    if [[ -f "$ALIAS_FILE" ]]; then
        if bash -n "$ALIAS_FILE"; then
            echo "  ✅ aliases.sh ................ OK"
        else
            echo "  ❌ aliases.sh ................ ERRO"
            ((erros++))
        fi
    fi

    if [[ -f "$MAIN_ALIAS_FILE" ]]; then
        if bash -n "$MAIN_ALIAS_FILE"; then
            echo "  ✅ .bash_aliases ............. OK"
        else
            echo "  ❌ .bash_aliases ............. ERRO"
            ((erros++))
        fi
    fi

    local -a categorias=()

    obter_categorias categorias

    for arquivo in "${categorias[@]}"; do
        if bash -n "$arquivo"; then
            echo "  ✅ $(basename "$arquivo") ........ OK"
        else
            echo "  ❌ $(basename "$arquivo") ........ ERRO"
            ((erros++))
        fi
    done

    echo

    if (( erros == 0 )); then
        echo "  ✅ Configuração válida."
    else
        echo "  ❌ $erros erro(s) encontrado(s)."
    fi

    pause
}

menu() {
    while true; do
        clear

        echo
        echo "╔════════════════════════════════════════════╗"
        echo "║           🧩 MANO ADD — NÍVEL 2           ║"
        echo "╚════════════════════════════════════════════╝"
        echo
        echo "  1) ➕ Novo alias"
        echo "  2) 📂 Nova categoria"
        echo "  3) 📝 Editar aliases"
        echo "  4) 📝 Editar categoria"
        echo "  5) 🗑️ Remover alias"
        echo "  6) 🗑️ Remover categoria"
        echo "  7) 📋 Listar aliases"
        echo "  8) 📋 Listar categorias"
        echo "  9) 🧪 Validar configuração"
        echo "  0) 🚪 Sair"
        echo

        read -rp "  >> Escolha: " op

        case "$op" in
            1) criar_alias ;;
            2) criar_categoria ;;
            3) editar_aliases ;;
            4) editar_categoria ;;
            5) remover_alias ;;
            6) remover_categoria ;;
            7) listar_aliases ;;
            8) listar_categorias ;;
            9) validar ;;
            0)
                clear
                echo
                echo "  👋 Saindo do MANO ADD."
                echo
                return
                ;;
            *)
                echo
                echo "  ❌ Opção inválida."
                sleep 1
                ;;
        esac
    done
}

menu
```

