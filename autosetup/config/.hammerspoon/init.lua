-- WindowHalfsAndThirds: easy-to-use functions for moving windows around. Download and install the zip file from the link below.
-- https://www.hammerspoon.org/Spoons/WindowHalfsAndThirds.html
-- Load the module and store the reference
what = hs.loadSpoon("WindowHalfsAndThirds")

-- I don't like the WindowHalfsAndThirds default hotkeys, and I also don't need all of them
numpadHotkeys = {
  max           = { {"ctrl", "cmd"}, "pad0" },
  bottom_left   = { {"ctrl", "cmd"}, "pad1" },
  bottom_half   = { {"ctrl", "cmd"}, "pad2" },
  bottom_right  = { {"ctrl", "cmd"}, "pad3" },
  left_half     = { {"ctrl", "cmd"}, "pad4" },
  center        = { {"ctrl", "cmd"}, "pad5" },
  right_half    = { {"ctrl", "cmd"}, "pad6" },
  top_left      = { {"ctrl", "cmd"}, "pad7" },
  top_half      = { {"ctrl", "cmd"}, "pad8" },
  top_right     = { {"ctrl", "cmd"}, "pad9" },
  smaller       = { {"ctrl", "cmd"}, "pad-" },
  larger        = { {"ctrl", "cmd"}, "pad+" },
}

-- Bind our custom WHAT hotkeys
what:bindHotkeys(numpadHotkeys)

-- Manually bind non-numpad hotkeys. Ugh.
-- If you have a keyboard without a numpad (e.g. you are just using your laptop) you need some alternative hotkeys.
-- We cannot re-use what:bindHotkeys because it overwrites the existing hotkeys.
-- These hotkeys still utilize WindowHalfsAndThirds methods, hence some of the magic strings
hs.hotkey.bind({"ctrl", "cmd"}, '0', hs.fnutils.partial(what.resizeCurrentWindow, "max", true))
hs.hotkey.bind({"ctrl", "cmd"}, 'm', hs.fnutils.partial(what.resizeCurrentWindow, "bottom_left"))
hs.hotkey.bind({"ctrl", "cmd"}, ',', hs.fnutils.partial(what.resizeCurrentWindow, "bottom_half"))
hs.hotkey.bind({"ctrl", "cmd"}, '.', hs.fnutils.partial(what.resizeCurrentWindow, "bottom_right"))
hs.hotkey.bind({"ctrl", "cmd"}, 'j', hs.fnutils.partial(what.resizeCurrentWindow, "left_half"))
hs.hotkey.bind({"ctrl", "cmd"}, 'k', hs.fnutils.partial(what.center))
hs.hotkey.bind({"ctrl", "cmd"}, 'l', hs.fnutils.partial(what.resizeCurrentWindow, "right_half"))
hs.hotkey.bind({"ctrl", "cmd"}, 'u', hs.fnutils.partial(what.resizeCurrentWindow, "top_left"))
hs.hotkey.bind({"ctrl", "cmd"}, 'i', hs.fnutils.partial(what.resizeCurrentWindow, "top_half"))
hs.hotkey.bind({"ctrl", "cmd"}, 'o', hs.fnutils.partial(what.resizeCurrentWindow, "top_right"))
-- Make the window slightly smaller / larger
hs.hotkey.bind({"ctrl", "cmd"}, '-', what.smaller)
hs.hotkey.bind({"ctrl", "cmd"}, '=', what.larger)
