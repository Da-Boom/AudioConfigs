Sound Configuration Files
---

### File Descriptions
 - README.md
	- This Readme
 - pipewire-stream-setup.sh
	- Sets up a pipewire context for streaming
	- Creates Sinks
		- AUDIO (sets as default)
		- MUSIC
		- VOIP
	- Creates Sources
		- APP_MIC (sets as default)
		- OBS_AUDIO
		- OBS_MUSIC
 	- Launches
		- Carla (loads Audio Plugins)
		- qpwgraph (loads active patchbay)
		- jack_mixer (for audio control)
 - xxx.cfg
	- Plugin backup configurations
 - jack_mixer.xml
	- JACK mixer Configuration
 - STREAM-PATCHBAY.qpwgraph
	- The Default qpwgraph active patchbay
 - mixer2.carxp
	- Carla Plugin "Rack" Configuration
 - Anything In the Carla folder
	- contains parts of the save, including symlinks for the soundboard (x12)
	- (note: symlinks will need to be fixed in order for the soundboard to function)

### Required Software
 - pipewire
 	- pipewire-pulse
	- pipewire-jack
	- wireplumber
 - jack_mixer
 - carla
 - qpwgraph
 - libpulse (pactl)
 - calf (reverb, deesser, ring modulator)
 - lsp-plugins (compressor, gate, multi-sampler x12)
 - dpf-plugins (MaPitchshift)
 - x42-midi plugins (https://x42-plugins.com/x42/x42-midifilter)
 - pizmidi-plugins
### Reccomended/Useful Software
 - pipewire-alsa
 - multilib (lib32) variants of pipewire and dependencies
 - OBS (this setup is made for OBS, but it's fine to use something else)
 - pavucontrol (for use with moving applications to different sinks/sources)
 - QMidiRoute - Useful tool to work out a physical device's MIDI channels
