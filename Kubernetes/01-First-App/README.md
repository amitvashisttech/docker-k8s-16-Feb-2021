# First App

```
kubectl get nodes 
kubectl get pods 
```

## Let's deploy Nginx POD
```
kubectl run hello-k8s --image=nginx --port=80
kubectl get pods 
kubectl get pods -o wide
```
