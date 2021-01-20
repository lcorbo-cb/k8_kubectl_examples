kubectl create namespace ingresstest # Create a namespace for our example

kubectl config set-context --current --namespace=ingresstest

kubectl apply -f minimal-ingress.yaml

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace ingresstest
