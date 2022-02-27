hs.loadSpoon("SpoonInstall")

-----------------------------------------------
-- Hyper mode
-----------------------------------------------
-- see https://gist.github.com/ttscoff/cce98a711b5476166792d5e6f1ac5907

-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Trigger existing hyper key shortcuts
-- k:bind({}, 'm', nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'm') end)

-- OR build your own
launch = function(appname)
  hs.application.launchOrFocus(appname)
  k.triggered = true
end

-- Single keybinding for app launch
singleapps = {
-- {'a', ''}
  {'b', 'Safari'},
  {'c', 'Visual Studio Code'},
  {'d', 'Calendar'},
  {'e', 'GIMP'},
-- {'f', ''}
  {'h', 'VNC Viewer'},
  {'l', 'Podcasts'},
  {'n', 'Notes'},
  {'m', 'Activity Monitor'},
-- {'o', Reload config},
  {'p', 'Photos'},
  {'r', 'Reminders'},
  {'s', 'Sublime Text'},
  {'t', 'iTerm'},
  {'v', 'UTM'},
  {'u', 'Finder'},
  {'w', 'Bitwarden'}
}

for i, app in ipairs(singleapps) do
  k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
end

-- Sequential keybindings
  -- Hyper + a for URL launch

urlLaunch = function(urlString)
  hs.urlevent.openURL(urlString)
  k.triggered = true
end

a = hs.hotkey.modal.new({}, "F16")
urls = {
  {'b', 'https://pin.it/1BNKGEL'},
  {'d', 'https://drive.google.com'},
  {'g', 'https://www.github.com/krismstorck'},
  {'k', 'https://krismstorck.com'},
  {'p', 'https://www.reddit.com/user/9minutes/m/lp/'},
  {'t', 'https://www.trello.com'}
}

for i, url in ipairs(urls) do
  a:bind({}, url[1], function() urlLaunch(url[2]); a:exit(); end)
end

pressedA = function() a:enter() end
releasedA = function() end
k:bind({}, 'a', nil, pressedA, releasedA)

  -- Hyper + f for folder launchc

goToFolder = function(folderPath)
  hs.execute(folderPath)
  k.triggered = true
end

f = hs.hotkey.modal.new({}, "F15")
folders = {
  {'b', 'open ~/src/personal/blog'},  -- Blog
  {'c', 'open ~/src/curated'}, -- Curated lists
  {'d', 'open ~/.dotfiles'},   -- Dotfiles
  {'l', 'open ~/src/learning'}, -- Learning
  {'k', 'open ~/src/personal/krismstorck'}, -- Portfolio
  {'m', 'open ~/Library/Mobile Documents/com~apple~CloudDocs/Write/mind-palace'}, -- Digital garden
}

for i, folder in ipairs(folders) do
  f:bind({}, folder[1], function() goToFolder(folder[2]); f:exit(); end)
end

pressedF = function() f:enter() end
releasedF = function() end
k:bind({}, 'f', nil, pressedF, releasedF)

    -- Hyper + t for configs launch F14

goToFile = function(filePath)
  hs.execute(filePath)
  k.triggered = true
end

t = hs.hotkey.modal.new({}, "F14")
files = {
  {'h', 'nvim ~/.dotfiles/hammerspoon/init.lua'}, -- Hammerspoon config
  {'k', 'st ~/.dotfiles/keybinds.md'}, -- Keybinds
  {'t', 'nvim ~/.dotfiles/.tmux'}, -- tmux config
  {'y', 'nvim ~/.dotfiles/yabairc'},   -- yabai config
  {'z', 'nvim ~/.dotfiles/zsh'} -- zsh config

}

for i, file in ipairs(files) do
  t:bind({}, file[1], function() goToFile(file[2]); t:exit(); end)
end

pressedT = function() t:enter() end
releasedT = function() end
k:bind({}, 't', nil, pressedT, releasedT)

    -- Hyper + p for project launch F13




-- Shortcut to reload config

