_hcgu()
{
    local cur prev words cword
    _init_completion || return

    local COMMANDS=(
        "main_menu"
        "restore_dialog"
        "create_club"
        "backup_cp_n_clean"
        "restore_club"
        "get_short_info"
        "start_game"
        "clean_profile")
 
    local command i
    for (( i=0; i < ${#words[@]}-1; i++ )); do
        if [[ ${COMMANDS[@]} =~ ${words[i]} ]]; then
            command=${words[i]}
            break
        fi
    done


   COMPREPLY=( $( compgen -W '${COMMANDS[@]}' -- "$cur" ) )
}
complete -F _hcgu hcgu
