function init_norns()
  _boot.add_io('screen:fbdev', {dev='/dev/fb0'})
_boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-button@0-event'})
_boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-button@11-event'})
_boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-button@3-event'})
_boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-button@8-event'})
--  _boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-soc:keys-event'})
--  _boot.add_io('keys:gpio',    {dev='/dev/input/by-path/platform-soc:keys2-event'})
  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob1-event', index=1})
--  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob2-event', index=2})
--  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob3-event', index=3})
  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob4-event', index=2})
  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob5-event', index=4})
  _boot.add_io('enc:gpio',     {dev='/dev/input/by-path/platform-soc:knob6-event', index=3})
end

function init_desktop()
  -- desktop window
  _boot.add_io('screen:sdl', {})
  -- _boot.add_io('input:sdl', {})

  -- i/o via maiden
  -- _boot.add_io('screen:json', {})
  -- _boot.input_add('web_input', 'json', {})
end

init_norns()
