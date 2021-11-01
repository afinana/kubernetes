 export POD_NAME=$(kubectl get pods --namespace default -l "app=grafana" -o jsonpath="{.items[0].metadata.name}")
microk8s.kubectl --namespace default port-forward --address 0.0.0.0 $POD_NAME 3000
