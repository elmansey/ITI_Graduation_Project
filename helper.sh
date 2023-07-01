kubectl create secret docker-registry regcred   --namespace=dev   --docker-server=10.97.178.100:5000   --docker-username=admin   --docker-password=141011   --docker-email=admin@example.org
kubectl port-forward service/fffff-server -n fffff 8080:443


# Database
kubectl exec -it mysql-5778c8668f-hzptn -n dev -- bash
mysql -u root -p 
create database iti
