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


(gc -raw /checode/remote/extensions/ms-vscode.powershell-2022.6.3/out/main.js) -replace "PowerShell Integrated Console", "psic" > /checode/remote/extensions/ms-vscode.powershell-2022.6.3/out/main.js


gcloud auth login --

gcloud config set project ford-a73878aacd8b4125821fc509

kubectl cp -c frontend ./powershell-2022.6.3.vsix workspacef6b8afdce0fe4794-566964ff79-w96sn:/tmp/test1

gsutil ls gs://iac-team-prod-artifacts

gsutil cp powershell-2022.6.3.vsix gs://iac-team-prod-artifacts/tmp/powershell-2022.6.3.vsix

ps auxwwww

cp main.js /checode/remote/extensions/ms-vscode.powershell-2022.6.3/out/main.js

/checode/checode-linux-libc/bin


curl https://storage.googleapis.com/iac-team-prod-artifacts/tmp/powershell-2022.6.3.vsix -o /tmp/powershell-2022.6.3.vsix
/checode/checode-linux-libc/bin/che-code --install-extension /tmp/powershell-2022.6.3.vsix



https://storage.googleapis.com/iac-team-prod-artifacts/tmp/powershell-2022.6.3.vsix




gcloud auth login abaker9@ford.com --no-launch-browser