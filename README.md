#CSI3102 Tutorial
This GitHub document is made to help students in CSI3102 course in Yonsei university. <br />
We will guide you to do project with gem5.

##OVERVIEW: How to setup gem5?
- Before Start
    - Introduction to shell prompt
    - What is _gem5_?
    - System Requirement
- STEP1: Setup prerequistes for _gem5_
- STEP2: Download & Build _gem5_
- STEP3: Run your benchmark on _gem5_

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

####NOTE
- We will use notation '$ ___shell command___' if the command works in any directory.
- We will use notation '_working directory_$ ___shell command___' if the working directory matters.

##What is _gem5_?
_gem5_ is a system simulator.

You may see the key paper: [The _gem5_ simulator](http://dl.acm.org/citation.cfm?id=2024718)

You may see _gem5_ official website: [http://gem5.org](http://gem5.org)

<!-- We uploaded [our tutorial file](http://dclab.yonsei.ac.kr/csi3102/gem5-tutorial.pdf) to help you, also.-->

##System Requirement
**Linux**
- If you don't know how to setup linux, see: [How to setup Linux?](http://dclab.yonsei.ac.kr/csi3102/how-to-setup-linux.pdf)

**memory + storage > 2GiB**
- If memory < 2GiB, you have to use swap file to build _gem5_. <br />
  See: [http://www.cyberciti.biz/faq/linux-add-a-swap-file-howto/](http://www.cyberciti.biz/faq/linux-add-a-swap-file-howto/)
- If memory + storage < 2GiB, there is no way to build _gem5_.

##STEP1: Setup prerequisites
####How to install prerequisites for _gem5_?
If you use Ubuntu, just execute:
```sh
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install -y git build-essential g++ zlib1g-dev scons m4 swig python-dev python-six libboost-dev
```

If you use other distro of linux, google it. :D
##STEP2: Download & Build _gem5_
####How to download _gem5_ source code?
```sh
$ cd ~
~$ git clone https://github.com/gem5/gem5
```

####How to build _gem5_?
- Command: **$ scons build/<*isa*>/<*binary*>**
- Supported ISA: ARM, ALPHA, MIPS, SPARC, POWER, X86
- Supported Binaries: gem5.debug, gem5.opt, gem5.fast, gem5.prof

For example, if you want to build gem5.opt for ARM architecture,
```sh
$ cd ~/gem5
~/gem5$ git checkout 2f3c467
~/gem5$ scons build/ARM/gem5.opt
```

##STEP3: Run your benchmark on _gem5_
####Sample Run
- Command: **$ build/<_isa_>/<_binary_> <_config_> -c <_benchmark_>**
- Outputs are generated in _m5out/_

For example, if you build _gem5_ for ARM ISA, run:
```sh
$ cd ~/gem5
~/gem5$ ./build/ARM/gem5.opt configs/example/se.py -c tests/test-progs/hello/bin/arm/linux/hello
```

If you execute the command above, you will see:
![gem5 sample run success](http://dclab.yonsei.ac.kr/csi3102/gem5-sample-run-success.PNG)

And, the simulation statistics are saved as file [_m5out/stats.txt_](http://dclab.yonsei.ac.kr/csi3102/stats.txt)
