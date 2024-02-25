# KirillK2_infra

# Сloud provider

При создании инстансов добавляем пользователя appuser и public key.

bastion_IP = 158.160.109.128
someinternalhost_IP = 10.128.0.9

workstation_IP: my.ip.add.ress

Добавляем security group для хоста bastion: разрешить любой трафик только с workstation_IP.
Добавляем security group для хоста someinternalhost: разрешить любой трафик только с bastion_private_IP.


# VPN-server

https://158.160.109.128

При поднятии VPN-server добавил маршрут "10.128.0.0/24" до <someinternalhost_IP>


# SSH-Forwarding

Подключение через одну команду

ssh -J appuser@<bastion_IP> appuser@<someinternalhost_IP>

Подключение через alias на рабочей станции:

1. Добавить в ~/.bashrc строку alias someinternalhost='ssh -J appuser@<bastion_IP> appuser@<someinternalhost_IP>'
2. Перезайти из текущего терминала, проверить новый алиас с помощью команды alias.
3. Выполнить команду someinternalhost.

Подключение через alias в SSH-config:

1. добавить в файл ~/.ssh/config строки
2. вызвать 'ssh someinternalhost'.

```
        Host bastion
        Hostname 158.160.109.128
        User appuser
        IdentityFile ~/.ssh/id_ed25519

        Host someinternalhost
        Hostname 10.128.0.9
        User appuser
        IdentityFile ~/.ssh/id_ed25519
        Proxyjump bastion
```
