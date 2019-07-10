

kubectl create --kubeconfig=/home/shubham/.kube/admin.conf -f kubernetes/akka-service/
kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/elasticsearch/
kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/kafka/
kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/zookeeper/

