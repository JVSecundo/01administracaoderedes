#!/bin/bash

# Configuração da VM2 - Servidor de Banco de Dados

# Para a rota padrão apontando para a VM3 como gateway (192.168.56.12)
sudo ip route add default via 192.168.56.12

# Adicionei aqui os comandos para configurar seu servidor de banco de dados, se necessário
# Por exemplo, você pode instalar um servidor de banco de dados como o MySQL e configurá-lo.
sudo apt-get update
sudo apt-get install -y mysql-server

# Reinicie o serviço do banco de dados, se necessário
sudo systemctl restart mysql