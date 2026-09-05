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
