kubectl create namespace configmaptest # Create a namespace for our example

kubectl config set-context --current --namespace=configmaptest

kubectl create configmap game-config --from-file=configs/

kubectl describe configmaps game-config

kubectl delete configmap game-config

kubectl apply -f configmap.yaml

kubectl apply -f pod_using_configmap.yaml

kubectl delete -f pod_using_configmap.yaml

kubectl delete -f configmap.yaml

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace configmaptest
