# Lab-swarm
Compartilho aqui um pouco do que tenho aprendido sobre Swarm, Docker, Vagrant. Criei um lab de um cluster Swarm com o provisionamento com o Vagrant com provider VirtualBox.

---

## O que é Swarm:

O Swarm é um orquestrador de containers baseado no Docker.

[Docker Swarm](https://docs.docker.com/engine/swarm/)

## Vagrant

O Vagrant é como se fosse uma ambiente de virtualização, baseado nos providers que ele usa para provisionar o ambiente. 

[Vagrant](https://www.vagrantup.com/)


---

## Explicando um pouco o ambiente:

**_Vagrantfile_** >> Esse é o arquivo que especifica o ambiente. Você define nele o número de managers, workers, número de CPUs e memória e também a network, que é muito importante para o Swarm.

**_scripts_** >> Diretório onde armazena os scripts usados no ambiente. Eles facilitam instalação e configuração das aplicações e do cluster em si.

**_stack_** >> Diretório com o manifesto da aplicação de teste

---

## Subindo o ambiente

Para testar o ambiente, faça um fork ou o clone dele. Na raiz do projeto, ustilize o seguinte comando:

`vagrant up`




