# arm64v8-centos7-java8
> Compile the build environment:
```shell
[root@uos20 ~]# lscpu
Architecture:                    aarch64
CPU op-mode(s):                  64-bit
Byte Order:                      Little Endian
CPU(s):                          1
On-line CPU(s) list:             0
Thread(s) per core:              1
Core(s) per socket:              1
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       HiSilicon
Model:                           0
Model name:                      Kunpeng-920
Stepping:                        0x1
CPU max MHz:                     2400.0000
CPU min MHz:                     2400.0000
BogoMIPS:                        200.00
L1d cache:                       64 KiB
L1i cache:                       64 KiB
L2 cache:                        512 KiB
L3 cache:                        32 MiB
NUMA node0 CPU(s):               0
Vulnerability Itlb multihit:     Not affected
Vulnerability L1tf:              Not affected
Vulnerability Mds:               Not affected
Vulnerability Meltdown:          Not affected
Vulnerability Spec store bypass: Not affected
Vulnerability Spectre v1:        Mitigation; __user pointer sanitization
Vulnerability Spectre v2:        Not affected
Vulnerability Tsx async abort:   Not affected
Flags:                           fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics fphp asimdhp cpuid asimdrdm jscvt fcma dcpop asimddp asimdfhm
[root@uos20 ~]#
[root@uos20 ~]# uname -r
4.19.90-2005.2.0.0039.uel20.aarch64
[root@uos20 ~]#
[root@uos20 ~]# uname -a
Linux uos20 4.19.90-2005.2.0.0039.uel20.aarch64 #1 SMP Wed Jun 24 02:55:59 UTC 2020 aarch64 aarch64 aarch64 GNU/Linux
[root@uos20 ~]#
[root@uos20 ~]#
[root@uos20 ~]# cat /etc/issue
UOS Server Euler 20
```

> Add java8 to the centos image of the original arm64 version
> 
> base image: arm64v8/centos:centos7
## docker pull
```shell
docker pull freemankevin/arm64v8-centos7-java8:v1
```
## docker run
```shell
docker run -itd --name centos7-java8 freemankevin/arm64v8-centos7-java8
```
## docker test
```shell
docker exec -it centos7-java8 bash -ec "java -version"
docker exec -it centos7-java8 bash -ec "jar -h"
```


