# Container Based Local Dev

## Visual Studio Code Remote - Containers

- Environment defined in `.devcontainer` folder
- Builds Dockerfile on the fly
- Runs on local machine utilizing container
- Add `"remote.containers.dockerPath": "podman",` to settings to use podman instead of docker from WSL

### Links

- [Install Podman](https://www.how2shout.com/linux/how-to-install-podman-on-ubuntu-20-04-wsl2/)
- [Use VS Code to develop in containers](https://opensource.com/article/21/7/vs-code-remote-containers-podman)

## OpenShift Dev Spaces

[![Contribute](https://img.shields.io/static/v1?label=code%20with&message=che-code&logo=eclipseche&color=FDB940&labelColor=525C86)](https://devspaces-openshift-operators.apps.sb105.caas.gcp.ford.com/#https://github.com/abaker-9/dev-pwsh)


https://devspaces-openshift-operators.apps.sb105.caas.gcp.ford.com/#https://github.com/abaker-9/dev?che-editor=https://raw.githubusercontent.com/l0rd/devworkspace-demo/main/.devfile.yaml

https://devspaces-openshift-operators.apps.sb105.caas.gcp.ford.com/#https://github.com/abaker-9/dev-pwsh?che-editor=https://raw.githubusercontent.com/l0rd/devworkspace-demo/main/.devfile.yaml


- Uses Devfile format

### Install PowerShell

#### Add pwsh to existing image

[Docker](docker/Dockerfile)

#### Install with dotnet cli

```PowerShell
dotnet tool install --global PowerShell --version 7.1.7
cat << \EOF >> ~/.bash_profile
# Add .NET Core SDK tools
export PATH="$PATH:/home/user/.dotnet/tools"
EOF

export PATH="$PATH:/home/user/.dotnet/tools"
```

> If `pwsh` is not in the path, add it's location in vscode's settings.json
  ```JSON
      "powershell.powerShellAdditionalExePaths": {
        "7.1.7": "/home/user/.dotnet/tools/pwsh"
    }
 ```

### Links

- [Accelerating developer with the Devfile format](https://www.youtube.com/watch?v=6dzE_Zd3o5Y&t=4961s)
- [Extending Kubernetes for Dev and Profit](https://www.youtube.com/watch?v=6dzE_Zd3o5Y&t=21793s)
- [UDI - Universal DevSpace Image source ](https://github.com/redhat-developer/devspaces-images/tree/devspaces-3-rhel-8/devspaces-udi)
- [Dev Space Docs](https://developers.redhat.com/articles/2022/04/01/codeready-workspaces-scales-now-red-hat-openshift-dev-spaces)
- [devworkspace-demo](https://github.com/l0rd/devworkspace-demo)
- [run podman from a within a Pod](https://gist.github.com/l0rd/70eeb2bbef4b18f41e2d1e382e2be05f)
- [](https://github.com/spuranam/ubi)
- [](https://github.com/ether/etherpad-lite)
- [](https://github.com/devfile/devworkspace-operator/pull/844)
- [](https://blog.chmouel.com/2022/03/07/running-tasks-as-non-root-on-openshift-pipelines/)
