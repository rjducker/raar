# RAAR Architecture

## Shows and Broadcasts

RAAR distinguishes two key words: `Shows` and `Broadcasts`. In the naming of RAAR, a show is the recurring container for singular broadcasts. So a broadcast is the transmission of a certain show for a single specific date and time. E.g. there may be the 'One and only morning show', with broadcasts every weekday from 8 o'clock to 11 o'clock.

A broadcast may have multiple `Audio Files` with different formats/bitrates. Each audio file contains the entire broadcast (the duration of the audio file equals the duration of the broadcast).

## Archive Configuration

The archive configuration mostly defines various audio formats to create when importing a broadcast and when they are downgraded. An audio format is defined with three values:

* **codec**: The audio encoding, e.g. mp3, ogg, wav, ...
* **bitrate**: The bitrate in kbps, if applicable.
* **channels**: Number of audio channels, 2 for stereo, 1 for mono.

The configuration of the different formats to archive the various shows/broadcasts is bundled in `Profiles`. We suggest to only provide a small amount of different profiles. Each show is assigned exactly one profile.

Three models contain the actual configuration: `ArchiveFormat` with `DowngradeAction` and `PlaybackFormat`.

### Archive Formats

Defines which audio formats should be created when importing a broadcast assigned to a given profile. Only one archive format may be defined per codec and profile.

Additionally, a maximum public bitrate may be defined. If set, this value restricts API access to audio files of the given codec with a higher bitrate to users with a login.

### Downgrade Actions

Defines the bitrate and channels the audio files should be downgraded to after a number of months for a given archive format. Multiple downgrade actions with different months/bitrates/channels may exist for a single archive format.

If the bitrate is set to `nil`, the audio files will be entirely deleted after the defined number of months.

### Playback Formats

Additionally to the archive formats, a set of playback formats may be defined. They are supposed to provide uniform audio qualities for archive listeners. Playback formats are therefore independent of profiles and the same for all shows/broadcasts. For each playback format, an audio file is created when a broadcast is imported.

Still, when a downgrade action takes place for a given codec, it does not stop from the playback format and does remove all audio files with higher bitrates. When a certain playback format file is requested and not available, the audio file with the same codec and the highest bitrate below the playback format bitrate is served.