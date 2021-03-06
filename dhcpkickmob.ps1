# Ver. 0.3
# Author: dvoalex@gmail.com
# Date: 24/04/2016
# Description: gets list of "iphone" and "android" devices from DHCP scope 192.168.2.0 and kick these devices off from DHCP scope lease.

netsh dhcp server scope 192.168.2.0 show clients 1 | findstr "iphone iPhone android" | %{$_.split(' ')[0]} | %{netsh dhcp server scope 192.168.2.0 delete lease $_}
netsh dhcp server scope 192.168.2.0 delete lease allbadaddresses
