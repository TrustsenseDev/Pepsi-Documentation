## Bing
Sure, here's a more structured documentation for the UI library that would work well with GitHub's README.md:

# Pepsi's UI Library

This is a user interface library for Roblox, designed to make it easier to create and manage GUIs.

## Installation

```lua
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")

UsageWindow Element
local Window = Library:CreateWindow({
	Name = 'Pepsi Library',
	Themeable = {
		Info = 'Discord Server: VzYTJ7Y',
		Credit = true,
	},
	DefaultTheme = shared.themename or '{"__Designer.Colors.main":"4dbed9"}'
})

Tab Element
local GeneralTab = Window:CreateTab({ Name = 'General' })

Section Element
local Section = GeneralTab:CreateSection({ Name = 'Section Number 1', Side = 'Right' })

Label Element
local Label = Section:CreateLabel({ Text = 'Label' })
Label:SetText('New Text WII')
Label:Reset()
Label:Get()

Toggle Element
local Toggle = Section:AddToggle({
	Name = 'Autofarm',
	Value = true,
	Flag = 'autofarm',
	Locked = true,
	Keybind = {
		Flag = 'keybind',
		Mode = 'Hold',
		Value = Enum.KeyCode.F
	},
	Callback = function( state )
		if ( state ) then
			print('On')
		else
			print('Off')
		end
	end
})
Toggle:Set(false)
Toggle:Reset()
Toggle:Get()

Textbox Element
local TextBox = Section:AddTextbox({
	Name = 'Pro text box',
	Flag = "pro_flag",
	Value = "Obama",
	Multiline = true,
	Callback = function( x )
		print(x)
	end
})
TextBox:Set("Noob")
TextBox:Reset()
TextBox:Get()

Slider Element
local Slider = Section:AddSlider({
	Name = 'Pro slider',
	Flag = "slide_in_your_DMs",
	Value = 13,
	Min = 0,
	Max = 1000,
	Decimals = 2,
	IllegalInput = false,
	Callback = function(x, y)
		if ( x ) then
			print(y)
		end
	end
})
Slider:Set(15)
Slider:Reset()
Slider:Get()

Button Element
local Button = Section:AddButton({
	Name = "Pro button",
	Callback = function()
		print("Pro button right here buddy!")
	end
})

Keybind Element
local Keybind = Section:AddKeybind({
	Name = 'Pro keybind',
	Flag = "the key to open your heart",
	Callback = function( hihiha )
		if ( hihiha ) then
			print('Pepsi greatest drink of all time!')
		end
	end
})
Keybind:Set(Enum.KeyCode.A)
Keybind:Reset()
Keybind:Get()

Dropdown Element
local Dropdown = Section:AddDropdown({
	Name = 'Pro dropdown',
	Flag = "selected value",
	Multi = true,
	List = {
		"Apple",
		"Apple1",
		"Orange"
	},
	Callback = function( WAH )
		print(WAH)
	end
})
Dropdown:Set()
Dropdown:Reset()
Dropdown:Get()

SearchBox Element
local SearchBox = Section:AddSearchBox({
	Name = "pro",
	flag = "more pro",
	List = {
		1,
		2,
		3
	}
})

Color Picker Element
local ColorPicker = Section:AddColorPicker({
	Name = "Color Picker",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( color )
		print(color)
	end
})
ColorPicker:Set(Color3.new(0.2, 0.435294, 0.705882))
ColorPicker:Reset()
ColorPicker:Get()

Notifications
Library.Notify({
	Text = "OOOO",
	Duration = 2
})

Prompts
Library.Prompt({
	Name = "Would you like to join Pepsi?",
	Text = "Ok - Very Pro, No - Very Noob",
	Buttons = {
		Yes = function()
			-- Code to join Pepsi's Discord server
		end,
		No = function()
			Library.Notify({
				Text = "You are a NOOB!",
				Duration = 6
			})
		end
	}
})
