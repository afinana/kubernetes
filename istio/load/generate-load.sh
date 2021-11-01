while true; do
   curl -s http://ubuntu-microk8s-istio:31380/demo-frontend > /dev/null
   echo -n .;
   sleep 0.2
done
