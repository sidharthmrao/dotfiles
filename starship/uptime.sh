uptime|awk -F' ' '{ print $2" "$3" "$4 }'|awk -F, '{print $1}'|tr '[:lower:]' '[:upper:]'
