# Vagrant com [PuPHPet](https://puphpet.com/)

> Para mudar essa configuração, arraste o arquivo `/puphpet/config.yaml` na página `https://puphpet.com/`, edite conforme a sua necessidade e baixe o novo arquivo.

## Adições manuais

Se você fizer o passo acima e baixar a nova configuração do **PuPHPet**, vai precisar adicionar manualmente:
**No arquivo `Vagrantfile`, na linha `33`, substitua:**
```ruby
config.vm.synced_folder "#{folder['source']}", "#{folder['target']}", id: "#{folder['id']}", type: nfs
```

por:
```ruby
config.vm.synced_folder "#{folder['source']}", "#{folder['target']}", id: "#{folder['id']}", type: nfs, owner: "#{folder['owner']}", group: "#{folder['group']}"
```

**E no arquivo `puphpet/config.yaml`, procure pela entrada `synced_folder` e adicione abaixo de `nfs: 'false'` (respeitando a indentação):**
```yaml
owner: vagrant
group: www-data
```

Isso vai evitar problemas de permissão ao trabalhar com *Apache*.

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

### Virtual Hosts
Para criar virtual hosts, edite `vhosts`, copiando a configuração de `localhost`, dando um nome diferente para ele.
Em `servernme` é o domínio do seu vhost e `docroot` é o caminho do diretório que será usado ao acessar o seu `servername`.

Não esqueça de adicionar ao seu `/etc/hosts` o seu virtual host, linkando para o IP setado em `private_network`, para que você possa acessar localmente o que estiver na máquina virtual.

## Executar

Para subir a o ambiente, execute `vagrant up` no diretório onde se encontra o `Vagrantfile`.

Os arquivos no seu ambiente local ficam em `Projects`, e no Vagrant, em `/var/www`.

Para acessar a máquina, basta rodar `vagrant ssh`

> TODO:
> * Adicionar à configuração padrão do Vagrant:
>   * para o Vagrant instalar automaticamente o `vagrant-notify`, hoje é necessário rodar `vagrant plugin install vagrant-notify`
>   * atualizar  VirtualBox Guest Additions: `vagrant plugin install vagrant-vbguest`