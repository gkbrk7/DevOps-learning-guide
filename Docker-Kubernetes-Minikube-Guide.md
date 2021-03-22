# Install Docker CE Edition

```shell
sudo apt-get update

sudo apt-get install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
\"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable\"

sudo apt-get update
sudo apt-get install docker-ce
docker version
```

# Install KubeCtl

```shell
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version
```

# Install MiniKube

```shell
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube

sudo install minikube /usr/local/bin
```

# Install VirtualBox

```shell
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install virtualbox
```

# Execute MiniKube & Create Cluster

```shell
minikube start
```

# Interact Cluster Using KubeCtl

- Go to https://minikube.sigs.k8s.io/docs/handbook/controls/ to setup echoserver latest version

# (OBSOLETE)Interact Cluster Using KubeCtl

Let’s create a Kubernetes Deployment using an existing image named
echoserver, which is a simple HTTP server and expose it on port 8080
using --port. \

```shell
kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080
```

We can inspect the pods and the deployments

```shell
kubectl get pod
kubectl get deployments
```

In order to access the hello-minikube service, we must first expose
the deployment to an external IP via the command:

```shell
kubectl expose deployment hello-minikube --type=NodePort
```

Check if the service was exposed

```shell
kubectl get services
```

Get the URL of the exposed Service to view the Service details:

```shell
minikube service hello-minikube --url
```

Now we can either curl the service from the CLI, or hit it via the
browser.

```shell
curl $(minikube service hello-minikube --url)
curl <URL>
```

Delete the Service

```shell
kubectl delete services hello-minikube
kubectl delete deployment hello-minikube
Stop the local Minikube cluster:
minikube stop
```
