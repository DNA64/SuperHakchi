### **Converting SNES games from .smc/.sfc to .sfrom format**

You may want to check [this list](https://docs.google.com/spreadsheets/d/12HKfz4ZQBy6Ip5awvh8t2aV5cVswYlnsdKxn9xoIW2Y/) to ensure compatibility and that no patching is needed before converting games to .sfrom.


A fellow GBATemp user named [Valter](http://gbatemp.net/members/valter.381712/) created and shared a [set](https://gist.github.com/anpage/4834433944a2875ee6d4cbb5786c6bf7) of python scripts on his [gist](https://gist.github.com/anpage/) page for converting games to the supported format <kbd>.sfrom</kbd>. I've incorporated his script into my program and it's now automated.

**UPDATE: Oct 7th, 2017**
Here's a **new and improved script** called <kbd>bulkconvert.py</kbd> which you can view/get from my gist account [HERE](https://gist.github.com/DNA64/31a7b6914fde34743dc7144fd778994a). It's able to process multiple files at once. I'll update the guide for this soon.

To run the <kbd>sfc2sfrom.py</kbd> script you can use one of the <kbd>.bat</kbd> file programs I wrote below. These will automatically convert <kbd>.smc</kbd> and <kbd>.sfc</kbd> ROMS into the required <kbd>.sfrom</kbd> format and name them appropriately as well (This is only required when using the native emulator <kbd>canoe</kbd>. You do not need to convert ROMS if you're using RetroArch, but that is again beyond the scope of this guide). No special naming of the ROMS is required on your part, the script will find and rename them automatically. Make sure they're **not** compressed! only <kbd>.smc</kbd> or <kbd>.sfc</kbd> files work right now.

I've included (2) batch scripts <kbd>*.bat</kbd> in the download for converting SNES games. I recommend running <kbd>SNESCE_ROM_TOOL[DNA64].bat</kbd> first to ensure that everything is properly configured as I've incorporated some error checking in this one and it will tell you what the problem is if you have one. The second script is the 1 click solution for fast <kbd>1-click-convert[DNA64].bat</kbd>. A popup may appear for a moment, but will close as soon as the program ends, this is normal.

The program will output the new <kbd>.sfrom</kbd> file and move it into a folder under the same name.

**Example:** *CLV-X-SHIBE > CLV-X-SHIBE.sfrom*

The program will then move the <kbd>.sfc</kbd> file into a folder called <kbd>sfcfiles</kbd> along with a matching text file so you know which game is which. This is really sloppy I know, but it works and I plan on fixing it soon. Really you can just consider this a trash folder since you no longer need these, unless you do .. :P
