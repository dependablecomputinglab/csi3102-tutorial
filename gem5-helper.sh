if command -v yum > /dev/null; then         ##  CentOS / RHEL
    then sudo yum install -y gcc gcc-c++ make kernel-devel zlib-devel scons m4 swig python-devel
elif command -v apt-get > /dev/null; then   ##  Ubuntu
    then sudo apt-get install -y build-essential g++ zlib1g-dev scons m4 swig python-dev
fi
