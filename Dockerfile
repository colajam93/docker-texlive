FROM colajam93/archlinux:latest
MAINTAINER colajam93 <https://github.com/colajam93>

# TeX Live
USER root
RUN pacman -Syu --noconfirm texlive-most texlive-langjapanese
USER test

