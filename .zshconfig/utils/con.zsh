function con
{
    username=${1:-""}
    password=${2:-""}
    server=${3:-""}
    share=${4:-""}
    mount_point=${5:-""}

    mount_smbfs //$username:$password@$server/$share $mount_point
}

# function cont
# {
#     mount_smbfs //PC03-ENGINEERIN\\lukeb@TILEWARE.local/ThermaltakeVP3000-Desktop ~/PC03
# }

# function cons
# {
#     con $(get_settle_user) $(get_settle_password) "mainserver" "CPSQL.1" ~/CPSQL.1
#     con $(get_settle_user) $(get_settle_password) "mainserver" "Share" ~/Share
# }
