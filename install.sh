#split repo files
#split -b 100m -d -a 2 repos.tar.gz repos.tar.gz.

#join files
set -x
set -e
mkdir -p .local/straight
cat repos.tar.gz.* >.local/straight/repos.tar.gz
cd .local/straight
tar zxf repos.tar.gz