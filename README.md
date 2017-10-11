## A detailed guide to installing games on the SNES Classic by DNA64.
###### This guide is written for Windows users only at this time, however Mac and Linux users may be able to follow along using similar methods.

# HAKCHI2 OFFICIALLY RELEASED!
### Get the official Hakchi release [HERE](https://github.com/ClusterM/hakchi2/releases). 
Development of this guide will continue as part of something larger, more on that soon in the usual places.

### Index:
[**Disclaimer**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#attention--warning--caution--disclaimer)

[**Installing a custom kernel on your SNES Classic for ftp access**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#installing-a-custom-kernel-on-your-snes-classic-for-ftp-access)

[**Installing and Setting up Python (Required for Scripts)**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#installing-and-setting-up-python-required-for-scripts)

[**Configuring the SNES Classic for new ROMS.**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#configuring-the-snes-classic-for-new-roms)

[**Converting SNES games from .smc/.sfc to .sfrom format**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#converting-snes-games-from-smcsfc-to-sfrom-format)

[**Creating a ROM Package**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#creating-a-rom-package)

[**Transferring ROMS to the SNES Classic**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#transferring-roms-to-the-snes-classic)

[**Oops! I think I broke it?**](https://github.com/DNA64/SuperHakchi/blob/master/README.md#oops-i-think-i-broke-it)

### ATTENTION! / WARNING! / CAUTION! / DISCLAIMER!

#### Use this `Unofficial` guide at your own risk!

*I will not be held responsible for any damage(s) that occur if you choose to continue and follow this guide. If you follow this guide properly and without skipping any steps you shouldn't have anything to worry about.* If you have any concern about bricking your system STOP! DO NOT FOLLOW THIS GUIDE! Use the official release! As much as I consider this a beginners guide, it might still be advanced for some of you. TIP: Always read ahead before trying something so you don't mistake explanations for instructions ;)

This guide may look overwhelming to some but as always I try to guide you through every step of the way, in as much detail as possible, so that anyone can follow my guides. If you don't already have [Notepad++](https://notepad-plus-plus.org/) installed, I highly recommend it! This guide assumes you do. If you don't just use any text editor.

**Update:** 
This guide assumes you're using using the Official Hakchi2 Web Installer, not a modified version. 
Please keep this in mind when having issues. Also as progress continues so quickly, some parts of this guide may become outdated or no longer required. 

### Installing a custom kernel on your SNES Classic for ftp access
1. Download, Install and Launch the [hakchi2_web_installer.exe](https://github.com/ClusterM/hakchi2/releases).

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_web_installer.png "Example 1")

2. Select `Kernel` from the menu bar at the top of the Hakchi2 window. 

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_kernel.png "Example 2")

3. Select `Dump Kernel` and proceed with the on screen instructions. Leave Hakchi2 open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_dump.png "Example 3")

The `Dump` folder with the kernel backup will be located in the Hakchi2 folder in “My Documents\hakchi2”.

4. Select `Kernel` from the menu bar at the top of the Hakchi2 window and select `Flash custom kernel` and proceed with the on screen instructions. Leave Hakchi2 open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_flash_custom_kernel.png "Example 4")

5. Select `Tools` from the menu bar at the top of the Hakchi2 window and ensure that there is a check-mark next to “FTP server on `ftp://root:clover@127.0.0.1:1021`”. 
Leave Hakchi2 open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp.png "Example 5")

6. Unselect the Original 30 games! NEVER SYNC THESE TO YOUR SNES!

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_original30.png "Example 6")

7. Install/Launch [FileZilla](https://filezilla-project.org/) or use your preferred FTP client.

Enter in the following information and click connect.

```
Host: 127.0.0.1
Username: root
Password: clover
Port: 1021
```
If all went well you should see the SNES Classics file system in the FTP client.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_filezilla.png "Example 7")

8. Since we have the FTP client open, lets go ahead and make a quick change so we don't have issues when transfering files. Click on the edit button at the top of FileZilla and Select Settings. A new settings window will popup.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp_settings.png "Example 8")


9. On the menu on the left click on "Transfers" and then under Concurrent transfers set the maximum simultaneous transfers to [1].
![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp_concurrent.png "Example 9")


### Installing and Setting up Python (Required for Scripts)

You’ll need to have Python installed to use the included python scripts, optionally you can manually hex edit the ROM headers/footers, but that is beyond the scope of this guide. If you already have Python 3.6.0 or greater you can skip to the next section of the guide.

The installed Python version must be version 3.6.0 or above and is available at the bottom of this [page](https://www.python.org/downloads/release/python-360/). 
2.7 has been tested and is confirmed not working. 3.6.0 and greater have been tested and are confirmed working up to 3.6.3.

To get to the command line, open the Windows Start menu and type `command` in the search bar. Select `Command Prompt` from the search results.

In the Command Prompt window, type the following and press Enter.

`C:\>python`

If Python is installed and in your path, then this command will run python.exe and show you the version number.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_03.png "Example 3")

Otherwise, you will see:

```
python is not recognized as an internal or external command, operable program or batch file.
```
In this case, you need to download and install Python [3.6.0](https://www.python.org/downloads/release/python-360/) and then add it to your [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path).

Download and install Python [3.6.0](https://www.python.org/downloads/release/python-360/) for Windows

Find and download the Windows installer file that matches your system.

Open the file to start the installation wizard.
Follow the instructions and make a note of where Python is installed on your system.

**When installing Python there is an option to add it to the path, if you checked that box you can skip ahead to Configuring the SNES Classic for new ROMS.**

Add Python to [path](https://edu.google.com/openonline/course-builder/docs/1.10/set-up-course-builder/check-for-python.html#add-to-path)

In the Start menu, search for `advanced system settings` and select `View advanced system settings`.

In the window that appears, click Environment Variables… near the bottom right.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_python_01.png "Example 1")

In the next window, find and select the user variable named Path and click Edit… to change its value. The value for this variable is a semi-colon-delimited list of file locations.

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

`C:>python`

to confirm that Python 3.6.0 is installed and added to your path.

Now that that's done you can move onto the next part of the guide...

### Configuring the SNES Classic for new ROMS.

The first thing you want to do is create (2) backups of the `b0000_defines` file located in `/var/lib/hakchi/rootfs/etc/preinit.d/`. Keep one someplace safe and rename it `b0000_defines.bkp` so you don't mix them up as you'll need it if you ever want to switch back to the original games folder. 

Next we're going to edit the other `b0000_defines` file you downloaded, You can edit this file using Notepad++ to match the one below. All we're doing is changing the 'gamepath=' to our new directory since we don't have write access to the default location. Make sure after you save it there's **NO** extension like .txt on the end.
```
modname=hakchi
modpath=/$modname
installpath=$mountpoint/var/lib/$modname
firmwarepath=$installpath/firmware
rootfs=$installpath/rootfs
preinit=$rootfs/etc/preinit
preinitpath=$preinit.d
gamepath=/usr/share/games
temppath=/tmp
```

Now that you've edited the `b0000_defines` file, you can copy the modified file back to the SNES using Filezilla or other FTP client.
Leave your SNES ON as at this point if you shut the system down, no games will show up as we're pointing the system to a different directory that we haven't yet added games too. DON'T PANIC! Now let's get some games ready!


### Converting SNES games from .smc/.sfc to .sfrom format

You may want to check [this list](https://www.reddit.com/r/miniSNES/comments/74dc3c/snes_classic_hacking_how_is_the_progress_going/) before continuing to see if your game is working or not. It's not complete, but it should be a good reference for now.


A fellow GBATemp user named [Valter](http://gbatemp.net/members/valter.381712/) created and shared a [set](https://gist.github.com/anpage/4834433944a2875ee6d4cbb5786c6bf7) of python scripts on his [gist](https://gist.github.com/anpage/) page for converting games to the supported format `.sfrom`. I've incorporated that script into my program and it's now automated.

**UPDATE: Oct 7th, 2017**
I've made a **new and improved script** called `bulkconvert.py` which you can view/get from my gist account [HERE](https://gist.github.com/DNA64/31a7b6914fde34743dc7144fd778994a). I'll update the guide for this soon.

To run the `sfc2sfrom.py` script you can use one of the `.bat` file programs I wrote below. These will automatically convert `.smc` and `.sfc` ROMS into the required `.sfrom` format and name them appropriately as well (This is only required when using the native emulator `canoe`. You do not need to convert ROMS if you're using RetroArch, but that is again beyond the scope of this guide). No special naming of the ROMS is required on your part, the script will find and rename them automatically. Make sure they're **not** compressed! only .smc or .sfc files work right now.

I've included (2) .batch scripts in the download for converting SNES games. I recommend running `SNESCE_ROM_TOOL[DNA64].bat` first to ensure that everything is properly configured as I've incorporated some error checking in this one and it will tell you what the problem is if you have one. The second script is the 1 click solution for fast conversions `1-click-convert[DNA64].bat`. A popup may appear for a moment, but will close as soon as the program ends, this is normal.

The program will output the new `.sfrom` file and move it into a folder under the same name.
Example: CLV-X-SHIBE > CLV-X-SHIBE.sfrom

The program will then move the `.sfc` file into a folder called `sfcfiles` along with a matching text file so you know which game is which. This is really sloppy I know, but it works and I plan on fixing it soon. Really you can just consider this a trash folder since you no longer need these, unless you do .. :P

### Creating a ROM Package

*Fixed!: The boxart image sizes are now inline with the original image sizes*

Now that you have the folder, and the ROM, we need to create the .desktop file and the images. It's these files that can end up giving you C7 and C8 errors so keep that in mind when transferring files. More on this below

Each ROM file requires (2) images. The main boxart image `CLV-X-XXXXX.png` `228x160`, and the thumbnail image `CLV-X-XXXXX_small.png` `40x28`. You'll have to google the box art for each game and then resize it accordingly, make sure to save them as `.png`. I highly recomend the FREE graphic editing program [Paint.net](http://getpaint.net). I've written a script as mentioned above to help you with file and folder names as well as converting the ROM files to `.sfrom`, you can download that [HERE](https://mega.nz/#!349ywCwD!waGkuajIA_6Ikz4VpP52K8UGDaR5DhuTQSoIXW3mgro) if you like. If you're not using the script you'll need to create a folder for each game using the same naming scheme `CLV-X-XXXXX`, where (XXXXX) is a unique nameID using only Numbers and Capital letters. *Example: `CLV-X-DNA64`* 

Next you'll want to create a `.desktop` file in Notepad++ or Notepad, any text editor will do. It contains all the information about the ROM. Use the same naming scheme you did with the images. *Example: CLV-X-DNA64.desktop*

I've included a template in the download file. You can also [use this tool](http://astrasealtools.com/misc/snesmini/submit.php) someone created (Credit to follow once I find them) to generate the file.
```
[Desktop Entry]
Type=Application
Exec=/usr/bin/clover-canoe-shvc -rom /usr/share/games/CLV-P-DNA64/CLV-P-DNA64.sfrom --volume 100 -rollback-snapshot-period 600
Path=/var/lib/clover/profiles/0/CLV-P-DNA64
Name=Pilotwings
Icon=/usr/share/games/CLV-P-DNA64/CLV-P-DNA64.png

[X-CLOVER Game]
Code=CLV-P-DNA64
TestID=064
ID=0
Players=1
Simultaneous=0
ReleaseDate=1964-06-04
SaveCount=0
SortRawTitle=pilotwings
SortRawPublisher=Nintendo
Copyright=Nintendo 1964
MyPlayDemoTime=45
```

Replace all instances of the current game `CLV-P-DNA64` with your own unique gameID. And fill out the rest of the information like the games name, publisher, number of players etc. Don't worry if you don't know, just leave it as default.

SaveCount=0 is FALSE
SaveCount=1 is TRUE
Set this to TRUE or FALSE depending on if the game has in game save abilities like Final Fantasy for example.

Example: You should now have a game folder (CLV-P-DNA64) with (4) files.
+ CLV-P-DNA64.png
+ CLV-P-DNA64_small.png
+ CLV-P-DNA64.desktop
+ CLV-P-DNA64.sfrom

Now the moment you've been waiting for, let's see if it works!

### Transferring ROMS to the SNES Classic.

Launch Hakchi2 if it's not already running and select `Tools` from the menu bar at the top of the Hakchi2 window and ensure that there is a check-mark next to “FTP server on `ftp://root:clover@127.0.0.1:1021`”. 
Leave Hakchi2 open or the FTP won't be able to connect.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp.png "Example 5")

Launch [FileZilla](https://filezilla-project.org/) or use your preferred FTP client.

Enter in the following information and connect.

```
Host: 127.0.0.1
Username: root
Password: clover
Port: 1021
```
If all went well you should see the SNES Classics file system in the FTP client.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_filezilla.png "Example 6")

In the FTP client Navigate to `/var/lib/hakchi/rootfs/usr/share/games/` and copy the game folder we just created `CLV-P-DNA64` onto the SNES Classic system. Once the transfer completes power the SNES Classic off, wait a moment and then turn it back on. Browse the list for your newly added game!

If you don't see it, double check the .desktop file and make sure everything is correct. If it still doesn't show up, review the guide or try a different game. See below for more on this.

Now repeat the process to install more games. - Enjoy! :)

### Oops! I think I broke it?
If you get a C7, C8 or other error simply delete the last game you copied over from the system and power the system off. When you turn it back on you shouldn't get an error. You can also try copying and renaming images from a working game to rule out any issues with your images. Compare your `.desktop` file to mine as well. If you do get and error and you don't want to troubleshoot it, you can just flash the original kernel you dumped earlier back to the console using Hakchi2, but before you do that backup your game saves! Some users are reporting loosing game saves after reverting back to the original kernel. Saves can be found in `/var/lib/clover/profiles/0`.

Special Thanks to **[ClusterM](http://clusterrr.com/)** and **[MadMonkey1907](https://www.reddit.com/user/madmonkey1907)** for creating Hakchi2 and devoting so much of their free time to the project and **[Valter](http://gbatemp.net/members/valter.381712/)** for his Python ROM Scripts.

Questions? Comments? Let me know!
