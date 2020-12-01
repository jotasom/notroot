# Not root, install APT packages without root access

![Notroot](notroot.png)

This simple tool allow you to install apt packages without root
access.

## Installing in Business Application Studio(BAS)

First, clone this repository:

```
cd /home/user
git clone https://github.com/andrewlunde/notroot.git
```

Then, modify your `.bashrc` file by running these commands.
```
cd notroot
cat add2bashrc.txt >> ~/.bashrc
```
You'll need to exit the current terminal and reopen a new one to affect the changes.
```
exit
```

## Prepare APT folders

In order for your to run apt-get as a non-root user, you'll need to prepare some directories locally and direct apt to use them.

Run this batch file to make these preparations.

```
cd /home/user/notroot
./prepapt
```

As a test this script installs the jq tool which has a few dependencies.  If all is working well, you should see the following in the output.
```
[NOTROOT] Installing jq from apt...
[NOTROOT] Scanning dependencies with apt-rdepends...
Reading package lists... Done
Building dependency tree       
Reading state information... Done
[NOTROOT] jq is not present on the system, installing it locally
Get:1 http://deb.debian.org/debian buster/main amd64 jq amd64 1.5+dfsg-2+b1 [59.4 kB]
Fetched 59.4 kB in 0s (150 kB/s)
[NOTROOT] libjq1 is not present on the system, installing it locally
Get:1 http://deb.debian.org/debian buster/main amd64 libjq1 amd64 1.5+dfsg-2+b1 [124 kB]
Fetched 124 kB in 0s (303 kB/s)  
[NOTROOT] libonig5 is not present on the system, installing it locally
Get:1 http://deb.debian.org/debian buster/main amd64 libonig5 amd64 6.9.1-1 [171 kB]
Fetched 171 kB in 0s (512 kB/s)    
```

If you do not, then something went wrong.  Go back and check the prior steps.

## Usage

Simply run something like this:

    notroot install htop

This will download and extract packages.

## Support 

Note that this is a minimalist script designed to install libraries 
and binaries without root access, the following are supported:

* Binaries (using `PATH`)
* Includes (using `CPATH`)
* Libraries (using `LIBRARY_PATH` and `LD_LIBRARY_PATH`)

