FROM debian:buster

ARG FTP_USER FTP_PASSWORD PASV_MIN_PORT PASV_MAX_PORT PASV_ADDRESS

WORKDIR /home/${FTP_USER}

RUN apt update && apt install -y vsftpd

COPY tools/setup.sh /tools/

RUN chmod +x /tools/setup.sh

RUN /tools/setup.sh

ENTRYPOINT [ "vsftpd" ]
