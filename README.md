# 🥤 Pepsi UI Library <sub><sup>v2.1.0</sup></sub>

![License](https://img.shields.io/badge/License-MIT-blue.svg)

A refreshing 🧊 Roblox UI framework with modern features and smooth interactions. Perfect for creating beautiful in-game interfaces!

## ✨ Features

- 🎛️ **Fully Customizable** - Theme engine with JSON configuration
- 🔑 **Keybind Support** with multiple modes
- 📱 **Responsive Layout** system
- 📦 **Modular Components** - Use only what you need
- 🔔 **Notification System** with progress indicators
- 📝 **Interactive Documentation** (you're here!)

## 🚀 Getting Started

### Prerequisites
- Basic Lua knowledge

### Installation
```lua
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
```

## 🖼️ UI Components

| Component      | Description                          | Example                      |
|----------------|--------------------------------------|------------------------------|
| **Window**     | Main container for UI elements       | `CreateWindow({...})`        |
| **Smart Tabs** | Organized content sections           | tabs with icons            |
| **Color Picker** | HSV/RGB color selection             | ![Color Picker Demo]         |
| **Search Box** | Filterable dropdown with typeahead   | Search from 1000+ items      |

[Color Picker Demo]: https://via.placeholder.com/200x100.png?text=Color+Picker+Preview

## 📚 Comprehensive Documentation

### 🔧 Core Components

<details>
<summary><strong>🏗️ Window Configuration</strong></summary>

```lua
local Window = Library:CreateWindow({
    Name = 'Dashboard',
    Themeable = {
        Info = 'Customize me!',
        Credit = true -- Show library credits
    },
    DefaultTheme = [[
    {
        "__Designer.Colors.main": "#4dbed9",
        "__Designer.Colors.accent": "#ff4757"
    }
    ]]
})
```
</details>

### 🎮 Interactive Elements

#### 🔘 Smart Toggle with Keybinds
```lua
Section:AddToggle({
    Name = 'God Mode',
    Flag = 'hacks_godmode',
    Keybind = {
        Mode = 'Toggle',
        Value = Enum.KeyCode.G
    },
    Callback = function(state)
        Player:SetAttribute('GodMode', state)
    end
})
```

## 🛠️ Advanced Usage

```lua
-- Complex example with multiple components
local combatTab = Window:CreateTab({Name = '⚔️ Combat'})
local aimSection = combatTab:CreateSection({Name = 'Aim Assist'})

aimSection:AddSlider({
    Name = 'Smoothing',
    Min = 1,
    Max = 10,
    Value = 5,
    Callback = function(_, value)
        AimController:SetSmoothness(value)
    end
})

aimSection:AddDropdown({
    Name = 'Target Priority',
    Multi = true,
    List = {'Head', 'Torso', 'Limbs'},
    Callback = function(selection)
        UpdateTargetPriorities(table.concat(selection, ', '))
    end
})
```

## 📞 Support

For help, join our [Discord community](https://discord.gg/VzYTJ7Y) or create an [GitHub issue](https://github.com/username/repo/issues).

[![Discord Banner](https://discordapp.com/api/guilds/1234567890/widget.png?style=banner2)](https://discord.gg/VzYTJ7Y)

---

**Made with ❤️ by Pepsi** • [Report Bug](https://github.com/username/repo/issues) • [Request Feature](https://github.com/username/repo/issues)
