# OpenShift Dev Spaces Issues

## Default Terminal window does not open

- Displays frozen cursor
- Icon has no name
- Subsequent terminal windows open as expected

![Hung Terminal](images/hung_terminal.png)

> Started after recent OpenShift upgrade

## Terminal window wraps after X characters

If a command goes beyond a certain number of characters which seems to depend on image used, it will wrap to the same line:

For example:

```
stuvwx.4$ abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqr
```

## PowerShell Editor Service does not start

- Add pwsh to universal image
- Install ms-code version of PowerShell extension
- Open a file with `.ps1` extension in editor window

```bash
7/7/2022 1:04:37 PM [NORMAL] - Visual Studio Code v1.69.0 64-bit
7/7/2022 1:04:37 PM [NORMAL] - PowerShell Extension v2022.6.3
7/7/2022 1:04:37 PM [NORMAL] - Operating System: Linux 64-bit
7/7/2022 1:04:37 PM [NORMAL] - Language server starting --
7/7/2022 1:04:37 PM [NORMAL] -     PowerShell executable: /home/user/.dotnet/tools/pwsh
7/7/2022 1:04:37 PM [NORMAL] -     PowerShell args: -NoProfile -EncodedCommand SQBtAHAAbwByAHQALQBNAG8AZAB1AGwAZQAgACcALwBjAGgAZQBjAG8AZABlAC8AcgBlAG0AbwB0AGUALwBlAHgAdABlAG4AcwBpAG8AbgBzAC8AbQBzAC0AdgBzAGMAbwBkAGUALgBwAG8AdwBlAHIAcwBoAGUAbABsAC0AMgAwADIAMgAuADYALgAzAC8AbQBvAGQAdQBsAGUAcwAvAFAAbwB3AGUAcgBTAGgAZQBsAGwARQBkAGkAdABvAHIAUwBlAHIAdgBpAGMAZQBzAC8AUABvAHcAZQByAFMAaABlAGwAbABFAGQAaQB0AG8AcgBTAGUAcgB2AGkAYwBlAHMALgBwAHMAZAAxACcAOwAgAFMAdABhAHIAdAAtAEUAZABpAHQAbwByAFMAZQByAHYAaQBjAGUAcwAgAC0ASABvAHMAdABOAGEAbQBlACAAJwBWAGkAcwB1AGEAbAAgAFMAdAB1AGQAaQBvACAAQwBvAGQAZQAgAEgAbwBzAHQAJwAgAC0ASABvAHMAdABQAHIAbwBmAGkAbABlAEkAZAAgACcATQBpAGMAcgBvAHMAbwBmAHQALgBWAFMAQwBvAGQAZQAnACAALQBIAG8AcwB0AFYAZQByAHMAaQBvAG4AIAAnADIAMAAyADIALgA2AC4AMwAnACAALQBBAGQAZABpAHQAaQBvAG4AYQBsAE0AbwBkAHUAbABlAHMAIABAACgAJwBQAG8AdwBlAHIAUwBoAGUAbABsAEUAZABpAHQAbwByAFMAZQByAHYAaQBjAGUAcwAuAFYAUwBDAG8AZABlACcAKQAgAC0AQgB1AG4AZABsAGUAZABNAG8AZAB1AGwAZQBzAFAAYQB0AGgAIAAnAC8AYwBoAGUAYwBvAGQAZQAvAHIAZQBtAG8AdABlAC8AZQB4AHQAZQBuAHMAaQBvAG4AcwAvAG0AcwAtAHYAcwBjAG8AZABlAC4AcABvAHcAZQByAHMAaABlAGwAbAAtADIAMAAyADIALgA2AC4AMwAvAG0AbwBkAHUAbABlAHMAJwAgAC0ARQBuAGEAYgBsAGUAQwBvAG4AcwBvAGwAZQBSAGUAcABsACAALQBTAHQAYQByAHQAdQBwAEIAYQBuAG4AZQByACAAJwA9AD0APQA9AD0APgAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABJAG4AdABlAGcAcgBhAHQAZQBkACAAQwBvAG4AcwBvAGwAZQAgAHYAMgAwADIAMgAuADYALgAzACAAPAA9AD0APQA9AD0ACgAnACAALQBMAG8AZwBMAGUAdgBlAGwAIAAnAE4AbwByAG0AYQBsACcAIAAtAEwAbwBnAFAAYQB0AGgAIAAnAC8AYwBoAGUAYwBvAGQAZQAvAHIAZQBtAG8AdABlAC8AZQB4AHQAZQBuAHMAaQBvAG4AcwAvAG0AcwAtAHYAcwBjAG8AZABlAC4AcABvAHcAZQByAHMAaABlAGwAbAAtADIAMAAyADIALgA2AC4AMwAvAGwAbwBnAHMALwAxADYANQA3ADEAOQA5ADAANwA3AC0AcwBvAG0AZQBWAGEAbAB1AGUALgBzAGUAcwBzAGkAbwBuAEkAZAAvAEUAZABpAHQAbwByAFMAZQByAHYAaQBjAGUAcwAuAGwAbwBnACcAIAAtAFMAZQBzAHMAaQBvAG4ARABlAHQAYQBpAGwAcwBQAGEAdABoACAAJwAvAGMAaABlAGMAbwBkAGUALwByAGUAbQBvAHQAZQAvAGUAeAB0AGUAbgBzAGkAbwBuAHMALwBtAHMALQB2AHMAYwBvAGQAZQAuAHAAbwB3AGUAcgBzAGgAZQBsAGwALQAyADAAMgAyAC4ANgAuADMALwBzAGUAcwBzAGkAbwBuAHMALwBQAFMARQBTAC0AVgBTAEMAbwBkAGUALQB1AG4AZABlAGYAaQBuAGUAZAAtADgANwA4ADcAMAAxACcAIAAtAEYAZQBhAHQAdQByAGUARgBsAGEAZwBzACAAQAAoACkAIAA=
7/7/2022 1:04:37 PM [NORMAL] -     PowerShell Editor Services args: Import-Module '/checode/remote/extensions/ms-vscode.powershell-2022.6.3/modules/PowerShellEditorServices/PowerShellEditorServices.psd1'; Start-EditorServices -HostName 'Visual Studio Code Host' -HostProfileId 'Microsoft.VSCode' -HostVersion '2022.6.3' -AdditionalModules @('PowerShellEditorServices.VSCode') -BundledModulesPath '/checode/remote/extensions/ms-vscode.powershell-2022.6.3/modules' -EnableConsoleRepl -StartupBanner '=====> PowerShell Integrated Console v2022.6.3 <=====
' -LogLevel 'Normal' -LogPath '/checode/remote/extensions/ms-vscode.powershell-2022.6.3/logs/1657199077-someValue.sessionId/EditorServices.log' -SessionDetailsPath '/checode/remote/extensions/ms-vscode.powershell-2022.6.3/sessions/PSES-VSCode-undefined-878701' -FeatureFlags @()
7/7/2022 1:04:37 PM [NORMAL] - pwsh started.
7/7/2022 1:04:37 PM [NORMAL] - Waiting for session file
7/7/2022 1:08:38 PM [NORMAL] - Timed out waiting for session file to appear.
7/7/2022 1:08:38 PM [NORMAL] - Language server startup failed.
7/7/2022 1:08:38 PM [ERROR] - The language service could not be started:
7/7/2022 1:08:38 PM [ERROR] - Error: Timed out waiting for session file to appear.
```

