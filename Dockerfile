FROM quay.io/danfercf/ubuntu-dev:0.1
MAINTAINER danfercf@gmail.com
RUN mkdir -p /usr/src/ghost
WORKDIR /usr/src/
RUN git clone https://github.com/danfercf1/ghost.git ghost
WORKDIR /usr/src/ghost/bncsutil/src/bncsutil/
RUN make && make install
WORKDIR /usr/src/ghost/StormLib/stormlib/
RUN make && make install
WORKDIR /usr/src/ghost/update_dota_elo/
RUN make
WORKDIR /usr/src/ghost/update_w3mmd_elo/
RUN make
WORKDIR /usr/src/ghost/ghost/
RUN make
RUN mkdir -p /usr/local/ghost && mkdir -p /usr/local/ghost/maps && mkdir -p /usr/local/ghost/mapcfgs && mkdir -p /usr/local/ghost/replays && mkdir -p /usr/local/ghost/savegames && mkdir -p /usr/local/ghost/w3
RUN cp ghost++ /usr/local/ghost
WORKDIR /usr/src/ghost/
RUN cp gameloaded.txt gameover.txt ipblacklist.txt default.cfg ghost.cfg /usr/local/ghost
RUN cp ip-to-countryv2.csv /usr/local/ghost && mv /usr/local/ghost/ip-to-countryv2.csv /usr/local/ghost/ip-to-country.csv
ADD mapcfgs/. /usr/local/ghost/mapcfgs
ADD w3/. /usr/local/ghost/w3
RUN cp /usr/src/ghost/language_spanish.cfg /usr/local/ghost/
RUN mv /usr/local/ghost/language_spanish.cfg /usr/local/ghost/language.cfg
COPY default.cfg /usr/local/ghost
COPY ghost.cfg /usr/local/ghost
COPY update_dota_elo.cfg /usr/local/ghost
COPY update_w3mmd_elo.cfg /usr/local/ghost
WORKDIR /usr/local/ghost
EXPOSE 6116
COPY ghost.sh /usr/local/ghost
RUN chmod +x /usr/local/ghost/ghost.sh
