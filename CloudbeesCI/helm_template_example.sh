helm template cloudbees-core \
  --set OperationsCenter.HostName="cbci.cloudbees.demo" \
  --set OperationsCenter.Ingress.tls.Enable=true \
  --namespace cloudbees-core cloudbees/cloudbees-core \
  --values values/cloudbees_ingress.yaml > cloudbees.yaml
