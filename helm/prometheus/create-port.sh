export POD_NAME=$(microk8s.kubectl get pods --namespace default -l "app=prometheus,component=server" -o jsonpath="{.items[0].metadata.name}")
microk8s.kubectl --namespace default port-forward --address 0.0.0.0 $POD_NAME 9090
