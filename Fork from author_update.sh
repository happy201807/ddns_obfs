#!/bin/bash
echo "Updating naiveproxy and caddy"
curl https://getcaddy.com | bash -s personal http.forwardproxy
rm -r naive*arm64 naive*tar.xz
echo "Installing naiveproxy"                                                                                                         
curl -s "https://api.github.com/repos/klzgrad/naiveproxy/releases/latest" | \
	grep linux-arm64 | grep browser_download_url | \
	cut -d : -f 2,3 | tr -d \" | wget -qi -  
echo "Update completed"
