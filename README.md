# fatkelp

`fatkelp` is a program that forwards events from /dev/input/eventX to /dev/uinput and also remap keys

## Usage

### Redirect second keyboard to /dev/uinput

Find the id of the second keyboard, in this case it is 15

~~~ bash
 nanashi$ xinput list
⎡ Virtual core pointer                          id=2    [master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
⎜   ↳ SIGMACHIP Usb Mouse                       id=9    [slave  pointer  (2)]
⎜   ↳ SEMICO USB Keyboard Consumer Control      id=11   [slave  pointer  (2)]
⎜   ↳ SEMICO USB Keyboard Consumer Control      id=16   [slave  pointer  (2)]
⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
    ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
    ↳ Power Button                              id=6    [slave  keyboard (3)]
    ↳ Video Bus                                 id=7    [slave  keyboard (3)]
    ↳ Power Button                              id=8    [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard                       id=10   [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard System Control        id=12   [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard Consumer Control      id=14   [slave  keyboard (3)]
    ↳ C-Media Electronics Inc. USB Audio Device id=13   [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard                       id=15   [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard Consumer Control      id=17   [slave  keyboard (3)]
    ↳ SEMICO USB Keyboard System Control        id=18   [slave  keyboard (3)]
~~~

Deattach second keyboard

~~~ bash
xinput float 15
~~~

Find keyboard, in this case it is 15

~~~ bash
nanashi$ sudo fatkelp -l
[sudo] password for nanashi: 
15       SEMICO USB Keyboard System Control
14       SEMICO USB Keyboard Consumer Control
13       SEMICO USB Keyboard
2        C-Media Electronics Inc. USB Audio Device
12       HDA ATI HDMI HDMI/DP,pcm=9
11       HDA ATI HDMI HDMI/DP,pcm=8
10       HDA ATI HDMI HDMI/DP,pcm=7
9        HDA ATI HDMI HDMI/DP,pcm=3
8        PC Speaker
7        Video Bus
6        SEMICO USB Keyboard System Control
5        SEMICO USB Keyboard Consumer Control
4        SEMICO USB Keyboard
3        SIGMACHIP Usb Mouse
1        Power Button
0        Power Button
~~~

Forward /dev/input/event15 to /dev/uinput

~~~ bash
sudo fatkelp -x 15
~~~

## Installation

Run the following command as root(`su` or `sudo`)

~~~ bash
curl https://raw.githubusercontent.com/algames2019/fatkelp/main/installer.sh > installer.sh; chmod +x installer.sh; ./installer.sh
~~~

### Install dependencies

~~~ sh
pip install evdev
~~~
