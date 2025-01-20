# Pepsi's UI Library

A powerful and customizable UI library for Roblox experiences.

## Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [UI Elements](#ui-elements)
  - [Window](#window)
  - [Tab](#tab)
  - [Section](#section)
  - [Label](#label)
  - [Toggle](#toggle)
  - [Textbox](#textbox)
  - [Slider](#slider)
  - [Button](#button)
  - [Keybind](#keybind)
  - [Dropdown](#dropdown)
  - [SearchBox](#searchbox)
  - [Color Picker](#color-picker)
- [Utility Functions](#utility-functions)
  - [Notify](#notify)
  - [Prompt](#prompt)

## Installation

Add the library to your project using:

```lua
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
```

## Quick Start

```lua
-- Create main window
local Window = Library:CreateWindow({
    Name = 'Pepsi Library',
    Themeable = {
        Info = 'Discord Server: VzYTJ7Y',
        Credit = true, -- Shows library credits
    },
    DefaultTheme = shared.themename or '{"__Designer.Colors.main":"4dbed9"}'
})

-- Create tab and section
local GeneralTab = Window:CreateTab({Name = 'General'})
local MainSection = GeneralTab:CreateSection({
    Name = 'Main Controls',
    Side = 'Left'
})

-- Add a toggle with keybind
MainSection:AddToggle({
    Name = 'Auto-Farm',
    Value = false,
    Flag = 'auto_farm',
    Keybind = {
        Flag = 'farm_keybind',
        Mode = 'Toggle',
        Value = Enum.KeyCode.F
    },
    Callback = function(state)
        print('Auto-Farm:', state and 'ON' or 'OFF')
    end
})
```

## UI Elements

### Window
The root container for all UI elements.

```lua
local Window = Library:CreateWindow({
    Name = 'Title',          -- Window title
    Themeable = {            -- Theme configuration
        Info = 'Extra text', 
        Credit = true       -- Show/hide credits
    },
    DefaultTheme = 'theme'  -- JSON theme string
})
```

### Tab
Organize content into separate pages.

```lua
local MyTab = Window:CreateTab({Name = 'Settings'})
```

### Section
Group related controls within a tab.

```lua
local ControlsSection = MyTab:CreateSection({
    Name = 'Configuration',
    Side = 'Right'  -- 'Left' or 'Right'
})
```

### Label
Display static text.

```lua
ControlsSection:CreateLabel({Text = 'Status: Active'})
```

### Toggle
Boolean switch with optional keybind.

```lua
ControlsSection:AddToggle({
    Name = 'Enable Feature',
    Value = false,          -- Default state
    Flag = 'feature_toggle', -- Unique identifier
    Locked = false,         -- Prevent user changes
    Keybind = {             -- Optional keybind
        Flag = 'feature_key',
        Mode = 'Toggle',    -- 'Toggle' or 'Hold'
        Value = Enum.KeyCode.X
    },
    Callback = function(state)
        -- Handle toggle changes
    end
})
```

### Textbox
User text input field.

```lua
ControlsSection:AddTextbox({
    Name = 'Player Name',
    Flag = 'player_name',
    Value = 'Default',     -- Initial text
    Multiline = false,     -- Multi-line input
    Callback = function(text)
        print('Input changed:', text)
    end
})
```

### Slider
Numeric input with range constraints.

```lua
ControlsSection:AddSlider({
    Name = 'Volume',
    Flag = 'volume_level',
    Value = 50,            -- Default value
    Min = 0,               -- Minimum value
    Max = 100,             -- Maximum value
    Decimals = 0,          -- Decimal places
    IllegalInput = false,  -- Allow manual input
    Callback = function(isDragging, value)
        if not isDragging then
            print('Final value:', value)
        end
    end
})
```

### Button
Trigger actions on click.

```lua
ControlsSection:AddButton({
    Name = 'Save Settings',
    Callback = function()
        print('Settings saved!')
    end
})
```

### Keybind
Custom keybinding input.

```lua
ControlsSection:AddKeybind({
    Name = 'Menu Toggle',
    Flag = 'menu_keybind',
    Callback = function(isPressed)
        if isPressed then
            -- Toggle menu visibility
        end
    end
})
```

### Dropdown
Select from multiple options.

```lua
ControlsSection:AddDropdown({
    Name = 'Weapon Select',
    Flag = 'selected_weapon',
    Multi = false,          -- Multi-select
    List = {'Sword', 'Gun', 'Bow'},
    Callback = function(selection)
        print('Selected:', table.concat(selection, ', '))
    end
})
```

### SearchBox
Searchable dropdown list.

```lua
ControlsSection:AddSearchBox({
    Name = 'Item Search',
    Flag = 'item_search',
    List = {'Apple', 'Potion', 'Shield'}
})
```

### Color Picker
Color selection input.

```lua
ControlsSection:AddColorPicker({
    Name = 'Team Color',
    Value = Color3.new(1, 0, 0),  -- Default color
    Callback = function(newColor)
        print('Selected color:', newColor)
    end
})
```

## Utility Functions

### Notify
Display temporary notifications.

```lua
Library.Notify({
    Text = 'Settings saved!', 
    Duration = 3  -- Seconds
})
```

### Prompt
Create interactive dialogs.

```lua
Library.Prompt({
    Name = 'Confirmation',
    Text = 'Delete all data?',
    Buttons = {
        Yes = function()
            print('Data deleted')
        end,
        No = function()
            Library.Notify({Text = 'Cancelled'})
        end
    }
})
```

## Theme Customization
Customize UI appearance using JSON theme strings:

```lua
-- Example theme with main color
local customTheme = '{"__Designer.Colors.main":"4dbed9"}'

-- Apply theme when creating window
Library:CreateWindow({
    ...,
    DefaultTheme = customTheme
})
```

---

📘 **Need Help?** Join our [Discord Server](https://discord.gg/VzYTJ7Y)
