# ![LMMS Logo](https://raw.githubusercontent.com/LMMS/artwork/master/Icon%20%26%20Mimetypes/lmms-32x32.svg) LMMS (1.2.2 fork)

## What's this?

This is a fork of the stable 1.2.2 LMMS branch, with additional or better features for my needs.

I don't really use that branch yet, there are many issues (such as old/obsolete toolchain and library versions) that don't let me use this properly, I will eventually get a way around this
I also don't really work much on the fork, I have another private project out there so take every single commit with a grain of salt!

## Why forking an older version?

There are several reasons why I'm forking this version made half a decade ago and why not the current one:

- 1.3.0 is unstable, I have composed some tracks using that version and when I transferred these projects with a new install of Windows I lost many elements of that song (Maybe I've used the nightly version before and then used the alpha one which caused that)
- 1.3.0 has so much! I mostly use 1.2.2 and when I went to try 1.3.0 I felt quite bloated with the features that it had... 1.2.2 is fine, but still more convenient for me
- Maybe there are more reasons...


## Features & Goals

- Pitch shifting for SF2 instruments (Like in 1.3.0, I use SF2 Player a lot!)
- Per-note panning for SF2 instruments.
- Per-sample loop-points for AudioFileProcessor: Using a normalized floating point value isn't convenient, audio trackers use per-sample loop-points because you want to be precise on where to start looping a sample.

#### Some goals
- Pitch shifting and per-note panning for ZynAddSubfx and the rest of the instruments: This might not be possible as some instruments use actual midi events and they don't sent the pitch value per note, so I might want to change the pitch shifting feature and do like in FL Studio (Where the pitch shifting relies on the whole track)
- Having the same set of instruments in the Beat/Bassline and the Song Track: Basically sharing the instruments for both the Beat/Bassline and the song.