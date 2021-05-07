# Despliegue del Open Data Cube 1.8.2

El [Open Data Cube](https://www.opendatacube.org/) proporciona un entorno que facilita el análisis de datos de observación de la tierra mediante el lenguaje de programación Python. Los pasos que se listan a continaución nos permitirán desplegar el ambiente dle Open Data Cube para inicar el proceso de análisis de imágenes satelitales.

## Requerimientos

1. Computador con mímino 8 GB de Memoria RAM.
2. Sistema Operativo Windows 10

## Pasos de configuración

Para automatizar el despliegue del open data cube de tal forma que el usuario no tenga la necesidad de entrar en detalles técnico, vamos a usar Virtualbox y Vagrant. 

1. Descargue e instale la herramienta [Virtualbox 6.1.18](https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Win.exe).
2. Descargue e instale la herramienta [Vagrant 2.2.15](https://releases.hashicorp.com/vagrant/2.2.15/vagrant_2.2.15_x86_64.msi)
3. Reinicie su computadora.

## Pasos de instalación del Open Data Cube 

Una vez instaladas las herrameintas Virtualbox y Vagrant continue con los siguientes pasos.

1. Descarge el siguiente archivo [datacube-tutorial-main.zip](https://github.com/DonAurelio/datacube-tutorial/archive/refs/heads/main.zip).
2. Descomprima el archivo `datacube-tutorial-main.zip` en el Escritorio. Al descomprimir el archivo se creará la carpeta `datacube-tutorial-main`. Ingrese a este dierctorio.
3. Estando ubicando en el dierctorio `datacube-tutorial-main`, precione la tecla **shift + click derecho**, en el menú contextual seleccione "Abrir la ventana de PowerShell aquí".
4. En la consola de PowerShell que se desplegada en el paso anterior, digitar el siguiente comando. **NOTA: Este comando debe ser ejecutado sólo una vez.**

```bash 
vagrant up --provision
```

El comando anterior realizará el despliegue del Open Data Cube. La primera vez que se ejecuta el comando toma al rededor de 20 a 30 minutos, dependiendo de la velocidad de descarga de la red de su computador. En el proceso de ejecución del comando podrá observar información del estado de despliege de la herramientas Open Data Cube.

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
...

==> default: Running provisioner: shell...
    default: Running: inline script
    default: Creating network "vagrant_default" with the default driver
    default: Creating volume "vagrant_postgis-db-volume" with default driver
    default: Pulling postgis (postgis/postgis:10-2.5)...
    default: 10-2.5: Pulling from postgis/postgis
    default: Digest: sha256:244d959ff69e73d21d76cca8e343d9baedcefa98d7f8359465a79a0769d0464d
    default: Status: Downloaded newer image for postgis/postgis:10-2.5
    default: Pulling jupyter (donaurelio/datacube:1.8.2-ubuntu-20.04)...
    default: 1.8.2-ubuntu-20.04: Pulling from donaurelio/datacube
    default: Digest: sha256:3dde58af4262c7913e7d234bfe03056220d6d360b8f5fadee749822fe2544cfc
    default: Status: Downloaded newer image for donaurelio/datacube:1.8.2-ubuntu-20.04
    default: Pulling explorer (donaurelio/datacube:1.8.2-ubuntu-20.04-explorer-2.4.3)...
    default: 1.8.2-ubuntu-20.04-explorer-2.4.3: Pulling from donaurelio/datacube
    default: Digest: sha256:a61e40e01b17e2dc176470eecddac8c8ab4cda863b0304d930896ea907993353
    default: Status: Downloaded newer image for donaurelio/datacube:1.8.2-ubuntu-20.04-explorer-2.4.3
    default: Creating vagrant_postgis_1 ...
    default: Creating vagrant_jupyter_1 ...
    default: Creating vagrant_explorer_1 ...
    default: Creating vagrant_jupyter_1  ... done
    default: Creating vagrant_postgis_1  ... done
    default: Creating vagrant_explorer_1 ... done
```

Al finalizar el proceso de despliegue, usted deberá verificar en su consola de PowerShell que la última parte de la información desplegada sea similar a la que se muestra a continuación. Si no fue así entonces solicite asistencia.

```bash 
    default: Creating vagrant_postgis_1 ...
    default: Creating vagrant_jupyter_1 ...
    default: Creating vagrant_explorer_1 ...
    default: Creating vagrant_jupyter_1  ... done
    default: Creating vagrant_postgis_1  ... done
    default: Creating vagrant_explorer_1 ... done
```

Si el despliegue ha sido exitoso, abra el navegador de su preferencias (Google Chrome o Mozila Firefox) e ingrese al siguiente enlace [http://localhost:8080/lab](http://localhost:8080/lab). Podrá visualizar en el navegador la interfa gráfica de JupyterLab. Jupyterlab es el ambiente que nos permitirá desarrollar algoritmos que consulten el Open Data Cube y nos permitan ejecutar análisis sobre las imágenes obtenidas a partir de una consulta. 


## Posibles errores

Si al final del despliegue obtiene un error simular al que se muestra a continuación.

```bash 
negative string size (or size too big) (argumenterror) 
````

Ingrese a `C:\Users\<su nombre de usuario>\`, busque el directorio `.vagrant.d` y renombrelo a `.vagrant.d.old`

https://github.com/hashicorp/vagrant/issues/10657
https://www.gitmemory.com/issue/hashicorp/vagrant/9146/541988622
