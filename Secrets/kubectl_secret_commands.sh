kubectl create namespace secrettest # Create a namespace for our example

kubectl config set-context --current --namespace=secrettest

# Manually create a secret (Not using YAML)
kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=secret_config.json \
    --type=kubernetes.io/dockerconfigjson

kubectl get secrets

kubectl get secret regcred -o yaml

kubectl delete secret regcred

kubectl apply -f docker_secret.yaml

kubectl apply -f pod_using_secret.yaml

kubectl get pods kaniko

kubectl get pods kaniko -o wide

kubectl get pods kaniko -o yaml

kubectl exec kaniko -- cat /kaniko/.docker/config.json

kubectl delete -f docker_secret.yaml

kubectl delete -f pod_using_secret.yaml

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace secrettest
