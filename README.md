# odoo_install_script

Script for Install, Update, Restart and Remove Odoo on Ubuntu LTS (could be used for other version too). Has Option of nginx configuration along with installing Odoo.

Upgraded By : Tintumon. M - [Visit my website](http://tintumon.co.in/)

Thanks to Author : Yenthe V.G

Initial code copied from [InstallScript](https://github.com/Yenthe666/InstallScript)

-------------------------------------------------------------------------------
This script will install Odoo on your Ubuntu server. It can install multiple Odoo instances
in one Ubuntu because of the different xmlrpc_ports
-------------------------------------------------------------------------------
**Make a new file:**

**Download _odoo_install.sh_ file using this command in terminal**

`sudo wget https://raw.githubusercontent.com/tintumonmartin/odoo_install_script/master/odoo_install.sh`

-Or-

**Create _odoo_install.sh_ file using this command in terminal**

```
touch odoo_install.sh

sudo nano odoo_install.sh
```

**Place this content in it and then make the file executable:**

`sudo chmod +x odoo_install.sh`

**Execute the script to install Odoo:**

`./odoo_install.sh -i`

**Use this script with options:**

-i Install Odoo.

-n Install Odoo with Nginx Configuration

-r Remove Odoo.

-u Update Odoo Code from Github.

-s Start/Restart Odoo.

-k Kill/Stop Odoo.

For example type `./odoo_install.sh -i` for install Odoo