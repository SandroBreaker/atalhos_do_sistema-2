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

