### diff

Compare two file:

* `diff hello.txt hello2.txt`

### head

Prints file from the beginning of the file. Power is in options.

* `head -n 1 hello2.txt`
* `head -c 2 hello2.txt`

### netstat

Network took

Options:

* `-l` lists all ports set to listening mode (accepting incoming connections)
* `-n` prints the port number
* `-t` lists all ports accepting TCP connections
* `-u` lists all ports accepting UDP connections

* `netstat -l -n -t -u`


### ss

Utility to investigate sockets

* `-l` lists all ports set to listening mode (accepting incoming connections)
* `-n` prints the port number
* `-t` lists all ports accepting TCP connections
* `-u` lists all ports accepting UDP connections

* `ss -l -n -t -u`
