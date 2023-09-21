#!/bin/bash

# Configuração da VM1 - Servidor Web

# Para a rota padrão apontando para a VM3 como gateway (192.168.56.12)
sudo ip route add default via 192.168.56.12

# Adicionei aqui os comandos para configurar o servidor web, se for necessário
# Por exemplo, você pode instalar um servidor web como o Apache e configurá-lo.
sudo apt-get update
sudo apt-get install -y apache2

# Copie arquivos da pasta compartilhada para a pasta do servidor web
# Certifique-se de que a pasta compartilhada esteja montada em /var/www/html, ou no caminnho da pasta necessaria
# Os arquivos da web devem estar na pasta compartilhada para serem acessíveis pela VM1
cp -r /vagrant/shared_folder/* /var/www/html/            

# Reinicie o serviço do servidor web, se necessário
sudo systemctl restart apache2