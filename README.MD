# Despliegue del Open Data Cube 1.8.2

El [Open Data Cube](https://www.opendatacube.org/) proporciona un entorno que facilita el análisis de datos de observación de la tierra mediante el lenguaje de programación Python. Los pasos que se listan a continaución nos permitirán desplegar el ambiente dle Open Data Cube para inicar el proceso de análisis de imágenes satelitales.

## Requerimientos

1. Computador con mímino 8 GB de Memoria RAM.
2. Sistema Operativo Windows 10

## Pasos de configuración

1. Descargue e instale la herramienta [Virtualbox 6.1.18](https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Win.exe).
2. Descargue e instale la herramienta [Vagrant 2.2.15](https://releases.hashicorp.com/vagrant/2.2.15/vagrant_2.2.15_x86_64.msi)
3. Reinicie su computadora.

## Pasos de instalación del Open Data Cube 

Una vez instaladas las herrameintas Virtualbox y Vagrant continue con los siguientes pasos.

1. Descarge el siguiente archivo [datacube-tutorial-main.zip](https://github.com/DonAurelio/datacube-tutorial/archive/refs/heads/main.zip).
2. Descomprima el archivo `datacube-tutorial-main.zip` en el Escritorio. Al descomprimir el archivo se creará la carpeta `datacube-tutorial-main`. Ingrese a este dierctorio.
3. Estando ubicando en el dierctorio `datacube-tutorial-main`, precione la tecla **shift + click derecho**, en el menú contextual seleccione "Abrir la ventana de PowerShell aquí".
4. En la consola de PowerShell que se despliega, digitar los siguientes comandos.

```bash 
vagrant up
```
Una vez ejecute el comando anterior podrá ver que se despliegan una serie de datos en la consola. Valide que la información que se muestra a contunuación sea simular a la que se muestra en su consola. Si nota que hay algún error, por favor notifique al coordinador de la actividad para recibir asistencia.

```bash
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'hashicorp/bionic64' version '1.0.282' is up to date...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 8080 (guest) => 8080 (host) (adapter 1)
    default: 8081 (guest) => 8081 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default:
    default: Guest Additions Version: 6.0.10
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => C:/Users/Aurelio Vivas/Desktop/research/datacube
==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> default: flag to force provisioning. Provisioners marked to run always will still run.
```

## TODO 

-[] Hacer script de provisioning que instale docker, docker-compose y instale los contenedores del open data cube.
