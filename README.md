# Pepsi Interface Library

The UI Library:
```lua
-- Pepsi's UI Library
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library") -- Pepsi's very cool library
local Libraryflags = Library.flags -- a variable for the library's flags
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

-- Window Element
local Window = Library:CreateWindow({ 
    Name = 'Pepsi Library',
    Themeable = { 
        Info = 'Discord Server: VzYTJ7Y', -- You can set it to your own discord code
        Credit = true, -- If you want to give Pepsi his credits or not, please do!
    },
    DefaultTheme = shared.themename or '{"__Designer.Colors.main":"4dbed9"}' -- The main color of the UI.
})

-- Tab Element
local GeneralTab = Window:CreateTab({ Name = 'General' })
```

