#!/usr/bin/env bash
#
# nom-du-script.sh — Description courte de ce que fait le script.
#
# Usage : ./nom-du-script.sh [options]
# Testé sur : RHEL 9
#
set -Eeuo pipefail

SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_NAME
VERBOSE=0

usage() {
    cat <<EOF
Usage : ${SCRIPT_NAME} [options]

Description courte de ce que fait le script.

Options :
  -v, --verbose   Affiche plus de détails
  -h, --help      Affiche cette aide
EOF
}

log()  { printf '[%s] %s\n' "$(date '+%F %T')" "$*"; }
info() { [[ ${VERBOSE} -eq 1 ]] && log "INFO  $*" || true; }
die()  { log "ERREUR $*" >&2; exit 1; }

trap 'die "échec ligne ${LINENO} : ${BASH_COMMAND}"' ERR

require_root() {
    [[ ${EUID} -eq 0 ]] || die "ce script doit être lancé en root (sudo)."
}

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -v|--verbose) VERBOSE=1 ;;
            -h|--help)    usage; exit 0 ;;
            *)            usage >&2; die "option inconnue : $1" ;;
        esac
        shift
    done
}

main() {
    parse_args "$@"
    # require_root
    info "démarrage"
    log "Bonjour depuis ${SCRIPT_NAME}"
}

main "$@"
