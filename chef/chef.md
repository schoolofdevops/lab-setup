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
* 20 GB Disk Space available
* Base OperatingSystem: Windows/Linux/OSX
* VirtualBox
* Vagrant


Softwares Required:
* Virtualbox
* Vagrant
* Sublime
* Chef Development Kit (ChefDK)
* Git for Windows ( on windows systems)


Systems Preparation:

We are going to use Vagrant to build our learning environment(s), install puppet, run
our code on. Vagrant is a tool which allows us to build, configurable, lightweight and portable virtual machines dynamically. To prepare for the Puppet Fundamentals training, we will install Vagrant. It is essential that Virtualbox be installed before setting up
vagrant as that is the virtualization platform vagrant is built up on.

Installation Instructions:
* Enable Virtualization Technology(VT -x) from BIOS
(https://access.redhat.com/documentation/en-
US/Red_Hat_Enterprise_Linux/6/html/Virtualization_Administration_Guide/sec
t-Virtualization-Troubleshooting-
Enabling_Intel_VT_and_AMD_V_virtualization_hardware_extensions_in_BIOS.ht
ml)
* Install Oracle VirtualBox (https://www.virtualbox.org/wiki/Downloads). At the
time of writing this document, the latest version of VirtualBox is 4.3.30
* Install Vagrant (http://www.vagrantup.com/downloads). At the time of
writing, the latest version of Vagrant is 1.6.7
* Install Sublime editor from http://www.sublimetext.com/
* Install chef plugin for sublime
http://www.bonusbits.com/main/HowTo:Install_Chef_Support_in_Sublime_Text
* Download and install Chef Development Kit from
https://downloads.getchef.com/chef-dk/



Windows specific installation notes
Install GIT for Windows :
   * Download GIT for windows from below url, launch installer.
https://msysgit.googlecode.com/files/Git-1.9.0-
preview20140217.exe
   * While installing GIT for Windows, it will show “Adjust your PATH
environment” option. Choose the third option which says “Run
Git and included Unix tools from the Windows Command
Prompt”.You could choose default options for all other steps.

