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

