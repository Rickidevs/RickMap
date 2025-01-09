# 🔎 RickMap (much faster than nmap)

RickMap is an effective port scanning tool that runs on average 15 times faster than Nmap in tests and draws its speed and simplicity from the Go language. It offers a simple solution to modern network scanning needs. Of course, Nmap is a much more comprehensive tool, but a fast port scan will always take you ahead. With nmap , you can take the open ports you find with RickMapto a comprehensive scan.


## 💡  Usage

Running RickMap is quite simple! The command can be used as follows:

`rickmap <ip or ip-range> [-p-] [-t timeout_ms]`

#### Arguments

- `<ip or ip-range>`: IP address or range to be scanned (example: 192.168.1.1 or 192.168.1.1-100).

- `-p-`: Scans all 65535 ports. By default it scans only ports 22, 80 and 443.

- `-t` timeout_ms: Sets the scan timeout time in milliseconds. Default: 850 ms.


### Examples


- rickmap 192.168.1.1

- rickmap 192.168.1.1.1-50

- rickmap 192.168.1.1 -p-

- rickmap 192.168.1.1 -t 1000


## Installation 

**To install RickMap, follow these steps:**

`git clone https://github.com/Rickidevs/RickMap.git`

`cd RickMap`

`chmod +x setup.sh`

`./setup.sh`

---