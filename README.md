# Pepsi Interface Library

The UI Library:
```lua
-- Pepsi's UI Library
local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library") -- Pepsi's very cool library
local Libraryflags = Library.flags -- a variable for the library's flags
local Wait = Library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops
-- You can use | setclipboard(game:GetObjects("rbxassetid://7657867786")[1].Source) | to check library source for more documentation!
local player = Library.LP -- Get the local player EZZ

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
	Keybind = {
		Flag = 'keybind',
		Mode = 'Hold',
		Value = Enum.KeyCode.F
	}, -- Change to any bind you want, mode can be "Dynamic" or "Hold" or "Toggle", Toggle is default.

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
	Multiline = true, -- If you find any utility to this you cool!
	Callback = function( x ) -- Optional
		print(x)
	end
})
print(Libraryflags.pro_flag) -- Output: Obama

TextBox:Set("Noob") -- Set value, RawSet - sets the flag without firing the callback
TextBox:Reset() -- Resets do default
TextBox:Get() -- Gets current value

-- Slider Element
local Slider = Section:AddSlider({ -- You can also use it on Toggle instead of Section!
	Name = 'Pro slider',
	Flag = "slide_in_your_DMs", -- hi hi ha,
	Value = 13,
	Min = 0, -- 0 is a lie btw, also very scary
	Max = 1000,
	Decimals = 2, -- 13.00
	llegalInput = false, -- true allow textbox to break min & max limits
	Callback = function(x, y) -- Optional again, all callbacks are optinal...
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

-- Button Element
local Button = Section:AddButton({
	Name = "Pro button",
	-- Locked = true, lock the button until Button:Unlock()
	-- Condition = Function (NumPresses) // Will only allow the button to be pressed, if this function returns true
	Callback = function()
		print("Pro button right here buddy!")
	end
})

-- Keybind Element
local Keybind = Section:AddKeybind({
	Name = 'Pro keybind',
	Flag = "the key to open your heart", -- mrrr
	Callback = function( hihiha )
		if ( hihiha ) then
			print('Pepsi greatest drink of all time!')
		end
	end
})

Keybind:Set(Enum.KeyCode.A) -- Set value, RawSet - sets the flag without firing the callback
Keybind:Reset() -- Resets do default
Keybind:Get() -- Gets current value

-- Dropdown Element
local Dropdown = Section:AddDropdown({
	Name = 'Pro dropdown',
	Flag = "selected value", -- brrrr
	Multi = true, -- Default is false
	List = {
		"Apple",
		"Apple1",
		"Orange"
	}, -- Table | workspace | Enum.Font | Function ()
	Callback = function( WAH )
		print(WAH)
	end
})

Dropdown:Set() -- Set value, RawSet - sets the flag without firing the callback
Dropdown:Reset() -- Resets do default
Dropdown:Get() -- Gets current value
-- new list Keybind:UpdateList({})

-- SearchBox Element
local SearchBox = Section:AddSearchBox({ -- Uh for that I won't create an example, it's basically dropdown but with search bar
	Name = "pro",
	flag = "more pro",
	List = {
		1,
		2,
		3
	}
})

-- Color Picker Element
local ColorPicker = Section:AddColorPicker({
	Name = "Color Picker",
	Value = Color3.new(0.619607, 0.168627, 0.168627), -- "rainbow" or "random" | Color3.new()
	Callback = function( color )
		print(color)
	end
})

ColorPicker:Set(Color3.new(0.2, 0.435294, 0.705882)) -- Set value, RawSet - sets the flag without firing the callback
ColorPicker:Reset() -- Resets do default
ColorPicker:Get() -- Gets current value

Library.Notify({
	Text = "OOOO",
	Duration = 2 -- Default is 5
})

Library.Prompt({
	Name = "Would you like to join Pepsi?",
	Text = "Ok - Very Pro, No - Very Noob",
	Buttons = {
		Yes = function()
			local req = (syn and syn.request) or (http and http.request) or http_request or nil
			if req ~= nil then
				for port = 6463, 6472, 1 do
					local inv = 'http://127.0.0.1:' .. tostring(port) .. '/rpc?v=1'
					local http = game:GetService('HttpService')
					local t = {
						cmd = 'INVITE_BROWSER',
						args = {
							['code'] = 'VzYTJ7Y'
						},
						nonce = string.lower(http:GenerateGUID(false))
					}
					local post = http:JSONEncode(t)
					req({
						Url = inv,
						Method = 'POST',
						Body = post,
						Headers = {
							['Content-Type'] = 'application/json',
							['Origin'] = 'https://discord.com'
						}
					})
				end
			end
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
