### **Configuring the SNES Classic for new ROMS**

The first thing you should to do is create (2) backups of the <kbd>b0000_defines</kbd> file located in <kbd>/var/lib/hakchi/rootfs/etc/preinit.d/</kbd>. Keep one someplace safe with your Kernel dump and rename it <kbd>b0000_defines.bkp</kbd> so you don't mix them up as you'll need it if you ever want to switch back to the original games folder. 

Next we're going to edit the other <kbd>b0000_defines</kbd> file you downloaded, You can edit this file using Notepad++ to match the one below. All we're doing is changing the <kbd>gamepath=</kbd> to our new directory since we don't have write access to the default location. Make sure after you save it there's no extension like <kbd>.txt</kbd> on the end.
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

Now that you've edited the <kbd>b0000_defines</kbd> file, you can copy the modified file back to the SNES using Filezilla or other FTP client.
Leave your SNES ON at this point, as if you shut the system down, *no games will show up as we're pointing the system to a different directory that we haven't yet added games too. DON'T PANIC! Now let's get some games ready!

**The latest build of Hakchi2 will create a symlink to the original game directory vs copying the games.*
