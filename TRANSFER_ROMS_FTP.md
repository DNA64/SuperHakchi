### **Transferring ROMS to the SNES Classic via FTP**

Launch Hakchi2 if it's not already running and select <kbd>Tools</kbd> from the menu bar at the top of the Hakchi2 window and ensure that there is a check-mark next to <kbd>FTP server on ftp://root:clover@127.0.0.1:1021</kbd>. 
Leave Hakchi2 open or the FTP won't be able to connect.

![Failed to load image](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_ftp.png "Example 5")

Launch [FileZilla](https://filezilla-project.org/) or use your preferred FTP client.

Enter in the following information and connect.

```
Host: 127.0.0.1
Username: root
Password: clover
Port: 1021
```
If all went well you should see the SNES Classics file system in the FTP client.

![Failed to load image](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_filezilla.png "Example 6")

In the FTP client Navigate to <kbd>/var/lib/hakchi/rootfs/usr/share/games/</kbd> and copy the game folder we just created (CLV-P-DNA64) onto the SNES Classic system. Once the transfer completes power the SNES Classic off, wait a moment and then turn it back on. Browse the list for your newly added game!

If you don't see it, double check the <kbd>.desktop</kbd> file and make sure everything is correct. If it still doesn't show up, review the guide or try a different game. See below for more on this.

Now repeat the process to install more games. - Enjoy! :)
