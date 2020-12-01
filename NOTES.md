notroot install apt-rdepends // Not installing perl parts properly...

notroot install build-essential

cpan

// you need to configure a local Perl library directory
// Let it configure things for local.

cpan[1]> install AptPkg::Config    

notroot install linux-libc-dev
notroot install liblocale-gettext-perl
notroot install readline-common 
notroot install bzip2 

notroot install manpages 

notroot install xz-utils 
notroot install binutils-common 
notroot install libbinutils 
notroot install binutils-x86-64-linux-gnu
notroot install binutils 
notroot install libc-dev-bin 
notroot install libc6-dev 
notroot install libisl19 
notroot install libmpfr6 
notroot install libmpc3 
notroot install cpp-8 
notroot install cpp                                   
notroot install libcc1-0                                               
notroot install libgomp1                                                 
notroot install libitm1                                                 
notroot install libatomic1                                                 
notroot install libasan5                                                  
notroot install liblsan0                                                     
notroot install libtsan0                                                       
notroot install libubsan1                                                  
notroot install libmpx2                                            
notroot install libquadmath0                                                 
notroot install libgcc-8-dev                                              
notroot install gcc-8                                                
notroot install gcc                                                   
notroot install libstdc++-8-dev                                          
notroot install g++-8                                                    
notroot install g++                                                    
notroot install make                                              
notroot install libdpkg-perl                                                 
notroot install dpkg-dev                                                
notroot install build-essential                                        
notroot install libassuan0                                      
notroot install libreadline7                                                     
notroot install gpgconf                                             
notroot install libksba8                                                     
notroot install libnpth0                                                 
notroot install dirmngr                                           
notroot install libfakeroot                                                 
notroot install fakeroot                                                   
notroot install gnupg-l10n                                             
notroot install gnupg-utils                                       
notroot install libsqlite3-0        ???                                     
notroot install gpg                                                 
notroot install pinentry-curses                                          
notroot install gpg-agent                                           
notroot install gpg-wks-client                                       
notroot install gpg-wks-server                                      
notroot install gpgsm                                          
notroot install gnupg                                                
notroot install libalgorithm-diff-perl                                      
notroot install libalgorithm-diff-xs-perl                                   
notroot install libalgorithm-merge-perl                                         
notroot install libfile-fcntllock-perl                                
notroot install manpages-dev                                                 

apt-get install python3-pip

notroot install libpython3.7-minimal 
notroot install python3.7-minimal 
notroot install python3-minimal 
notroot install mime-support
notroot install libmpdec2 
notroot install libpython3.7-stdlib 
notroot install python3.7 
notroot install libpython3-stdlib 
notroot install python3 
notroot install libmagic-mgc 
notroot install libmagic1 
notroot install file 

apt-get install python3-pip

notroot install python3-lib2to3 
notroot install python3-distutils 
notroot install dh-python 
notroot install libglib2.0-0 
notroot install libexpat1-dev 
notroot install libglib2.0-data 
notroot install libpython3.7-dev 
notroot install libpython3-dev                                              
notroot install libxml2                                            
notroot install python-pip-whl                                               
notroot install python3-asn1crypto                                       
notroot install python3-cffi-backend                                        
notroot install python3-crypto                                      
notroot install python3-six                                                
notroot install python3-cryptography                                   
notroot install python3-dbus                                                   
notroot install python3.7-dev                                          
notroot install python3-dev                                              
notroot install python3-entrypoints                                              
notroot install python3-gi                                             
notroot install python3-secretstorage                                         
notroot install python3-keyring                                                
notroot install python3-keyrings.alt                                            
notroot install python3-pip                                                       
notroot install python3-pkg-resources                                          
notroot install python3-setuptools                                       
notroot install python3-wheel                                               
notroot install python3-xdg                                                  
notroot install shared-mime-info                                          
notroot install xdg-user-dirs                                              

/home/user/notroot/usr/bin/python3
/home/user/notroot/usr/bin/pip3

#!/bin/bash
export PYTHONHOME=/home/user/notroot/usr
export PYTHONPATH=$PYTHONHOME/lib/python3.7
unset PYTHONSTARTUP
export PATH=$PYTHONHOME/bin:$PATH
export PYTHONUSERBASE=/usr/sap/HXE/HDB00/neural-networks-and-deep-learning/src/vendor

cd /home/user/projects/mta_python/python
python3 /home/user/notroot/usr/bin/pip3 install -t vendor -r requirements.txt

python3 /home/user/notroot/usr/bin/pip3 install -r requirements.txt


//Lastest .bashrc

export APT_CONFIG=/home/user/notroot/apt.conf
source "$HOME/notroot/bashrc"

PATH="/home/user/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/user/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/user/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/user/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/user/perl5"; export PERL_MM_OPT;

export PYTHONHOME=/home/user/notroot/usr
export PYTHONPATH=$PYTHONHOME/lib/python3.7

PATH="/home/user/.local/bin":${PATH}; export PATH;

alias pip="/home/user/notroot/usr/bin/python3 /home/user/notroot/usr/lib/python3/dist-packages/pip"
alias vi="vim"



cd /home/user/notroot/usr/bin
ln -s python3 python

mkdir -p /tmp/apt/lists/partial

apt-get update

notroot install python3-ipykernel

// Base Python

notroot install libpython3.7-minimal
notroot install python3.7-minimal
notroot install python3-minimal
notroot install mime-support
notroot install libmpdec2
notroot install readline-common
notroot install libreadline7
notroot install libsqlite3-0
notroot install libpython3.7-stdlib
notroot install python3.7
notroot install libpython3-stdlib
notroot install python3
notroot install bzip2
notroot install libmagic-mgc
notroot install libmagic1
notroot install file
notroot install xz-utils

// Try to get recursive installs working

notroot install libapt-pkg-perl

notroot install apt-rdepends