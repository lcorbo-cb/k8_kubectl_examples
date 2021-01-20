kubectl create namespace servicetest # Create a namespace for our example

kubectl config set-context --current --namespace=servicetest

kubectl apply -f simple_service.yaml

kubectl get services my-service -o wide

kubectl get services my-service -o yaml

kubectl delete service my-service

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace servicetest