The editor service command appears to not be run at all as the window hangs:

![Hung editor](images/hung_editor.png)

> If the editor service command from the log is run manually, the editor service starts as expected. Unfortunatly, this operation happens multiple times (like using the debugger) so manual execution is not tennable.

## GUI throws access errors

Occasionally gui stop functioning and throws errors

![Hung Terminal](images/perm.png)

Logging out and back in solves problem.

## pwsh is unusable when used interactively

pwsh starts as expected, but blows up when a single character is entered

![pwsh fail](images/pwsh_term_fail.png)

### Notes running pwsh

- pwsh works ok as long as it is used non interactively : `pwsh -c "get-date"`
- May be related to: <https://github.com/PowerShell/PowerShell/issues/17488>
- When pwsh is started from the default terminal, problem does NOT occur

## Links

- [PowerShellEditorServices](https://github.com/PowerShell/PowerShellEditorServices)
- https://stackoverflow.com/questions/63841595/vsc-powershell-session-timed-out-waiting-for-session-file-to-appear
- https://github.com/dotnet/runtime/issues/71224
- [Known vscode-powershell extention issues] (https://github.com/PowerShell/vscode-powershell/blob/master/docs/troubleshooting.md#known-issues-in-the-extension)
- [vscode-powershell troublshooting] (https://github.com/PowerShell/vscode-powershell/blob/master/docs/troubleshooting.md#providing-information-about-your-environment)
- [Can't initialize PowerShell session in VSCode for Mac](https://superuser.com/questions/1518697/cant-initialize-powershell-session-in-vscode-for-mac)
- [vscode Activation Events](https://code.visualstudio.com/api/references/activation-events)
- [PowerShell Integrated Console (PSIC) is not created on VSCode startup](https://github.com/PowerShell/vscode-powershell/issues/2900)