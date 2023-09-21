Vagrant.configure("2") do |config|

  # Configuração da VM1 - Servidor Web (Privado)
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.network "private_network", ip: "192.168.56.10"
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end

    # Configurar pasta compartilhada 
    vm1.vm.synced_folder "shared_folder", "/var/www/html"

    vm1.vm.provision "shell", path: "vm1.sh"
  end

  # Configuração da VM2 - Servidor de Banco de Dados (Privado)
  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "ubuntu/focal64"
    vm2.vm.network "private_network", ip: "192.168.56.11"
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end

    vm2.vm.provision "shell", path: "vm2.sh"
  end

  # Configuração da VM3 - Gateway (Privado DHCP e Pública)
  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "ubuntu/focal64"
    vm3.vm.network "private_network", ip: "192.168.56.12"
    vm3.vm.network "public_network", type: "dhcp"
    vm3.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end

    vm3.vm.provision "shell", path: "vm3.sh"
  end

end
