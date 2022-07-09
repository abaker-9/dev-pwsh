# oc login -u abaker9 --server=https://api.sb105.caas.gcp.ford.com:6443

## Templates
kubectl apply -f devfiles/templates
## Secrets
## ConfigMaps

# Basic
kubectl apply -f devfiles/ttyd.yaml
kubectl delete -f devfiles/ttyd.yaml

# vscode
kubectl apply -f devfiles/vscode.yaml
kubectl delete -f devfiles/vscode.yaml

# dotnet
kubectl apply -f devfiles/dotnet.yaml
kubectl delete -f devfiles/vdotnet.yaml


# kubectl neat get secret git-credentials

# # $a | ConvertFrom-KubeJson

# # ConvertFrom-KubeJson

# kubectl annotate secret generic ssh-key-secret description='my frontend'

# kubectl create secret generic ssh-key-secret `
#         --from-literal=data=supersecret
#         --dry-run=client -o yaml
# kubectl create secret generic ssh-key-secret `
#         --from-file=ssh-privatekey=/path/to/.ssh/id_rsa `
#         --from-file=ssh-publickey=/path/to/.ssh/id_rsa.pub
