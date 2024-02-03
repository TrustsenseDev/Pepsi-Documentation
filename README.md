# Pepsi's UI Library Documentation

This is a comprehensive guide to using Pepsi's UI Library in Roblox. The library provides a variety of UI elements that you can use to create interactive and visually appealing user interfaces.

## Table of Contents
1. Window Element
2. Tab Element
3. Section Element
4. Label Element
5. Toggle Element
6. Textbox Element
7. Slider Element
8. Button Element
9. Keybind Element
10. Dropdown Element
11. SearchBox Element
12. Color Picker Element

## Window Element
The window element is the main container for your UI. You can set its name, theme, and other properties.

```lua
local Window = Library:CreateWindow({
	Name = 'Pepsi Library',
	Themeable = {
		Info = 'Discord Server: VzYTJ7Y',
		Credit = true,
	},
	DefaultTheme = shared.themename or '{"__Designer.Colors.main":"4dbed9"}'
})
