Sure, here's a more organized version of the documentation for Pepsi's UI Library that would work well with GitHub's README.md:

```markdown
# Pepsi's UI Library Documentation

This is a comprehensive guide to using Pepsi's UI Library in Roblox. The library provides a robust and flexible way to create user interfaces in your Roblox games.

## Table of Contents
- [Getting Started](#getting-started)
- [Window Element](#window-element)
- [Tab Element](#tab-element)
- [Section Element](#section-element)
- [Label Element](#label-element)
- [Toggle Element](#toggle-element)
- [Textbox Element](#textbox-element)
- [Slider Element](#slider-element)
- [Button Element](#button-element)
- [Keybind Element](#keybind-element)
- [Dropdown Element](#dropdown-element)
- [SearchBox Element](#searchbox-element)
- [Color Picker Element](#color-picker-element)

## Getting Started
To start using the library, load it into your game using the following code:

```lua
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
local Libraryflags = Library.flags
local Wait = Library.subs.Wait
local player = Library.LP
```

## Window Element
The Window element is the main container for your UI. Here's how to create a Window:

```lua
local Window = Library:CreateWindow({
	Name = 'Pepsi Library',
	Themeable = {
		Info = 'Discord Server: VzYTJ7Y',
		Credit = true,
	},
	DefaultTheme = shared.themename or '{"__Designer.Colors.main":"4dbed9"}'
})
```

## Tab Element
Tabs help organize your UI into different sections. Here's how to create a Tab:

```lua
local GeneralTab = Window:CreateTab({
	Name = 'General'
})
```

## Section Element
Sections further divide your Tabs into smaller parts. Here's how to create a Section:

```lua
local Section = GeneralTab:CreateSection({
	Name = 'Section Number 1',
	Side = 'Right'
})
```

## Label Element
Labels are used to display text. Here's how to create and manipulate a Label:

```lua
local Label = Section:CreateLabel({
	Text = 'Label'
})
Label:SetText('New Text WII')
Label:Reset()
Label:Get()
```

## Toggle Element
Toggles are used to switch between two states. Here's how to create and manipulate a Toggle:

```lua
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
```

## Textbox Element
Textboxes are used to input text. Here's how to create and manipulate a Textbox:

```lua
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
```

## Slider Element
Sliders are used to select a value from a range. Here's how to create and manipulate a Slider:

```lua
local Slider = Section:AddSlider({
	Name = 'Pro slider',
	Flag = "slide_in_your_DMs",
	Value = 13,
	Min = 0,
	Max = 1000,
	Decimals = 2,
	llegalInput = false,
	Callback = function(x, y)
		if ( x ) then
			print(y)
		end
	end
})
Slider:Set(15)
Slider:Reset()
Slider:Get()
```

## Button Element
Buttons are used to trigger actions. Here's how to create a Button:

```lua
local Button = Section:AddButton({
	Name = "Pro button",
	Callback = function()
		print("Pro button right here buddy!")
	end
})
```

## Keybind Element
Keybinds are used to bind actions to keys. Here's how to create and manipulate a Keybind:

```lua
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
```

## Dropdown Element
Dropdowns are used to select a value from a list. Here's how to create and manipulate a Dropdown:

```lua
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
```

## SearchBox Element
SearchBoxes are used to search a list of values. Here's how to create a SearchBox:

```lua
local SearchBox = Section:AddSearchBox({
	Name = "pro",
	flag = "more pro",
	List = {
		1,
		2,
		3
	}
})
```

## Color Picker Element
Color Pickers are used to select a color. Here's how to create and manipulate a Color Picker:

```lua
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
```
