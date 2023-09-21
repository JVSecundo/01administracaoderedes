#!/bin/bash

# Habilitar o roteamento IP no kernel
echo "1" | sudo tee /proc/sys/net/ipv4/ip_forward

# Configure a interface pública (public_network) para obter um IP via DHCP
# Certifique-se de substituir "enp0s3" pelo nome correto da interface pública
# Pode ser necessário ajustar o nome da interface conforme necessário
sudo dhclient enp0s3

# Configurar o NAT para fornecer acesso à Internet para VM1 e VM2
# Certifique-se de que a interface de saída (o parâmetro -o) corresponda à sua interface pública
# Novamente, ajuste-o conforme necessário
sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

# Configurar as rotas para as VMs 1 e 2 apontarem para esta VM3 como gateway
# Rota para VM1 (192.168.56.10)
sudo ip route add 192.168.56.10 via 192.168.56.12
# Rota para VM2 (192.168.56.11)
sudo ip route add 192.168.56.11 via 192.168.56.12

