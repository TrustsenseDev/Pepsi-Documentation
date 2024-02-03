# Pepsi's UI Library

Pepsi's very cool library

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
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

- [Library](#library)
    - [Notify](#notify)
    - [Prompt](#prompt)

## Installation

```lua
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
```

## Usage

# Window Element
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

# Tab Element
```lua
local GeneralTab = Window:CreateTab({
    Name = 'General'
})
```

# Section Element
```lua
local Section = GeneralTab:CreateSection({
    Name = 'Section Number 1',
    Side = 'Right'
})
```

# Label Element
```lua
local Label = Section:CreateLabel({
    Text = 'Label'
})
```

# Toggle Element
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
```

# Textbox Element
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
```

# Slider Element
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
```

# Button Element
```lua
local Button = Section:AddButton({
    Name = "Pro button",
    Callback = function()
        print("Pro button right here buddy!")
    end
})
```

# Keybind Element
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
```

# Dropdown Element
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
```

# SearchBox Element
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

# Color Picker Element
```lua
local ColorPicker = Section:AddColorPicker({
    Name = "Color Picker",
    Value = Color3.new(0.619607, 0.168627, 0.168627),
    Callback = function( color )
        print(color)
    end
})
```

## Library

# Notify
```lua
Library.Notify({
    Text = "OOOO",
    Duration = 2
})
```

# Prompt
```lua
Library.Prompt({
    Name = "Would you like to join Pepsi?",
    Text = "Ok - Very Pro, No - Very Noob",
    Buttons = {
        Yes = function()
           print('Cool') 
        end,
        No = function()
            Library.Notify({
                Text = "You are a NOOB!",
                Duration = 6
            })
        end
    }
})
```
