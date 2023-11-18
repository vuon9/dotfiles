function myip
    set -l CURRENT_IP_INFO ""

    switch $argv[1]
        case -v6
            set CURRENT_IP_INFO (curl -s wtfismyip.com/json)
        case -v4 '*'
            set CURRENT_IP_INFO (curl -s https://ipv4.wtfismyip.com/json)
    end

    echo $CURRENT_IP_INFO | jq .
end