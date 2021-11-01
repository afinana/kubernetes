export POD_NAME=$(kubectl get pods --namespace default -l "app=kibana,release=kibana" -o jsonpath="{.items[0].metadata.name}")
echo "Visit http://127.0.0.1:5601 to use Kibana"
microk8s.kubectl port-forward --address 0.0.0.0 --namespace default $POD_NAME 5601:5601
