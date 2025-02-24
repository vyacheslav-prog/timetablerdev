# Init environment

minikube start

kubectl apply -f postgresql-deployment.yaml
kubectl apply -f postgresql-service.yaml

eval $(minikube docker-env) # or manual export image to minikube after docker build

docker build -t timetablerapi-integration-testing -f Dockerfile.timetablerapi-integration-testing ./../timetablerapi/
kubectl apply -f integration-testing-deployment.yaml
kubectl logs job/integration-testing
kubectl delete job integration-testing

minikube stop # and fix a context param for kubectl after stoping
