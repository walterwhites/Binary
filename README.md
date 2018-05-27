# Binary
Combinaison of binary utilities

## Table of Contents

* [Process](#Process) To kill a process


## Process
Create kill_process script to kill at the specific PORT number

1) Run:
```
sudo /usr/local/bin/kill_process
```

2) fill :
```
kill -QUIT $(sudo lsof -sTCP:LISTEN -i tcp:$1 -t)
```

3) Run :
```
chmod +x kill_process (carefull)
```

4) Execute "sudo kill_process PORT_NUMBER" :
```
sudo kill_process 80
```
