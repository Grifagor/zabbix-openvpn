# zabbix-openvpn 
Zabbix 3.0

Script for OpenVPN users monitoring.
It shows an OpenVPN user’s status, and its uplink and downlink traffic.

Setup:

1)	 Copy the file discover_vpn.sh to any directory on the server were  OpenVPN  is(for example	/etc/zabbix/scripts/discover_vpn.sh ). In this file specify the path to directory where OpenVPN certificates are (line №3).

2)	 Copy the file “openvpn.conf” to /etc/zabbix/zabbix_agentd.d/openvpn.conf. Probably, will be necessary to change the path to  discover_vpn.sh, and make /etc/openvpn/ipp.txt readable to zabbix user.

3)	 Import openvpn.xml to zabbix template.

# zabbix-openvpn 
Zabbix 3.0

Скрипт мониторинга пользователей OpenVPN.
Проверяется статус каждого пользователя OpenVPN, и его входящий\исходящий трафик.

С помощью LLD создаются "узлы сети" по имени файлов сертификатов.

Установка:
1)	скопировать файл discover_vpn.sh в любую директорию, на сервере с OpenVPN (например, /etc/zabbix/scripts/discover_vpn.sh)
	в этом файле указать путь до папки с сетификатами OpenVPN (строка №3).
	
2)	из файла zabbix_agentd.txt скопировать все строки в конец конфига zabbix агента (по умолчанию, /etc/zabbix/zabbix_agentd.conf)
	возможно потребуется изменить путь до discover_vpn.sh
	
3)	импортировать в zabbix шаблон openvpn.xml
