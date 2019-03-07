[Provisioning VMs with Vagrant](https://schoolofdevops.github.io/ultimate-kubernetes-bootcamp/2_kube_cluster_vagrant/)

- First start the master: vagrant up kube-01
- Update the `kubeadm join` command in $script_worker_root with the actual token and hash
- Start the 1st worker: vagrant up kube-02
- Start the 2nd worker: vagrant up kube-03
