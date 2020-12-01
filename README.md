# Not root, install APT packages without root access

![Notroot](notroot.png)

This simple tool allow you to install apt packages without root
access.

## Installing

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
./prepapt
```

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

