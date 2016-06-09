## Common  Setup Instructions
#### Softwares:  Virtualbox, Vagrant, Git, Atom , ConEMU
====================


### Systems Preparation

To setup the lab, as participants, we would create Virtual Machines with VirtualBox and setup the learning environment. Vagrant is a tool which allows us to build, configure and setup portable virtual machines automatically, and it works with multitude of hypervisors, Virtualbox included. We would also need a sophisticated  editor with chef plugin, which would help us write code fast, with auto completion and syntax highlighting features etc. Thats where Atom comes in handy.  

On windows systems, utilities such as ssh do not come installed by default. To install a bash shell and create a remote terminal, Git and ConEmu are effective tools.


#### Enabling Virtualization from BIOS

In order to run 64bit VMs, systems need to be enabled with hardware virtualization extensions. On a Mac OSX, this is typically enabled by default. However, on many Windows Laptops/Desktops, VT-x needs to be manually enabled.

[Enable Hardware Virtualization Technology(VT -x) from BIOS](https://docs.fedoraproject.org/en-US/Fedora/13/html/Virtualization_Guide/sect-Virtualization-Troubleshooting-Enabling_Intel_VT_and_AMD_V_virtualization_hardware_extensions_in_BIOS.html)

These instructions different from system to system, bases on the BIOS provided with your laptop/desktop. For a lot of systems, Virtualization options are found in **Security** tab.

#### Installing Required Softwares - Common



| Software  | Version Tested     | Windows Installer | OS X Installer |
| :------------- | :------------- | :--------------- | :---------------| 
| Virtualbox     | v5.0.20 |[5.0.20](http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-Win.exe)      | [5.0.20](http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-OSX.dmg)  
| Vagrant | v1.8.1 | [1.8.1](https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.msi) | [1.8.1](https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.dmg) |
| Atom | v1.7.4 |[1.7.4](https://github.com/atom/atom/releases/download/v1.7.4/AtomSetup.exe) |  [1.7.4](https://atom.io/download/mac) | 
| Chef Development Kit (ChefDK) | v0.14.25 | [0.14.25](https://packages.chef.io/stable/windows/2008r2/chefdk-0.14.25-1-x86.msi) | [0.14.25](https://packages.chef.io/stable/mac_os_x/10.11/chefdk-0.14.25-1.dmg) |
| Git for Windows | v2.8.3| [2.8.3](https://github.com/git-for-windows/git/releases/download/v2.8.3.windows.1/Git-2.8.3-64-bit.exe) |
| ConEmu | v150813g | [150813g](http://www.fosshub.com/ConEmu.html/ConEmu_150813g_English.paf.exe) |

* Install [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads). At the
time of writing this document, the latest tested version of VirtualBox is 5.0.10
* Install [Vagrant](http://www.vagrantup.com/downloads). At the time of
writing, the latest version of Vagrant is 1.8.1
* Install [Atom](https://atom.io) editor from

#### Installing Required Softwares - Windows Specific

In addition to the common softwares above, windows systems also need the following softwares.

* Download and install  [GIT for windows](https://msysgit.googlecode.com/files/Git-1.9.0-preview20140217.exe)
* ConEmu is a terminal emulator for windows, supports multiple tabs, and can work with git bash to open bash terminals. Download and install it from [here]( http://www.fosshub.com/ConEmu.html/ConEmuSetup.150813g.exe)
