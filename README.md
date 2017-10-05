# SuperHakchi
## A beginners guide to installing games on the SNES Classic.
###### This guide is for Windows users only at this time.

### *ATTENTION! / WARNING! / CAUTION! / DISCLAIMER

#### Use this `Unofficial` guide at your own risk!

*I will not be held responsible for any damage(s) that occur if you choose to continue and follow this guide. If you follow this guide properly and without skipping any steps you shouldn't have anything to worry about.*


#### Installing a custom kernel on your SNESmini for ftp access
1. Download, Install and Launch hakchi 2.18 using the 2.17d [hakchi2_web_installer.exe](https://github.com/ClusterM/hakchi2/releases).

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_web_installer.png "Example 1")

2. Select `Kernel` from the menu bar at the top of the hakchi window. 

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_kernel.png "Example 2")

3. Select `Dump Kernel` and proceed with the on screen instructions. Leave Hakchi open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_dump.png "Example 3")

The `Dump` folder with the kernel backup will be located in the Hakchi2 folder in “My Documents\hakchi2”.

4. Select `Kernel` from the menu bar at the top of the hakchi window and select `Flash custom kernel` and proceed with the on screen instructions. Leave Hakchi open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_flash_custom_kernel.png "Example 4")

5. Select `Tools` from the menu bar at the top of the hakchi window and ensure that there is a check-mark next to “FTP server on `ftp://root:clover@127.0.0.1:1021`”. 
Leave Hakchi open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp.png "Example 5")

6. Install/Launch [FileZilla](https://filezilla-project.org/) or use your preferred FTP client.

Enter in the following information and connect.

```
Host: 127.0.0.1
Username: root
Password: clover
Port: 1021
```
If all went well you should see the SNES Classics file system in the FTP client.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_filezilla.png "Example 6")


#### Installing and Setting up Python (Required for Scripts)

You’ll need to have Python installed to use the included python scripts, optionally you can manually hex edit the rom headers/footers, but that is beyond the scope of this guide. The installed Python version must be version 3.6.0 and is available at the bottom of [This page](https://www.python.org/downloads/release/python-360/). 2.7 has been tested and doesn’t work, 3.6.0 or above should work, but If you have issues try 3.6.0 specifically.

To get to the command line, open the Windows menu and type `command` in the search bar. Select Command Prompt from the search results.

In the Command Prompt window, type the following and press Enter.

`C:\>python`
If Python is installed and in your path, then this command will run python.exe and show you the version number.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_03.png "Example 3")

Otherwise, you will see:

'python' is not recognized as an internal or external command, operable program or batch file.
In this case, you need to download and install Python [3.6.0](https://www.python.org/downloads/release/python-360/) and then add it to your [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path).

Download and install Python [3.6.0](https://www.python.org/downloads/release/python-360/) for Windows

Find and download the Windows installer file that matches your system.

Open the file to start the installation wizard.

Follow the instructions and make a note of where Python is installed on your system.

Add Python to [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path)

In the Start menu, search for `advanced system settings` and select `View advanced system settings`.


In the window that appears, click Environment Variables… near the bottom right.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_01.png "Example 1")

In the next window, find and select the user variable named Path and click Edit… to change its value. The value for this variable is a semi-colon-delimited list of file locations.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_02.png "Example 2")

Scroll to the end of the value, add a semi-colon, and then add the location of python.exe. (If you do not know where your python.exe is, you can search for it.)

Click OK to save this change.

If you do not have a user variable named Path, click the New… button.

Add a variable named Path and make its value the location of your python.exe.

*Finding python.exe*

If you do not know where Python was installed, search for `python.exe` in the Windows menu.

Right-click the file name in the results, select Properties, and find Location.

Copy the location and add it to your path variable.

Confirm addition to path

Open a new command prompt and re-run the original command:

`C:>python`

to confirm that Python 3.6.0 is installed and added to your path.

Now that that's done you can move onto the next part of the guide...

####Converting SNES games from .smc/.sfc to .sfrom format

W.I.P

Questions? Comments? Let me know!
