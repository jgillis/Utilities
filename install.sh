this=`pwd`
echo "export PATH=\$PATH:$this" > bashrc
echo "export MANPATH=\$MANPATH:$this/man" >> bashrc
export PATH="$PATH:."
registerbashrc bashrc
sudo aptitude -y install txt2man
make
