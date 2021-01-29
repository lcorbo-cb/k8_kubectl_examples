kubectl create namespace statetest # Create a namespace for our example

kubectl config set-context --current --namespace=statetest

kubectl apply -f statefulset_example.yaml

kubectl get service nginx

kubectl get statefulset web

kubectl get pods -w -l app=nginx

kubectl get pods -l app=nginx

for i in 0 1; do kubectl exec "web-$i" -- sh -c 'hostname'; done

kubectl run -i --tty --image busybox:1.28 dns-test --restart=Never --rm

# In session
nslookup web-0.nginx

{
  # In Terminal One
  kubectl get pod -w -l app=nginx

  # In Terminal Two

  kubectl delete pod -l app=nginx
}

for i in 0 1; do kubectl exec web-$i -- sh -c 'hostname'; done

kubectl delete -f statefulset_example.yaml

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace statetest
