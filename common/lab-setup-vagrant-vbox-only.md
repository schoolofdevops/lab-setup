## Common  Setup Instructions
#### Softwares

  * Virtualbox
  * Vagrant

====================


### Systems Preparation

To setup the lab, as participants, we would create Virtual Machines with VirtualBox and setup the learning environment. Vagrant is a tool which allows us to build, configure and setup portable virtual machines automatically, and it works with multitude of hypervisors, Virtualbox included. We would also need a sophisticated  editor with chef plugin, which would help us write code fast, with auto completion and syntax highlighting features etc. Thats where Atom comes in handy.  

On windows systems, utilities such as ssh do not come installed by default. To install a bash shell and create a remote terminal, Git and ConEmu are effective tools.


#### Enabling Virtualization from BIOS

In order to run 64bit VMs, systems need to be enabled with hardware virtualization extensions. On a Mac OSX, this is typically enabled by default. However, on many Windows Laptops/Desktops, VT-x needs to be manually enabled.

[Enable Hardware Virtualization Technology(VT -x) from BIOS](https://docs.fedoraproject.org/en-US/Fedora/13/html/Virtualization_Guide/sect-Virtualization-Troubleshooting-Enabling_Intel_VT_and_AMD_V_virtualization_hardware_extensions_in_BIOS.html)

These instructions different from system to system, bases on the BIOS provided with your laptop/desktop. For a lot of systems, Virtualization options are found in **Security** tab.

#### Installing Required Softwares - Common

- Install software with specific version  by clicking on link provided in below table

- Additional software need  for windows system are git & ConEmu


| Software     | Windows Installer | OS X Installer |
| :------------- | :--------------- | :---------------|
| Virtualbox     |[5.2.10](https://download.virtualbox.org/virtualbox/5.2.10/VirtualBox-5.2.10-122406-Win.exe)      | [5.2.10](https://download.virtualbox.org/virtualbox/5.2.10/VirtualBox-5.2.10-122088-OSX.dmg)  
| Vagrant | [2.1.1](https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.msi) | [2.1.1](https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.dmg) |

All softwares except Virtualbox on Windows need no additional instructions while installing. Download, launch installer and follow through the default steps. Installing Virtualbox on Windows  however needs special instructions due to NDIS/Network driver caveat.  

Following are the instructions on installing VirtualBox on Windows and on Mac

[Installing VirtualBox on Windows 10](https://www.youtube.com/watch?v=63_kPIQUPp8)

[Installing VirtualBox on Mac OSX](https://www.youtube.com/watch?v=lEvM-No4eQo)


##### VirtualBox 5.x installation on Windows Caveats

The newer version of Virtualbox installs NDIS6 driver by default, which creates conflicts with vagrant while bringing up the virtual machines and network interfaces. [Description of this problem and solution is here](https://forums.virtualbox.org/viewtopic.php?f=6&t=69597). To avoid this, participants need to install Virtualbox with NDIS5 with the following instructions.   

**Note:** this issue is specific to Windows only. Same version of Virtualbox on  Mac/OSX  works flawlessly.  

Open a command line terminal /git bash, change directory to where you have downloaded the installer and run it as

```
VirtualBox-x.x.x-yyyyy-Win.exe -msiparams NETWORKTYPE=NDIS5

```

Above command will launch Virtualbox installer as usual, however, it will use NDIS5, which works without flaws while  configuring  network interfaces.
