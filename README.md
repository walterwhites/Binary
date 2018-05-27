# Binary
Combinaison of binary utilities

## Table of Contents

* [Listen a process](#listen-a-process)
* [Kill a process](#kill-a-process)

## Listen a process
To listen all process OR a one at the specific port

1) Run:
```
sudo /usr/local/bin/kill_process
```

2) fill :
```
if [ $# -eq 1 ]
then
        sudo lsof -i :$1
else
        sudo lsof -i
fi

```

3) Run :
```
chmod +x kill_process (carefull)
```

4) Execute "sudo kill_process PORT_NUMBER" :
```
sudo kill_process 80
```

## Kill a process
Create kill_process script to kill at the specific PORT number

1) Run:
```
sudo /usr/local/bin/kill_process
```

2) fill :
```
sudo kill -QUIT $(sudo lsof -sTCP:LISTEN -i tcp:$1 -t)
```

3) Run :
```
chmod +x kill_process (carefull)
```

4) Execute "sudo kill_process PORT_NUMBER" :
```
sudo kill_process 80
```
