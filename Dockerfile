FROM base/arch
MAINTAINER John Albietz "inthecloud247@gmail.com"

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm --needed  base-devel
RUN pacman -S --noconfirm vim

RUN echo "exec >/dev/tty 2>/dev/tty </dev/tty" > /root/run.sh;
CMD /bin/bash --init-file /root/run.sh
