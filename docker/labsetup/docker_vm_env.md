## Import Vagtant Template (box)

Change into the dir which contains ubuntu1604-13.box

```
vagrant box add docker-template ubuntu1604-13.box

```

Validate

```
vagrant box list

ansible         (virtualbox, 0)
chef            (virtualbox, 0)
docker-template (virtualbox, 0)
dummy           (aws, 0)
```

## Launch the VM with Vagrant

Change into the directory which contains the Vagrantfile.

e.g.

cd  virual/docker

```
vagrant up
vagrant ssh

```


## Loading Docker Images

Copy over all docker images to the directory which contains the vagrantfile above.


Load the dockerfiles one by one
```
docker load /vagrant/xyz.tar
```

Validate

```
docker images
```

## Launch Sample Docker Containers

```
docker run -its --name sample <image>
```
