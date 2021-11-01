 export POD_NAME=$(kubectl get pods --namespace istio-system -l "app=servicegraph" -o jsonpath="{.items[0].metadata.name}")
microk8s.kubectl --namespace istio-system port-forward --address 0.0.0.0 $POD_NAME 8088 
