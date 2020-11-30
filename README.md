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

Then, add this line to your `.bashrc` file:
```
export APT_CONFIG=/home/user/notroot/apt.conf
source "$HOME/notroot/bashrc"
```

```
cd notroot
cat add2bashrc.txt >> ~/.bashrc
exit
```

(You can adapt the path to the `notroot` director
Then, reload bash.

## Prepare APT folders
```
mkdir -p /tmp/apt/lists
mkdir -p /tmp/apt/arch
mkdir -p /tmp/apt/src 
mkdir -p /tmp/apt/pkg


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

