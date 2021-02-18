    1  kubectl get pods -n kube-system 
    2  kubectl cluster-info
    3  kubectl cluster-info > README.md
    4  ls
    5  kubectl versions
    6  kubectl version
    7  kubectl version >> README.md 
    8  ls
    9  kubectl api-versions
   10  kubectl api-versions >> README.md 
   11  kubectl api-resources
   12  kubectl api-versions
   13  ls
   14  kubectl proxy --address='172.31.0.100' --port=8001 --accept-hosts='.' --accept-paths='.' &
   15  http://172.31.0.100:8001/api
   16  curl http://172.31.0.100:8001/api
   17  curl http://172.31.0.100:8001/apis
   18  curl http://172.31.0.100:8001/api/v1
   19  curl http://172.31.0.100:8001/api/v1/pods 
   20  ls
   21  history >> README.md 
