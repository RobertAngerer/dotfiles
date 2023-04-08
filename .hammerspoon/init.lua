hs.hotkey.bind({"cmd", "ctrl"}, "W", function()
	hs.alert.show("Hello World")
end)
function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end
hs.hotkey.bind({"left_command", "left_option", "left_shift", "left_control"}, "S", open_app("Firefox"))
hs.hotkey.bind({"left_command", "left_option", "left_shift", "left_control"}, "A", open_app("Intellij IDEA"))
hs.hotkey.bind({"left_command", "left_option", "left_shift", "left_control"}, "D", open_app("Alacritty"))
hs.hotkey.bind({"left_command", "left_option", "left_shift", "left_control"}, "F", open_app("Microsoft Teams"))
hs.hotkey.bind({"left_command", "left_option", "left_shift", "left_control"}, "K", open_app("Emacs"))
