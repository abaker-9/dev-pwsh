FROM quay.io/mloriedo/universal-developer-image:buildah

ARG PS_VERSION=7.2.5
ARG PACKAGE_VERSION=7.2.5-1
ARG PS_PACKAGE=powershell-${PACKAGE_VERSION}.rh.x86_64.rpm

ENV \
    # HOME=/opt/app-root \
    # USER_NAME=default \
    # USER_UID=1001 \
    SUMMARY="powershell" \
    DESCRIPTION="powershell" \
    POWERSHELL_TELEMETRY_OPTOUT=true \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    PSModuleAnalysisCachePath=/var/cache/microsoft/powershell/PSModuleAnalysisCache/ModuleAnalysisCache

LABEL \
    summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="powershell" \
    org.label-schema.version="$PS_VERSION" \
    org.label-schema.name="powershell"

USER 0
RUN set -ex && \
    ##################################################################
    # Install Powershell
    ##################################################################
    rpm -Uvh https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/${PS_PACKAGE} && \
    mkdir -p ${HOME}/.local/share/powershell/PSReadLine/ && \
    touch "${HOME}/.local/share/powershell/PSReadLine/Visual Studio Code Host_history.txt" && \
    chmod 664 "${HOME}/.local/share/powershell/PSReadLine/Visual Studio Code Host_history.txt" && \
    touch ${HOME}/.local/share/powershell/PSReadLine/ConsoleHost_history.txt && \
    chmod 664 ${HOME}/.local/share/powershell/PSReadLine/ConsoleHost_history.txt && \
    pwsh \
        -NoLogo \
        -NoProfile \
        -Command " \
          \$ErrorActionPreference = 'Stop' ; \
          \$ProgressPreference = 'SilentlyContinue' ; \
          while(!(Test-Path -Path \$env:PSModuleAnalysisCachePath)) {  \
            Write-Host "'Waiting for \$env:PSModuleAnalysisCachePath'" ; \
            Start-Sleep -Seconds 6 ; \
          }"
# WORKDIR ${HOME}

### Containers should not run as root as a good practice
# USER 1001
USER 10001
# ENTRYPOINT ["/usr/bin/entrypoint"]
# CMD ["pwsh", "-NoLogo"]
