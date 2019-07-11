sudo kubectl create --kubeconfig=/home/shubham/.kube/admin.conf -f kubernetes/akka-service/
sudo kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/elasticsearch/
sudo kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/kafka/
sudo kubectl create --kubeconfig=/home/shubham/.kube/admin.conf  -f kubernetes/zookeeper/

