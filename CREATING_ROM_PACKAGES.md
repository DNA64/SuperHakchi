### **Creating a ROM Package**


Now that you have the folder, and the ROM, we need to create the .desktop file and the images. It's these files that can end up giving you C7 and C8 errors so keep that in mind when transferring files. More on this below

Each ROM file requires (2) images. The main boxart image `CLV-X-XXXXX.png` 228` x `160` (`228` x `204` for fullsize), and the thumbnail image `CLV-X-XXXXX_small.png` `40` x `28`. You'll have to google the box art for each game and then resize it accordingly, make sure to save them as `.png</kbd>. I highly recommend the FREE graphic editing program [Paint.net](http://getpaint.net). I've written a script as mentioned above to help you with file and folder names as well as converting the ROM files to <kbd>.sfrom</kbd>, you can download that [HERE](https://mega.nz/#!349ywCwD!waGkuajIA_6Ikz4VpP52K8UGDaR5DhuTQSoIXW3mgro) if you like. If you're not using the script you'll need to create a folder for each game using the same naming scheme `CLV-X-XXXXX`, where (XXXXX) is a unique nameID using only Numbers and Capital letters. **Example:** `CLV-X-DNA64`

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
* CLV-P-DNA64.png
* CLV-P-DNA64_small.png
* CLV-P-DNA64.desktop
* CLV-P-DNA64.sfrom

Now the moment you've been waiting for, let's see if it works!
