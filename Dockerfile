FROM colajam93/archlinux:latest
MAINTAINER colajam93 <https://github.com/colajam93>

# TeX Live
USER root
RUN pacman -Syu --noconfirm texlive-most texlive-langjapanese
# Fix dvipdfmx font error
RUN sed -i '/^%f  cid-x.map$/s/^%//g' /etc/texmf/dvipdfmx/dvipdfmx.cfg
USER test

