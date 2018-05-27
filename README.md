# Binary
Combinaison of binary utilities

## Table of Contents

* [Listen a process](#listen-a-process)
* [Kill a process](#kill-a-process)

## Listen a process
To listen all process OR just one

1) Run:
```
sudo /usr/local/bin/listen_process
```

2) write :
```
if [ $# -eq 1 ]
then
        ps aux | grep httpd | awk '{ print "\033[31m process_name \033[0m" $11 "\033[31m id \033[0m" $2;}'
else
        ps aux | awk '{ print "\033[31m process_name \033[0m" $11 "\033[31m id \033[0m" $2;}'
fi
```

3) Run :
```
chmod +x listen_process (carefull)
```

4) You listen all process :
```
sudo listen_process
```

5) Or listen specific port number :
```
sudo listen_process 80
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
