Tested on RP3 3B+/4B - Raspbian OS Lite and Full (Bullseye 32-bit)


Step1). Install build tools and Update pip and setuptools:
- sudo apt-get update
- sudo apt-get upgrade
- sudo apt-get install pip
- python3 -m pip install --upgrade pip
- python3 -m pip install --upgrade setuptools
- sudo apt-get install qt5-qmake
- sudo apt-get install qml-module-qtquick-controls qml-module-qtquick-shapes qml-module-qtquick-controls2
- sudo apt-get install python3-pyqt5.qtquick python3-pyqt5.qtwebkit python3-pyqt5.qtmultimedia
- sudo apt-get install gcc python3-dev libcups2-dev
- pip3 install pycups

Step2). Execute GUI on Rpi locally:
- python3 main.py

Note1: Enable OpenGL for QML app by going to raspi-config (Enabled by default on Raspberry Pi 4)
