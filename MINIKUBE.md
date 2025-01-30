# Init environment

minikube start

eval $(minikube docker-env)

docker build -t timetablerapi-integration-testing -f Dockerfile.timetablerapi-integration-testing ./../timetablerapi/

kubectl apply -f postgresql-deployment.yaml
kubectl apply -f postgresql-service.yaml
kubectl apply -f integration-testing-deployment.yaml

kubectl logs job/integration-testing
kubectl delete job integration-testing

minikube ip #show ip address

minikube stop
