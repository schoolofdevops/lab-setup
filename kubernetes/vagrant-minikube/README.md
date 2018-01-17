# Minikube set up using Vagrant
1. Install Vagrant and Virtualbox in your machine
2. Start the VM,
```
vagrant up
```
3. Connect to the VM,
```
vagrant ssh
```
4. Start the *minikube* service by running,
```
sudo minikube start --vm-driver=none
```
5. Then change the owner and group of the config files
```
#change permission for kube configs
sudo chown -R $USER $HOME/.kube
sudo chgrp -R $USER $HOME/.kube
#change permission for minikube configs
sudo chown -R $USER $HOME/.minikube
sudo chgrp -R $USER $HOME/.minikube
```
6. Check the status of your minikube cluster
```
kubectl get node
kubectl get pods --all-namespaces
```

