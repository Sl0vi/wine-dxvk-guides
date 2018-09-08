Sid Meier's Alpha Centauri Planetary Pack (GOG)
================================================================================

- Version: 2.0.2.23 (GOG)
- Wine: 3.15-staging 32 bit
- DXVK: None

Guide
--------------------------------------------------------------------------------

Create a 32-bit wineprefix.

Open a terminal. Create a directory where you want your 32 bit wine prefix to be
installed.

Set your wine environment variables:

    export WINEPREFIX=%full-path-to-directory%
    export WINEARCH=win32

Next run the installer from the terminal where you set the wine environment
variables.

    wine setup_sid_meiers_alpha_centauri_2.0.2.23.exe

Install the game, the installer should work without issues.

After the game is installed, navigate to the directory where you installed the
game and locate the 'Alpha Centauri.ini' file and open it with wine notepad.

You need to set directdraw to 0 for the game to work with modern resolutions.

Add the following line to the bottom of the ini file:

    directdraw=0

That's it.

Launch terran.exe in your terminal for normal Alpha Centauri and terranx.exe for
Alien Crossfire.

