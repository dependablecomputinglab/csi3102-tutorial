#CSI3102 Tutorial
This repository is made to help students in CSI3102 course in Yonsei university. <br />
We will guide you to do project with gem5.

##OVERVIEW: How to setup gem5?
- STEP1: Install git
- STEP2: Setup prerequistes for gem5
  - Download this repository using git
  - Use the script in this repository to isntall prerequisites for gem5
- STEP3: Download gem5 with git & Build gem5
- STEP4: Run your benchmark on gem5

##Before Start: Appearance of Shell Prompt
Normally, shell prompt looks like:
- $ ___shell command___
- _working directory_$ ___shell command___
- _user_@_host_:_working directory_$ ___shell command___

For example, 

```sh
~$ cd gem5
~/gem5$ pwd
```

or

![](http://dclab.yonsei.ac.kr/csi3102/shell-prompt.PNG)

In the shell prompt above, we execute command ___cd gem5___ in home directory(_~_), and then execute command ___pwd___ in '_~/gem5_'.

##What is gem5?
gem5 is ISA simulator.

You may see the key paper: [The gem5 simulator](http://dl.acm.org/citation.cfm?id=2024718)

You may see gem5 official website: [http://gem5.org](http://gem5.org)

<!-- We uploaded [our tutorial file](http://dclab.yonsei.ac.kr/csi3102/gem5-tutorial.pdf) to help you, also.-->

##System Requirement
**Linux**
- If you don't know how to setup linux, see: [How to setup Linux?](http://dclab.yonsei.ac.kr/csi3102/how-to-setup-linux.pdf)

**memory + storage > 2GiB**
- If memory < 2GiB, you have to use swap file to build gem5. <br />
  See: [http://www.cyberciti.biz/faq/linux-add-a-swap-file-howto/](http://www.cyberciti.biz/faq/linux-add-a-swap-file-howto/)
- If memory + storage < 2GiB, there is no way to build gem5.

##STEP1: Install git
If you use Ubuntu,
```sh
$ sudo apt-get install git
```

If you use CentOS or RHEL,
```sh
$ sudo yum install git
```

##STEP2: Setup prerequisites
####How to download this repository?
```sh
$ git clone https://github.com/dependablecomputinglab/csi3102-tutorial.git ~/csi3102-tutorial
```

####How to use the script?
```sh
$ ~/csi3102-tutorial/gem5-helper.sh
```

##STEP3: Build gem5
####How to download gem5 source code?
```sh
~$ git clone https://github.com/gem5/gem5
```

####How to build gem5?
- Command: **$ scons build/<*isa*>/<*binary*>**
- Supported ISA: ARM, ALPHA, MIPS, SPARC, POWER, X86
- Supported Binaries: gem5.debug, gem5.opt, gem5.fast, gem5.prof

For example, if you want to build gem5.opt for ARM architecture,
```sh
~/gem5$ scons build/ARM/gem5.opt
```

##STEP4: Run your benchmark on gem5
####Sample Run
- Command: **$ build/<_isa_>/<_binary_> <_config_> -c <_benchmark_>**
- Outputs are generated in _m5out/_

For example, if you build gem5 for ARM ISA, run:
```sh
~/gem5$ ./build/ARM/gem5.opt configs/example/se.py -c tests/test-progs/hello/bin/arm/linux/hello
```

If you execute the command above, you will see:
![gem5 sample run success](http://dclab.yonsei.ac.kr/csi3102/gem5-sample-run-success.PNG)

And, the simulation statistics are saved as file [_m5out/stats.txt_](http://dclab.yonsei.ac.kr/csi3102/stats.txt)

####Important Options

- **-n <_NUM_CPUs_>**
- **--cpu-type=<_CPU\_TYPE_>**
- **--caches** : Enable caches


####Run MiBench
In project 2 and 3, we will use:
- automotive/basicmath
- automotive/qsort
- network/dijkstra
- telecom/FFT

Download MiBench with git:
```sh
~$ git clone https://github.com/embecosm/mibench
```

And, DO IT YOURSELF :D
