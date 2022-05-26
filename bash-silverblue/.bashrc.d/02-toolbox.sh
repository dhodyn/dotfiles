# toolbox

# on the host
function toolbox() {
    TOOLBOX_CMD_ARGS="$@"
    while [[ $# -gt 0 ]]; do
        key="$1"
        case $key in
            enter)
                TOOLBOX_CONTAINER_NAME="${2-fedora-toolbox-36}"
                shift;;
            -c|--container)
                TOOLBOX_CONTAINER_NAME="$2"
                shift
                shift;;
            *)
                shift;;
    esac
    done
    echo $TOOLBOX_CONTAINER_NAME > /tmp/toolbox_container_name
    /usr/bin/toolbox $TOOLBOX_CMD_ARGS
}

# inside the container
if [[ $TOOLBOX_PATH ]]; then
    TOOLBOX_CONTAINER_NAME="$(cat /run/host/tmp/toolbox_container_name)"
    mkdir -p $HOME/.var/toolbox/$TOOLBOX_CONTAINER_NAME
    export HOME=$HOME/.var/toolbox/$TOOLBOX_CONTAINER_NAME
    cd $HOME
    if [[ -f ~/.bashrc ]]; then
        . ~/.bashrc
    fi
fi

