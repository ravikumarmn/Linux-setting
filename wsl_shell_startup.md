#starting wsl terminal
## option 1
1. create a shortcur
2. in the location: type: `wsl.exe`000
3. windows + r, type: `shell:startup`, this will open a folder. move the shortcut icon to this directory

## option 2
enable startup wsl.exe from the task-manager

# Running in the background

create a `.bat` file in the below directory
`C:\Users\shiva\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

and append the line below to run the scrip background
```
wsl --exec dbus-launch true
```
also enabled background in the app setting, never optimize for battery/process
