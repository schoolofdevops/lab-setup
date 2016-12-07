## Common  Setup Instructions
#### Softwares

  * Docker Toolbox
  * Git
  * Atom
  * ConEMU

====================


### Systems Preparation

To setup the lab, as participants, we would install Docker Toolbox and  create  Containers for each application being used to setup learning environment.  We would also need a sophisticated  editor  which would help us write code fast, with auto completion and syntax highlighting features etc. Thats where Atom comes in handy.  

On windows systems, utilities such as ssh do not come installed by default. To install a bash shell and create a remote terminal, Git and ConEmu are effective tools.

#### Enabling Virtualization from BIOS

In order to run 64bit VMs, systems need to be enabled with hardware virtualization extensions. On a Mac OSX, this is typically enabled by default. However, on many Windows Laptops/Desktops, VT-x needs to be manually enabled.


#### Installing Required Softwares - Common

- Install software with specific version  by clicking on link provided in below table

- Additional software need  for windows system are git & ConEmu


| Software     | Windows Installer | OS X Installer |
| :------------- | :--------------- | :---------------|
| Docker Toolbox     |[1.12.3](https://github.com/docker/toolbox/releases/tag/v1.12.3)      | [1.12.3](https://github.com/docker/toolbox/releases/tag/v1.12.3)  
| Atom | [1.7.4](https://github.com/atom/atom/releases/download/v1.7.4/AtomSetup.exe) |  [1.7.4](https://atom.io/download/mac) |
| Git for Windows |  [2.8.3](https://github.com/git-for-windows/git/releases/download/v2.8.3.windows.1/Git-2.8.3-64-bit.exe) | Not Applicable |
| ConEmu | [150813g](http://www.fosshub.com/ConEmu.html/ConEmu_150813g_English.paf.exe) | Not Applicable |

All softwares  need no additional instructions while installing. Download, launch installer and follow through the default steps.

### Creating a VM to launch Docker Containers

  * Open a terminal (ConEMU with bash on windows  or iterm on Mac)
  * Run the following command to create a new VM with VirtualBox driver

```
docker-machine create -d virtualbox cmad

```

  * Once the VM is created, setup the environment with docker in order to connect to it and launch containers.

```
docker-machine env cmad
```

Executing above command will actually give you the actual instructions to setup environment.

e.g.

```
# Run this command to configure your shell:
# eval $(docker-machine env cmad)
```

You need to follow those instructions and execute the command given e.g.

```
eval $(docker-machine env cmad)

```


  * Validate connectivity to docker daemon. The following command can show blank results, but should not throw an error.

```
docker images
REPOSITORY                          TAG                 IMAGE ID            CREATED             SIZE
```

You are ready to launch/manage container based environments.


### Download Docker images


Run the following commands to download the necessary images

```
docker pull jenkins
docker pull sonarqube
docker pull mattgruter/artifactory
docker pull tomcat
```
