kubectl create namespace reptest # Create a namespace for our example

kubectl config set-context --current --namespace=reptest

kubectl apply -f simple_replicasets.yaml   # This creats a ReplicaSet

kubectl get pods                           # View ReplicaSet pods

kubectl scale rs frontend --replicas=0

kubectl get pods

kubectl scale rs frontend --replicas=10

kubectl get pods

kubectl scale rs frontend --replicas=3

kubectl delete pod frontend-XXXXX

kubectl delete -f simple_replicasets.yaml  # Deletes ReplicaSet

#### Now to mix a replica set with manually created pods. ####

kubectl apply -f simple_replica_pod.yaml  # Create pods to be part of the ReplicaSet

kubectl apply -f simple_replicasets.yaml  # Now apply the ReplicaSet

kubectl get pods                          # View ReplicaSet pods

kubectl delete pod frontend-XXXXX

kubectl delete pod pod1

kubectl delete -f simple_replicasets.yaml # Deletes ReplicaSet

kubectl delete -f simple_replica_pod.yaml  #This should error because the pods were deleted as part of the ReplicaSet teardown


kubectl config set-context --current --namespace=default # Set context to default as we are about to destroy the namespace

kubectl delete namespace reptest
