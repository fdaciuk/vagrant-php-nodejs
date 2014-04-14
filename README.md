# Vagrant com [PuPHPet](https://puphpet.com/)

> Para mudar essa configuração, arraste o arquivo `/puphpet/config.yaml` na página `https://puphpet.com/`, edite conforme a sua necessidade e baixe o novo arquivo.

## Softwares instalados

### Sistema
* Ubuntu 12.04
* Autojump
* Git
* Vim

### PHP
* PHP 5.4
* MySQL
* PHPMyAdmin

### NodeJS
* NodeJS
* GulpJS
* GruntJS
* Hexo
* Express

## Configuração

Em `/puphpet/config.yaml`, edite o seguinte:

* `private_network:` IP para sua VM
* `synced_folder:` diretório `Projects` deve estar ao lado do arquivo `Vagrantfile`.
* Para criar virtual hosts, edite `vhosts`, copiando a configuração de `localhost`, dando um nome diferente para ele. Em `servernme` é o domínio do seu vhost e `docroot` é o caminho do diretório que será usado ao acessar o seu `servername`.

## Executar

Para subir a o ambiente, execute `vagrant up` no diretório onde se encontra o `Vagrantfile`.

Os arquivos no seu ambiente local ficam em `Projects`, e no Vagrant, em `/var/www`.

Para acessar a máquina, basta rodar `vagrant ssh`

> TODO:
> * Adicionar à configuração padrão para o Vagrant instalar automaticamente o `vagrant-notify`. Hoje é necessário rodar `vagrant plugin install vagrant-notify`