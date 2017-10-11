### **Installing Python**

###### *This step is ONLY required if you want to use the scripts included with this guide.* ###### 

If you already have Python 3.6.0 or greater, or you do not wish to use the included scripts, you can skip to the next section of the guide.

Optionally you can use the latest release of Hakchi2 or manually hex edit the ROM headers/footers (*but the later is beyond the scope of this guide*). 

The installed Python version must be version 3.6.0 or above and is available [HERE](https://www.python.org/downloads/release/python-363/). 
2.7 has been tested and is confirmed not working. 3.6.0 and greater have been tested and are confirmed working up to 3.6.3.

Let's see if Python is installed first.
To get to the command line, open the Windows Start menu and type <kbd>command</kbd> in the search bar. Select <kbd>Command Prompt</kbd> from the search results.

In the Command Prompt window you just opened, type the following and press Enter.

<kbd>C:\>python</kbd>

If Python is installed and in your path, then this command will run python.exe and show you the version number.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_03.png "Example 3")

Otherwise, you will see:

<kbd>python is not recognized as an internal or external command, operable program or batch file.</kbd>

In this case, you need to download and install Python [3.6.3](https://www.python.org/downloads/release/python-363/) and then add it to your [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path).

Download and install Python [3.6.3](https://www.python.org/downloads/release/python-363/) for Windows

Find and download the Windows installer file that matches your system.

Open the installer to start the installation wizard.
Follow the instructions and make a note of where Python is installed on your system.

**When installing Python there is an option to add it to the path, if you checked that box you can skip ahead, but if you run into any issues try the instructions below.**

Add Python to [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path)

In the Start menu, search for <kbd>advanced system settings</kbd> and select <kbd>View advanced system settings</kbd>.

In the window that appears, click `Environment Variables` near the bottom right.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_01.png "Example 1")

In the next window, find and select the user variable named Path and click `Edit` to change its value. The value for this variable is a semi-colon-delimited list of file locations.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_02.png "Example 2")

Scroll to the end of the value, add a semi-colon, and then add the path of the folder containing python.exe. On newer versions of Windows, editing PATH will show a list. Just add said path as an entry at the end.

(If you do not know where your python.exe is, you can search for it. Instructions below)

Click OK to save this change.

If you do not have a `user variable` named Path, click the New… button.

Add a variable named Path and make its value the absolute path of the folder containing your python.exe.

**Finding python.exe**

If you do not know where Python was installed, search for `python.exe` in the Windows menu.

Right-click the file name in the results, select Properties, and find Location.

Copy the location and add it to your path variable.

Confirm addition to path

Open a new command prompt and re-run the original command:

<kbd>C:>python</kbd>

to confirm that Python 3.6.0 is installed and added to your path.

Now that that's done you can move onto the next part of the guide...
