# manual
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -it -v /share/CACHEDEV2_DATA/dockers/containers/ddns/cloudflare-ddns:/root/ddns/ --rm python:3 /root/ddns/sync

#cron 
*/15 * * * * /share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -v /share/CACHEDEV2_DATA/dockers/containers/ddns/cloudflare-ddns:/root/ddns/ --rm python:3 /root/ddns/sync >> /share/CACHEDEV2_DATA/dockers/containers/ddns/cloudflare-ddns/log 2>&1 

