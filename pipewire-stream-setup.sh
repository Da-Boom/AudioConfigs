#!/bin/bash
#restart pipewire
systemctl --user restart pipewire
wait 1
#Load Sink Devices
pactl load-module module-null-sink object.linger=1 media.class=Audio/Sink sink_name=AUDIO
pactl load-module module-null-sink object.linger=1 media.class=Audio/Sink sink_name=MUSIC
pactl load-module module-null-sink object.linger=1 media.class=Audio/Sink sink_name=VOIP
pactl load-module module-null-sink object.linger=1 media.class=Audio/Sink sink_name=MONITOR
pactl set-default-sink AUDIO
#Load Source Devices
pactl load-module module-null-sink object.linger=1 media.class=Audio/Source/Virtual sink_name=APP_MIC
pactl load-module module-null-sink object.linger=1 media.class=Audio/Source/Virtual sink_name=OBS_AUDIO
pactl load-module module-null-sink object.linger=1 media.class=Audio/Source/Virtual sink_name=OBS_MUSIC
pactl set-default-source APP_MIC

jack_mixer -c /home/jaryed/AudioConfigs/jack_mixer.xml &
carla /home/jaryed/AudioConfigs/mixer2.carxp &
qpwgraph -a /home/jaryed/AudioConfigs/STREAM-PATCHBAY.qpwgraph &
