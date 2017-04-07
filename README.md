# kiwi
Dockerfile for KiwiIRC

# build it
docker build -t kiwi .

#run it
docker run -e WEBIRC_NETWORK=irc.some.net -e WEBIRC_PASSWORD=sekrit -p 127.0.0.1:7777:7777 kiwi