ofun = function()
  hs.reload()
  hs.alert.show("Config loaded")
  k.triggered = true
end
k:bind({}, 'o', nil, ofun)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

----------------------------------------------------------------
-- See https://gist.github.com/huytd/5e7d5d4fc54da2f0ab32e0270d2cb86d

-- Modal mode for windows movement
hs.window.animationDuration = 0.05
local grid = require('hs.grid')
grid.MARGINX = 20
grid.MARGINY = 20
grid.GRIDHEIGHT = 6
grid.GRIDWIDTH = 12
local movewind = hs.hotkey.modal.new('ctrl-option', 'm')
function movewind:entered() hs.alert'Entered moving mode' end
function movewind:exited()  hs.alert'Exited moving mode'  end

movewind:bind('', 'tab', grid.toggleShow)
movewind:bind('', 'j', grid.pushWindowDown)
movewind:bind('', 'k', grid.pushWindowUp)
movewind:bind('', 'l', grid.pushWindowRight)
movewind:bind('', 'h', grid.pushWindowLeft)

movewind:bind('', 'escape', '', function()
  movewind:exit()
end)

----------------------------------------------------------------
-- Yabai Keybindings
function yabai(args, fallback)
  hs.task.new("/opt/homebrew/bin/yabai",function(exitCode, stdOut, stdErr)
    if (exitCode == 1 and fallback) then
      fallback()
    end
  end, function()
    return true
  end, args):start()
end

function yabai_key(mod, key, cmd, cmd2)
  hs.hotkey.bind(mod, key, function()
    yabai(cmd, function()
      yabai(cmd2)
    end)
  end)
end

-- Focus
yabai_key("option", "j", { "-m", "window", "--focus", "south" })
yabai_key("option", "k", { "-m", "window", "--focus", "north" })
yabai_key("option", "h", { "-m", "window", "--focus", "west" })
yabai_key("option", "l", { "-m", "window", "--focus", "east" })

-- Swap windows
yabai_key({"control", "shift", "option"}, "h", { "-m", "window", "--swap", "west" })
yabai_key({"control", "shift", "option"}, "l", { "-m", "window", "--swap", "east" })
yabai_key({"control", "shift", "option"}, "k", { "-m", "window", "--swap", "north" })
yabai_key({"control", "shift", "option"}, "j", { "-m", "window", "--swap", "south" })

-- Move windows
yabai_key({"control", "shift", "command"}, "h", { "-m", "window", "--warp", "west" })
yabai_key({"control", "shift", "command"}, "l", { "-m", "window", "--warp", "east" })
yabai_key({"control", "shift", "command"}, "k", { "-m", "window", "--warp", "north" })
yabai_key({"control", "shift", "command"}, "j", { "-m", "window", "--warp", "south" })

-- Resize windows
yabai_key({"control", "command"}, "h",
  { "-m", "window", "--resize", "left:-50:0" },
  { "-m", "window", "--resize", "right:-50:0" })
yabai_key({"control", "command"}, "l",
  { "-m", "window", "--resize", "right:50:0" },
  { "-m", "window", "--resize", "left:50:0" })
yabai_key({"control", "command"}, "j",
  { "-m", "window", "--resize", "bottom:0:50" },
  { "-m", "window", "--resize", "top:0:50" })
yabai_key({"control", "command"}, "k",
  { "-m", "window", "--resize", "top:0:-50" },
  { "-m", "window", "--resize", "bottom:0:-50" })

-- Spaces commands
yabai_key({"shift", "option"}, ".", { "-m", "window", "--space", "next" })
yabai_key({"shift", "option"}, ",", { "-m", "window", "--space", "prev" })
yabai_key({"shift", "option"}, "0", { "-m", "space", "--balance" })
yabai_key({"shift", "option"}, "space", { "-m", "space", "--rotate", "90" })

-- Other
yabai_key({"control", "shift", "command"}, "space", { "-m", "window", "--toggle", "float" })



