Call of Duty World at War
================================================================================

- Version: 1.7
- Wine: 3.15-staging 64-bit
- dxvk: 0.71

Synopsis
--------------------------------------------------------------------------------

The game is quite difficult to get properly installed and an override is needed
to fix sound ingame. However, once everything is installed the game runs
flawlessly.

Guide
--------------------------------------------------------------------------------

Create a temporary wine prefix. The installer constantly fails and you might
need to attempt the installation process several times, however, the only way
to reattempt installation is by doing it in a new prefix.

It is therefore a good idea to start with a temporary prefix that you can just
delete if you need to attempt to run the installer again. The installer also
seems to be a bit more stable in 32-bit prefixes, but this should not be
required.

### Initial installation ###

First copy the entire contents of your disc to your harddrive and run setup.exe
from where you copied the disc contents to. This is necessary or the
installation will fail before the needed folders and registry entries are
created.

If the installation succeeds, then congratulations! Skip the "Fixing the broken
installation" section of this guide.

### Fixing the broken installation ###

If the installation crashes, then don't panic. This is normal and expected. As
long as the installer created the game folder in your wine prefix and added the
needed registry keys to the Windows Registry, you can perform the final steps
needed manually.

If you decide to create a new wine prefix, then copy the game folder from the
prefix with the broken installation to the new one.

Next open regedit with the following command:

    wine regedit

Navigate to HK_LOCAL_MACHINE\Software\Activion if using a 32-bit prefix or to
HK_LOCAL_MACHINE\Software\Wow6432Node\Activion if using a 64-bit prefix.

Export the Activision node to a registry file.

You can then import your registry keys to the registry on the wine prefix where
you want the game installed.

You will have to edit the location of the keys if your moving the game to from
32 bit to 64 bit or the other way around.

You will also need to adjust the paths in the registry if you are moving the
game to a different folder.

The registry file is just a text file and you can edit it with a text editor.

Look at the codwaw.reg file for an example registry file that will add the
correct registry keys for both 32 and 64 bit prefixes.

I have removed my CD-Key from the registry file, you will need to use your own
CD-Key.

Next go to the folder where you copied the contents of the disc to.

Copy the contents of Docs/ENU/ to a folder called Docs in the folder where you
installed the game.

Next copy the contents of Setup/Data/ directly to the folder where you installed
the game.

You should now have a working installation of the game in your Wine prefix.

### Apply patches ###

Apply the patches in this exact order:

- CoDWaW-1.2-PatchSetup.exe
- CoDWaW-1.2-1.4-PatchSetup.exe
- CoDWaW-1.4-1.5-PatchSetup.exe
- CoDWaW-1.5-1.6-PatchSetup.exe
- CoDWaW-1.6-1.7-PatchSetup.exe

The patch installers should all run without any issues in Wine.

### Fix sound ###

The sound in the game doesn't work properly right out of the box. You will have
sound during cutscenes but there is no sound ingame.

To fix this open up winecfg and add the following library override:

- xaudio2_0 (native, builtin)

### Final fixes ###

The game also seems to run the most stable with compatibility mode set to
Windows XP. (Not necessary if you are not encountering any issues)

The game also doesn't seem to detect the disc drive properly in Wine so you will
need to obtain and apply a no-cd/dvd fix.

That's it, after these fixes the game should run flawlessly in Wine.

