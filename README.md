# OtusMicroserviceArchitectureHomeWork
Репозиторий с домашними заданиями к курсу Otus Microservice Architecture

Для просмотра конкретного домашнего задания необходимо переключиться на соответствующую ветку

# Домашнее задание к уроку " Базовые сущности Кubernetes: Pod, ReplicaSet, Deployment"

https://hub.docker.com/r/rignatev/otushomework

Перейти в папку проекта и выполнить
```shell
kubectl apply -f .\k8s

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx/
helm repo list
helm repo update
helm install nginx ingress-nginx/ingress-nginx -n ingress-nginx -f .\k8s\helm\ingress-nginx.yaml

kubectl get namespaces --show-labels
kubectl get service otushomework -n otus
kubectl get ingress -n otus
kubectl describe ingress otushomework -n otus
```

Получить IP адрес minikube
```shell
minikube ip
```

Добавить IP адрес minikube в `etc\hosts`
```
172.31.47.178 arch.homework
```

Открыть в браузере http://arch.homework/health или http://arch.homework/otusapp/aeugene/health