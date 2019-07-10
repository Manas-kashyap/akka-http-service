kubectl create --kubeconfig=/etc/kubernetes/admin.conf -f kubernetes/akka-service/
kubectl create --kubeconfig=/etc/kubernetes/admin.conf -f kubernetes/elasticsearch/
kubectl create --kubeconfig=/etc/kubernetes/admin.conf -f kubernetes/kafka/
kubectl create --kubeconfig=/etc/kubernetes/admin.conf -f kubernetes/zookeeper/

