Lab Setup Instructions
====================

__________________________________________________________________________
Target Audience
	This introductory course is targeted for the budding devops professionals, experienced
	sysadmins and enthusiasts alike who are already using puppet, or intend to use it to
	automate configuration management, system integration and manage scalable
	infrastructures with ease.

Prerequisites:
* Basic understanding of linux/unix system concepts
* Familiarity with Command Line Interface (CLI)
* Familiarity with a Text Editor

System Requirements

Hardware Software
* Laptop/Desktop with internet connection
* 8GB RAM
* Quad Core CPU
* 50 GB Disk Space available
* Base OperatingSystem: Windows/Linux/OSX
* VirtualBox
* Vagrant


Softwares Required:
* Virtualbox
* Vagrant
* Sublime
* Chef Development Kit (ChefDK)
* Vagrant http proxy
* Git for Windows ( on windows systems)


Systems Preparation:

We are going to use Vagrant to build our learning environment(s), install puppet, run
our code on. Vagrant is a tool which allows us to build, configurable, lightweight and portable virtual machines dynamically. To prepare for the Puppet Fundamentals training, we will install Vagrant. It is essential that Virtualbox be installed before setting up
vagrant as that is the virtualization platform vagrant is built up on.

Installation Instructions:
* 1. Enable Virtualization Technology(VT -x) from BIOS
(https://access.redhat.com/documentation/en-
US/Red_Hat_Enterprise_Linux/6/html/Virtualization_Administration_Guide/sec
t-Virtualization-Troubleshooting-
Enabling_Intel_VT_and_AMD_V_virtualization_hardware_extensions_in_BIOS.ht
ml)
* 2. Install Oracle VirtualBox (https://www.virtualbox.org/wiki/Downloads). At the
time of writing this document, the latest version of VirtualBox is 4.3.18
* 3. Install Vagrant (http://www.vagrantup.com/downloads). At the time of
writing, the latest version of Vagrant is 1.6.5
* 4. Install proxyconf plugin for vagrant. Detailed instructions are at
http://tmatilai.github.io/vagrant-proxyconf/
    $ vagrant plugin install vagrant-proxyconf
* 5. Install Sublime editor from http://www.sublimetext.com/
* 6. Install chef plugin for sublime
http://www.bonusbits.com/main/HowTo:Install_Chef_Support_in_Sublime_Text
* 7. Download and install Chef Development Kit from
https://downloads.getchef.com/chef-dk/
* 8. Download the VM template for chef server from the following location.
http://initcron-vagrant-boxes.s3.amazonaws.com/initcron-centos-chefbase.
box
* 9. Download the VM template for chef server from the following location.
http://initcron-vagrant-boxes.s3.amazonaws.com/initcron-centos-chefserver.
box
* 10.Add the box downloaded above to vagrant. This is similar to adding a VM
image/template. You need to run the following command from a “CMD”
console. Open cmd, and cd to the directory where you have downloaded the
box. Then run the following command (excluding $)
    $ vagrant box add chef-server initcron-centos-chef-server.box
    $ vagrant box add chef-base initcron-centos-chef-base.box
* 11.Now, if you run the following command,you will be able to see the vagrant box
available
    $ vagrant box list



Windows specific installation notes
* • Install GIT for Windows :
* • Download GIT for windows from below url, launch installer.
https://msysgit.googlecode.com/files/Git-1.9.0-
preview20140217.exe
* • While installing GIT for Windows, it will show “Adjust your PATH
environment” option. Choose the third option which says “Run
Git and included Unix tools from the Windows Command
Prompt”.You could choose default options for all other steps.

