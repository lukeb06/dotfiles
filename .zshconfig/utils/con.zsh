function con
{
    username=${1:-""}
    password=${2:-""}
    server=${3:-""}
    share=${4:-""}
    mount_point=${5:-""}

    mount_smbfs //$username:$password@$server/$share $mount_point
}
