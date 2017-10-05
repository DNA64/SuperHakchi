# SuperHakchi
## A beginners guide to installing games on the SNES Classic.

### *ATTENTION! / WARNING! / CAUTION! / DISCLAIMER

#### Use this guide at your own risk!

*I will not be held responsible for any damage(s) that occur if you choose to continue and follow this guide. If you follow this guide properly and without skipping any steps you shouldn't have anything to worry about.*


#### Installing a custom kernel on your SNESmini for ftp access
1. Download, Install and Launch hakchi 2.18 using the 2.17d [hakchi2_web_installer.exe](https://github.com/ClusterM/hakchi2/releases).

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_web_installer.png "Example 1")

2. Select “Kernel” from the menu bar at the top of the hakchi window. 

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_kernel.png "Example 2")

3. Select “Dump Kernel” and proceed with the on screen instructions. Leave Hakchi open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_dump.png "Example 3")

The “Dump” folder with the kernel backup will be located in the Hakchi2 folder in “My Documents\hakchi2”.

4. Select “Kernel” from the menu bar at the top of the hakchi window and select “Flash custom kernel” and proceed with the on screen instructions. Leave Hakchi open.

![alt txt](https://github.com/DNA64/SuperHakchi/blob/master/hakchi2_flash_custom_kernel.png "Example 4")

5. Select “Tools” from the menu bar at the top of the hakchi window and ensure that there is a check-mark next to “FTP server on `ftp://root:clover@127.0.0.1:1021`”. 
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
