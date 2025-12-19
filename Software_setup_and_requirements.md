# OBS-Lisbon-2025
Repository for OBS workshop in Lisbon 2025 at IASPEI Early Career Scientists School



## Software requirements

Specific software will be required to be installed in your computers ahead of the Summer School.
The installation procedure is mostly the same for Linux, Mac, or Windows.
On Windows, you might have some previous steps (see the end of this guide).

1 - install miniconda
Follow the instructions here: 
https://www.anaconda.com/docs/getting-started/miniconda/install#quickstart-install-instructions

Make sure you follow the instructions for your type of computer.

WINDOWS users only: If you are using a windows machine and have problems installing it, please see: https://boyuan99.github.io/stat530-bioinformatics/files/Setting-Up-Conda-in-Windows-A-Complete-Guide.html

Once conda is installed, your terminal should now say (base) before the usual prompt.

2 - Create the main workshop environment. On a terminal, type the following:

```
conda create -n workshop -c conda-forge python==3.12 obspy pandas jupyterlab
conda activate workshop
pip install git+https://github.com/schaefferaj/stdb
pip install geographiclib
pip install git+https://github.com/nfsi-canada/orientpy
pip install tiskitpy==2.1.0
```

If you reached this far without errors, you'll have most of the software required for the workshop.
Possible errors might stem from not having git on your system. If that is the case, several tutorials on how to install it are available online.

3 - install ISP

Follow the instructions here to the letter:

https://projectisp.github.io/ISP_tutorial.github.io/install/

If all goes well, when you type isp on a new terminal, a GUI should appear.

4 - install snuffler:

```
conda create -n snuffler python==3.12
conda activate snuffler
pip install pyrocko
conda install conda-forge::pyqt
```

A GUI should appear when you type snuffler on a terminal with the snuffler environment activated.


# WINDOWS users only
Windows Subsystem for Linux (WSL) package needs to be installed. If it is not installed, run the following command and the restart the computer:

```
wsl --install
```

Update to WSL2 if you are using Windows 10:

```
wsl --set-default-version 2
```

For ISP, you will also need to run the following commands:

```
sudo apt update
sudo apt install libqt5x11extras5
sudo apt-get install libpulse-dev
```
