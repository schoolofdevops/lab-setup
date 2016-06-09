## How to run 
1. Edit **vars.json.template** file according to you environment.   

2. Run packer with command    
		**packer build -var-file=vars.json.template iptl-training.json**  

3. To enable logs and run for a virtual box iso   
		**export PACKER_LOG_PATH=./log &&  export  PACKER_LOG=1 && packer build -var-file=vars.json.template -only=virtualbox-iso packer-centos.json**	 


