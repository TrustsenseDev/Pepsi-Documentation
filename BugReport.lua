local Module = {}

-- Function 
function webhook(hook, color, title, description)
    pcall(function()
        local Embed = {
            color = color,
            title = title,
            description = description
        };

        (syn and syn.request or http_request) {
            Url = hook,
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
            Body = game:GetService 'HttpService':JSONEncode({
                content = Content,
                embeds = {Embed}
            })
        };
    end)
end

-- User Interface
function Module:CreateWindow(Url)
    local BugReporter = Instance.new('ScreenGui')
    local Holder = Instance.new('Frame')
    local Report = Instance.new('TextBox')
    local UICorner = Instance.new('UICorner')
    local Title = Instance.new('TextLabel')
    local ReportButton = Instance.new('TextButton')
    local UICorner_2 = Instance.new('UICorner')
    local UICorner_3 = Instance.new('UICorner')

    BugReporter.Name = 'Bug Reporter'
    BugReporter.Parent = game.CoreGui

    Holder.Name = 'Holder'
    Holder.Parent = BugReporter
    Holder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Holder.BorderColor3 = Color3.fromRGB(101, 46, 168)
    Holder.BorderSizePixel = 4
    Holder.Position = UDim2.new(0.289454013, 0, 0.301840484, 0)
    Holder.Size = UDim2.new(0, 483, 0, 291)

    Report.Name = 'Report'
    Report.Parent = Holder
    Report.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Report.BorderColor3 = Color3.fromRGB(39, 39, 115)
    Report.BorderSizePixel = 3
    Report.Position = UDim2.new(0.0331058241, 0, 0.146641776, 0)
    Report.Size = UDim2.new(0, 443, 0, 162)
    Report.Font = Enum.Font.JosefinSans
    Report.Text = 'Put your report here weirdo :D'
    Report.TextColor3 = Color3.fromRGB(255, 255, 255)
    Report.TextSize = 15.000
    Report.TextStrokeTransparency = 0.500
    Report.TextWrapped = true

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Report

    Title.Name = 'Title'
    Title.Parent = Holder
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0304871239, 0, -0.0166283064, 0)
    Title.Size = UDim2.new(0, 445, 0, 46)
    Title.Font = Enum.Font.SourceSansSemibold
    Title.Text = 'Bug Report'
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 30.000
    Title.TextStrokeTransparency = 0.500
    Title.TextWrapped = true

    ReportButton.Name = 'ReportButton'
    ReportButton.Parent = Holder
    ReportButton.BackgroundColor3 = Color3.fromRGB(60, 112, 255)
    ReportButton.Position = UDim2.new(0.277115554, 0, 0.769405186, 0)
    ReportButton.Size = UDim2.new(0, 209, 0, 50)
    ReportButton.Font = Enum.Font.GothamBold
    ReportButton.Text = 'Send Report'
    ReportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ReportButton.TextSize = 22.000
    ReportButton.TextStrokeTransparency = 0.500
    ReportButton.TextWrapped = true
    ReportButton.MouseButton1Down:connect(function()
        webhook(Url, 0xFF0000, 'Bug Report', Report.Text)
        wait(1)
        BugReporter:Destroy()
    end)

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = ReportButton

    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = Holder
end

return Module
