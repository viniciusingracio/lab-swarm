# -*- mode: ruby -*-
# vi: set ft=ruby  :

machines = {
  "manager01" => {"memory" => "1024", "cpu" => "2", "ip" => "101", "image" => "ubuntu/jammy64"},
  "manager02" => {"memory" => "1024", "cpu" => "2", "ip" => "102", "image" => "ubuntu/jammy64"},
  "manager03" => {"memory" => "1024", "cpu" => "2", "ip" => "103", "image" => "ubuntu/jammy64"},
  "worker01"  => {"memory" => "1024", "cpu" => "2", "ip" => "201", "image" => "ubuntu/jammy64"},
  "worker02"  => {"memory" => "1024", "cpu" => "2", "ip" => "202", "image" => "ubuntu/jammy64"},
  "worker03"  => {"memory" => "1024", "cpu" => "2", "ip" => "203", "image" => "ubuntu/jammy64"}
}

Vagrant.configure("2") do |config|
  machines.each do |name, conf|
    config.ssh.extra_args = ["-t", "cd /vagrant; bash --login"]
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}.swarm.dev"
      machine.vm.network "private_network", ip: "10.10.10.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        vb.customize ["modifyvm", :id, "--groups", "/swarm-Lab"]
      end
      machine.vm.provision "shell", path: "scripts/install_docker.sh"
      if "#{name}" == "manager01"
        machine.vm.provision "shell", path: "scripts/init_cluster.sh"
        machine.vm.provision "shell", path: "scripts/deploy_stacks.sh"
      elsif "#{name}".include? "manager"
        machine.vm.provision "shell", inline: "/vagrant/.vagrant/./manager.sh"
      else
        machine.vm.provision "shell", inline: "/vagrant/.vagrant/./worker.sh"
      end
    end
  end
end
