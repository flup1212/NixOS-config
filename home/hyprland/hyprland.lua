require("myprograms")
require("keybindings")
require("monitors")
require("appearance")
require("input")

-- Autostart certain apps
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
    hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
    hl.exec_cmd("/usr/bin/dunst")
    hl.dsp.exec_raw("wl-paste --type text --watch cliphist store")
    hl.dsp.exec_raw("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("thunar --daemon")
end)

