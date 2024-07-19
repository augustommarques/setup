# Manjaro

```
sudo pacman -S ntp
sudo ntpdate pool.ntp.org
sudo systemctl enable ntpd
sudo systemctl start ntpd
```

# WSL

> .\Alpine.exe config --default-user augusto

# Docker

```
rc-update add docker boot
service docker start
```

# SH

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/alpine.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/ohmyzsh.sh)"
```
