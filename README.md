# Pepsi Interface Library

The UI Library:
```lua
-- Pepsi's UI Library
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library") -- Pepsi's very cool library
local Libraryflags = Library.flags -- a variable for the library's flags
local Wait = Library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops
-- You can use | setclipboard(game:GetObjects("rbxassetid://7657867786")[1].Source) | to check library source for more documentation!

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
local GeneralTab = Window:CreateTab({
	Name = 'General'
})

-- Section Element
local Section = GeneralTab:CreateSection({
	Name = 'Section Number 1',
	Side = 'Right' -- The default side is left.
})

-- Label Element
local Label = Section:CreateLabel({
	Text = 'Label'
})
Label:SetText('New Text WII') -- That's how you set the text of label like a pro, you can also use Label:RawSet() for backwards compatibility
Label:Reset() -- Put the text back to default
Label:Get() -- Gets current text of label

-- Toggle Element
local Toggle = Section:AddToggle({
	Name = 'Autofarm',
	Value = true, -- Default is false
	Flag = 'autofarm',
	Locked = true, -- Default is false
	Keybind = { Flag = 'keybind', Mode = 'Hold', Value = Enum.KeyCode.F}, -- Change to any bind you want, mode can be "Dynamic" or "Hold" or "Toggle", Toggle is default.

	Callback = function( state ) -- Optional
		if ( state ) then
			print('On')
		else
			print('Off')
		end
	end
})
print(Libraryflags.keybind) -- Output: Enum.KeyCode.F

Toggle:Set(false) -- Set value, RawSet - sets the flag without firing the callback
Toggle:Reset() -- Resets do default
Toggle:Get() -- Gets current value

-- Textbox Element
local TextBox = Section:AddTextbox({
	Name = 'Pro text box',
	Flag = "pro_flag", -- flag flag flag
	Value = "Obama",
	Multiline = true, -- default is false
	--[[CustomProperties = {
		TextTruncate = Enum.TextTruncate.None
	}]] -- If you find any utility to this you cool!
	Callback = function( x ) -- Optional
		print(x)
	end
})
print(Libraryflags.pro_flag) -- Output: Obama

TextBox:Set("Noob") -- Set value, RawSet - sets the flag without firing the callback
TextBox:Reset() -- Resets do default
TextBox:Get() -- Gets current value

-- Slider Element
local Slider = Section:AddSlider({
	Name = 'Pro slider',
	Flag = "slide_in_your_DMs", -- hi hi ha,
	Value = 13,
	Min = 0, -- 0 is a lie btw, also very scary
	Max = 1000,
	Decimals = 2, -- 13.00
	llegalInput = false, -- true allow textbox to break min & max limits
	Callback = function(x, y) -- Optional again, all callback are optinal...
		if ( x ) then
			print(y)
		end
	end
})

Slider:Set(15) -- Set value, RawSet - sets the flag without firing the callback
Slider:Reset() -- Resets do default
Slider:Get() -- Gets current value
-- Slider:SetConstraints(11, 16) New min & max
-- Slider:SetMin(0) -- new min
-- Slider:SetMax(1200) -- new max
```
