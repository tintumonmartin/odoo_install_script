# odoo_install_script
Script for Install, Update, Restart and Remove Odoo

Script for installing Odoo on Ubuntu LTS (could be used for other version too)

Author: Tintumon. M

Inspired by : Yenthe V.G

Initial code copied from https://github.com/Yenthe666/InstallScript

Thanks Yenthe V.G
-------------------------------------------------------------------------------
This script will install Odoo on your Ubuntu server. It can install multiple Odoo instances
in one Ubuntu because of the different xmlrpc_ports
-------------------------------------------------------------------------------
Make a new file:

Download file using sudo wget https://raw.githubusercontent.com/tintumonmartin/odoo_install_script/master/odoo_install.sh

touch odoo_install.sh

sudo nano odoo_install.sh

Place this content in it and then make the file executable:

sudo chmod +x odoo_install.sh

Execute the script to install Odoo:

./odoo_install.sh

Use this script with options:

-i Install.

-r Remove.

-u Update.

-s Start/Restart Odoo.

-k Kill/Stop Odoo.

For example type "./odoo_install.sh -i" for install odoo


Follow the same to install Odoo using this script along with nginx configurations using the file "odoo_install_with_nginx.sh".
