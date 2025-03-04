-- Load the DrRay library from the GitHub repository Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("CDTStorm", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Tab 1", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Hello, this is Tab 1.")
tab1.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab1.newToggle("Toggle", "Toggle! (prints the state)", true, function(state)
  _G.racetest = (state and true or false)
            while _G.racetest do
                wait()
            if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == false then
                local chr = game.Players.LocalPlayer.Character
            local car = chr.Humanoid.SeatPart.Parent.Parent
             car:PivotTo(CFrame.new(162.18893432617188, 603.7154541015625, 6352.375))
            chr.Head.Anchored = true
            wait(1)
            chr.Head.Anchored = false
            wait(1)
workspace.Races.RaceHandler.StartLobby:FireServer("Shelby")
            task.wait(15)
workspace.Races.Shelby.Script.Vote:FireServer("5", "Vote")
            repeat wait()
            until game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true or _G.racetest == false
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Menu.Race.Visible == true then
            for i =1,50 do
workspace.Races.Shelby.Script.Checkpoint:FireServer(i)
end
end
end
end)
local example = library:CreateWindow({
    text = "Misc"
  })
  example:AddButton("Force Load Map", function(state)
    for i,v in pairs(workspace:GetDescendants()) do
        if v.ClassName == "Model" then
        spawn(function()
            game.Players.LocalPlayer:RequestStreamAroundAsync(v.WorldPivot.Position,1)
            end)
        wait()
        end
        end
  end)
   
