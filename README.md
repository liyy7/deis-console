Deis Console Dockerfile
=======================

#### This Dockerfile provides a easy way to use [deis](http://deis.io) command.

##### Check [Deploy an Application with deis](http://docs.deis.io/en/latest/using_deis/deploy-application/) to see how to use [deis](http://deis.io).

###### Usage
* Pull
	* Pull the latest version
		* `docker pull yongyulee/docker-console:latest`
	* Pull the specified version
		* `docker pull yongyulee/docker-console:v0.14.1`
* Run
	* Run the latest version
		* `docker run --rm -it -v ~/.ssh:/root/private_keys yongyulee/docker-console:latest`
	* Run the specified version
		* `docker run --rm -it -v ~/.ssh:/root/private_keys yongyulee/docker-console:v0.14.1`
* Configure environment variables
	* example
		* `docker run --rm -it -e "DEIS_CONTROLLER=http://deis.domain.com" -e "DEIS_USERNAME=<USERNAME>" -e "DEIS_PASSWORD=<PASSWORD>" -e "DEISCTL_TUNNEL=deisctl-tunnel.domain.com" -v ~/.ssh:/root/private_keys yongyulee/docker-console:latest`
			* Inside container:
				* `deis login $DEIS_CONTROLLER --username=$DEIS_USERNAME --password=$DEIS_PASSWORD`

###### Available commands
* `deis`
* `deisctl`
* `fleetctl`