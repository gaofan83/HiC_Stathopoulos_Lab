##### Install HiC Browser on 131.215.34.108 server
##### Create a data directory /root/hicbrowser/Stathopoulos_Lab/
#####
##### Note: three configuration files browserConfig.ini, gene_tracks.ini, region_tracks.ini are needed
#####
##### Run the browser using docker
`sudo docker run --rm -i -t -p 7777:80 -v /root/hicbrowser/Stathopoulos_Lab/:/data/ bgruening/hicbrowser &`

