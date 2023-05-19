
useradd -g www-data ${FTP_USER}

passwd ${FTP_USER} << EOF
${FTP_PASSWORD}
${FTP_PASSWORD}
EOF

# for secure_chroot_dir
mkdir -p /usr/share/empty

# setup config file
cat > /etc/vsftpd.conf << EOF

anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
local_root=/home/${FTP_USER}
pasv_min_port=${PASV_MIN_PORT}
pasv_max_port=${PASV_MAX_PORT}
local_umask=002
listen=YES
allow_writeable_chroot=YES
secure_chroot_dir=/usr/share/empty
pasv_enable=YES
pasv_address=${PASV_ADDRESS}

EOF

