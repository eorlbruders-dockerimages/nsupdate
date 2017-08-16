FROM registry.eorlbruder.de/archlinux
MAINTAINER David Magnus Henriques <eorlbruder@magnus-henriques.de>

RUN pacman -Syyu --noconfirm --noprogressbar git curl gawk bind-tools && \
    pacman -Sc --noconfirm
RUN mkdir /app
RUN git clone https://github.com/chrisb86/nsupdate.git /app

CMD ["bash", "/app/nsupdate.sh"]
