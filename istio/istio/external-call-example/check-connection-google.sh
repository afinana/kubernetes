SOURCE_POD=$(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name})
kubectl exec -it $SOURCE_POD -c sleep -- curl https://www.googleapis.com/books/v1/volumes?q=isbn:0486424618 

