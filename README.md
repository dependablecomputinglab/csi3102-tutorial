#OVERVIEW: How to setup gem5?
- Install git
- Setup prerequistes for gem5
  - Download this repository using git
  - Use the script in this repository to isntall prerequisites for gem5
- Download gem5 with git & Build gem5
- Run your benchmark on gem5

##System Requirement
**memory + storage > 2GiB**

If your memory > 2GiB, you have to use swap file to build gem5

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
How to download this repository?
```sh
$ git clone https://github.com/dependablecomputinglab/csi3102-tutorial.git ~/csi3102-tutorial
```

How to use the script?
```sh
$ ~/csi3102-tutorial/gem5-helper.sh
```

##STEP3: Build gem5
How to download gem5 source code?
```sh
$ git clone https://github.com/uart/gem5-mirror.git
```

How to build gem5?
See gem5 official page or [our tutorial file](http://dclab.yonsei.ac.kr/csi3102/gem5-tutorial.pdf)

##STEP4: Run your benchmark on gem5
We use MiBench for example. 
Download MiBench with git:
```sh
$ git clone https://github.com/embecosm/mibench
```
