# This function uses nohup and xdg-open to open files in the background so that they are not dependent on the current terminal
function open_file {
    nohup xdg-open "$1" >/dev/null 2>&1 &
}