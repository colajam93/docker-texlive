FROM colajam93/archlinux:latest
MAINTAINER colajam93 <https://github.com/colajam93>

# TeX Live
USER root
RUN pacman -Syu --noconfirm texlive-most texlive-langjapanese
# For font embedding
RUN echo 'f  cid-x.map' >> /etc/texmf/dvipdfmx/dvipdfmx.cfg && \
    echo 'f  zi4.map' >> /etc/texmf/dvipdfmx/dvipdfmx.cfg && \
# For fix figure error
    sed -i '/^shell_escape_commands/a\extractbb,\\' /etc/texmf/web2c/texmf.cnf
USER test

