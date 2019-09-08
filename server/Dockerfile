FROM i386/ubuntu:18.04

EXPOSE 28960/udp

WORKDIR /srv/cod4

RUN mkdir -p /srv/main \
    mkdir -p /srv/zone \
    mkdir -p /srv/mods \
    mkdir -p /srv/cod4/usermaps \
    mkdir -p /srv/cod4/main_shared

VOLUME /srv/cod4/main \
       /srv/cod4/zone \
       /srv/cod4/mods \
       /srv/cod4/usermaps \
       /srv/cod4/main_shared

RUN useradd --home-dir /srv/cod4 cod4

COPY --chown=cod4 cod4-linux-server1.7/* ./
COPY --chown=cod4 entrypoint.sh ./entrypoint.sh
COPY --chown=cod4 server.cfg ./main/server.cfg

RUN chown -R cod4 . && \
    chmod 700 . && \
    chmod -R 400 ./* && \
    chmod 500 ./entrypoint.sh ./cod4_lnxded && \
    chmod -R 700 ./main ./mods

ENTRYPOINT [ "/srv/cod4/entrypoint.sh" ]
CMD +set net_port 28960 +set sv_punkbuster 0 +set sv_pure 0 +exec server.cfg +map_rotate
