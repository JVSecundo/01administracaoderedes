# Documentação - Projeto 01 - Projeto de Administração de Redes usando Vagrant com 3 VMs.
# 1. Introdução:
- O projeto descreve como configurar um ambiente de laboratório de administração de redes com três máquinas virtuais (VMs) usando o Vagrant. O objetivo deste ambiente é fornecer uma plataforma para fins educacionais e de treinamento em administração de redes. As três VMs devem ser configuradas da seguinte forma:
# 2. Instalação e Execução das VMs com Vagrant no Linux.

# Instale os Pré-Requisitos.

Certifique-se de que você já tem o VirtualBox (ou outro provedor de virtualização) e o Vagrant instalados em seu sistema.

- VirtualBox: Baixe e instale o VirtualBox a partir do site oficial: https://www.virtualbox.org/
- Vagrant: Baixe e instale o Vagrant a partir do site oficial: https://www.vagrantup.com/

# Passo 1: Abra o Terminal

Abra o terminal no seu sistema Linux. Isso pode ser feito pressionando `Ctrl + Alt + T` simultaneamente.

# Passo 2: Atualize os Pacotes

Antes de instalar qualquer novo software, é uma boa prática atualizar os pacotes do sistema. Execute os seguintes comandos no terminal:

sudo apt update
sudo apt upgrade

# Passo 3: Instale o VirtualBox

O Vagrant depende de um provedor de virtualização, como o VirtualBox. Para instalá-lo, use o seguinte comando:

sudo apt install virtualbox

# Passo 4: Instale o Vagrant

Agora, você pode instalar o Vagrant usando o seguinte comando:

sudo apt install vagrant -y

# Passo 5: Verifique a Instalação

Após a instalação, você pode verificar se o Vagrant foi instalado corretamente usando o seguinte comando:

vagrant --version 

Isso exibirá a versão instalada do Vagrant no seu sistema.

# 3. Nome das VMs e descrição:
# VM1:
- VM1 - Servidor Web (Privado).
- Sistema Operacional: Ubuntu Server 20.04 LTS.
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.10).
- Função: Servidor Web (instalar o Apache).
- Pasta Compartilhada: /var/www/html na máquina host deve ser compartilhada com /var/www/html na VM1.
# VM2:
- Sistema Operacional: Ubuntu Server 20.04 LTS.
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.11).
- Função: Servidor de Banco de Dados (instalar o MySQL ou PostgreSQL).
# VM3:
- Sistema Operacional: Ubuntu Server 20.04 LTS.
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.12).
- Interface de Rede 2 (eth1): IP Público DHCP.
- Função: Gateway de Rede.
- Deve fornecer acesso à Internet para as VMs1 e VM2.
# 4. Requisitos Adicionais
- Todas as VMs devem ser provisionadas com o Vagrant.
- Cada VM possui um arquivo de script de provisionamento que instala e configure os serviços necessários.
A seguir, apresentamos um passo a passo para configurar esse ambiente:
# Passo 1: Clone o Repositório, no editor de texto de sua escolha ou depreferência no Visual Studio Code (VS Code)
- Clone ou faça o download deste repositório para o seu sistema:
- git clone: https://github.com/JVSecundo/01administracaoderedes.git
- cd  https://github.com/JVSecundo/01administracaoderedes.git
# Passo 2: Vagrantfile
- Abra o arquivo Vagrantfile no editor de texto de sua escolha. Este arquivo define a configuração das VMs e suas redes.
# Passo 3: Scripts de Provisionamento
- vm1.sh: Configuração da VM1 (Servidor Web)
- vm2.sh: Configuração da VM2 (Servidor de Banco de Dados)
- vm3.sh: Configuração da VM3 (Gateway)
# 5. Comandos executados para geração da máquina: Terminal
# Passo 4: Entrar no diretório a onde contém o diretório do projeto.
- Para ir diretamente para o diretório home do usuário:

cd "pasta onde contém os arquivos Vagrantfile"

- Isso o levará para o diretório home do usuário atual.

- Lembre-se de substituir "/caminho/para/o/diretorio" pelos caminhos reais dos diretórios que deseja acessar. O comando cd é fundamental para navegar pelo sistema de arquivos no terminal Linux.

# Passo 5: Inicie as VMs
No terminal, navegue até o diretório do projeto e execute o seguinte comando para iniciar as VMs:

vagrant up

# Passo 6: Provisione as VMs
- Após iniciar as VMs, execute o seguinte comando para aplicar as configurações de provisionamento:

vagrant provision

# Passo 7: Teste a Rede
As VMs devem estar configuradas para se comunicarem internamente e terem acesso à Internet por meio de VM3. Você pode testar a conectividade entre as VMs e verificar se a VM1 e a VM2 podem acessar a Internet.

vagrant ssh vm1

vagrant ssh vm2

vagrant ssh vm3

ip route (ver rotas da conexão)

ping 192.168.56.12 (ver se as máquinas estão ligadas entre si)

ping 8.8.8.8 (ver se as máquinas estão passando internet uma para outra) 

# Passo 7: Notas Finais
- Parabéns! Você acessou com sucesso o ambiente de laboratório de administração de redes com Vagrant. As VMs estão funcionando conforme o esperado, com a VM3 atuando como um gateway para fornecer acesso à Internet para as outras VMs.




