kubectl create namespace podtest # Create a namespace for our example

kubectl config set-context --current --namespace=podtest

kubectl apply -f simple_pod.yaml

kubectl get pods                              # List all pods in current namespace context

kubectl get pods -n default                   # List all pods in a specific namespace

kubectl get pods --all-namespaces             # List all pods in all namespaces

kubectl get pods -o wide                      # List all pods in the current namespace, with more details

kubectl get pod busybox-sleep                 # Get a pods details

kubectl get pod busybox-sleep -o wide         # Get a pods in the current namespace, with more details

kubectl get pod busybox-sleep -o yaml         # Get a pod's YAML

kubectl get pod busybox-sleep -o json         # Get a pod's JSON

kubectl describe pods busybox-sleep           # Describe commands with verbose output

kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace podtest
