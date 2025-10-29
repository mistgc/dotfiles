function proxy_on
    set -gx http_proxy http://127.0.0.1:7897
    set -gx https_proxy http://127.0.0.1:7897
end

function proxy_off
    set -e http_proxy
    set -e https_proxy
end

function connect_dormitory_network
    echo "[Connect Dormitory Network]"
    set ip $(ip addr | grep wlan0 | grep -v BROADCAST | awk '{print $2}' | cut -d '/' -f1)
    set url "http://218.200.239.185:8888/portalserver/scunioncmccgxsd29.jsp?wlanuserip=$ip&wlanacname="
    echo "OPENING $url"
    xdg-open $url
end
