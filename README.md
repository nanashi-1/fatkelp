# fatkelp

`fatkelp` is a program that forwards events from /dev/input/eventX to /dev/uinput and also remap keys

## Usage

### Redirect second keyboard to /dev/uinput

Find the id of the second keyboard

## Installation

Run the following command as root(`su` or `sudo`)

~~~ bash
curl https://raw.githubusercontent.com/algames2019/fatkelp/main/installer.sh > installer.sh; chmod +x installer.sh; ./installer.sh
~~~

### Install dependencies

~~~ sh
pip install evdev
~~~
