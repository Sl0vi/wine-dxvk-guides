Supreme Commander: Forged Alliance
================================================================================

- Version: 1.5.3599
- Wine: 3.15-staging 64-bit
- dxvk: 0.71

Synopsis
--------------------------------------------------------------------------------

Videos, menus and gameplay works fine, but certain video settings cause issues
and must be set correctly for the game's video output not to freeze.

The game also has a tendency to freeze when trying to exit normally.

- **DO NOT** set fidelity higher than medium.
- **DO NOT** enable Bloom Render.

These two settings cause the game's video output to freeze. Keep them set as
recommended and you should not have any issues during normal gameplay.

Guide
--------------------------------------------------------------------------------

Insert the game or mount the iso if you have made a backup of your disc.

Run the installer normally. There should be no issue installing the game.

Apply the 1.5.3599 patch normally.

The game might have problems detecting the disc in Wine, you might need to
obtain a no-dvd fix.

Install and start the game.

If you get to the profile creation screen, then create a profile and go to the
options screen.

You can set all the video options to maximum except fidelity and bloom Render.

Bloom Render **MUST** be turned off or the game's video output will freeze
already at startup.

Fidelity **MUST NOT** be set to higher than medium or the game's video output
will freeze as soon as you get in-game.

The game tends to freeze when changing video options. If it does, kill the
process and restart the game. It should start normally with your new options set
correctly.

If the game failed to start normally and you couldn't create a profile, you will
need to edit the games configuration file.

Navigate to %WINEPREFIX%/.wine/drive_c/users/%USER%/Local Settings/Application
Data/Gas Powered Games/Supreme Commander Forged Alliance and open the Game.prefs
file in a text editor.

Add the following option to the options_override section:

    bloom_render = {
        default = 0
    }

Save and start the game. The game should now start and you should be able to
create a profile and set your video settings in-game.

If you made an invalid video configuration and are unable to get back into the
game, you can turn bloom render off and turn the fidelity down by editing the
Game.prefs file.

Under the profiles sections, find your profile and then the options section in
your profile. Make sure that the following options are set as shown below:

    bloom_render = 0
    fidelity = 1

