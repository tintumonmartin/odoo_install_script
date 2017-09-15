# odoo_install_script
Script for Install, Update, Restart and Remove Odoo

Script for installing Odoo V9 on Ubuntu 14.04 LTS (could be used for other version too)

Author: Tintumon
-------------------------------------------------------------------------------
This script will install Odoo on your Ubuntu 14.04 server. It can install multiple Odoo instances
in one Ubuntu because of the different xmlrpc_ports
-------------------------------------------------------------------------------
Make a new file:

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
