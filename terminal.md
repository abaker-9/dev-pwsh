# Che-Code Issues


## Calling terminal window in Che-Code fails if container doesn't exist with the same name as the terminal


### Example 1: Tasks defined in repo won't execute

Run task by going to **Terminal** -> **Run Task...**

```
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "echo",
            "type": "shell",
            "command": "echo Hello"
        }
    ]
}
```
### Failed Task

![Bad Task](images/bad_task.png)

> machine-exec container throws the following error: `time="2022-07-10T22:03:30Z" level=error msg="Unable to initialize terminal. Cause: container with name echo was not found."`

> If a container named `echo` exists, task works as expected

### Example 2: PowerShell Editor Service does not start

- Add pwsh to universal image
- Install ms-code version of PowerShell extension
- Open a file with `.ps1` extension in editor window

The editor service window hangs:

![Hung editor](images/hung_editor.png)

> machine-exec container throws the following error: `time="2022-07-10T22:03:30Z" level=error msg="Unable to initialize terminal. Cause: container with name PowerShell Integrated Console was not found."`

> vscode-powershell extension hard codes terminal to [PowerShell Integrated Console](https://github.com/PowerShell/vscode-powershell/blob/main/src/session.ts#L453). Default name is not a valid container name but recompiling extension with terminal name as `frontend` (name of dev space container) works as expected.

### Example 3: Default Terminal window does not open

- Displays frozen cursor
- Icon has no name
- Subsequent terminal windows open as expected but have wrapping issues

![Hung Terminal](images/hung_terminal.png)

> Doesn't happen when using an older image: `quay.io/che-incubator/che-code:insiders-74c6cfd`

> machine-exec container throws the following error: `time="2022-07-10T22:03:30Z" level=error msg="Unable to initialize terminal. Cause: container with name Terminal was not found."`


### Example 4: Terminal windows opens successfully for user

When a user clicks in the gui to open a new terminal, it opens as expected because the name is is already mapped to a running container for example:

![task](images/task.png)

### Conclusion

Terminal windows that are launched by Che-code using tasks or extensions don't necessarily name the terminal the same as a container causing the terminal to hang.

`machine-exec` server should allow for the invocation of a terminal session where the name of the terminal doesn't have match the name of a running container.

### Links

- [Che machine exec fails to start](https://github.com/eclipse/che/issues/21431)