local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

local Window = OrionLib:MakeWindow({Name = "Budgie Hub | Script Helper", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
  Name = "Tools",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
 Name = "Copy equipped tool name",
 Callback = function()
      setclipboard(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name)
   end    
})

Tab:AddButton({
 Name = "Copy equipped tool texture",
 Callback = function()
     setclipboard(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").TextureId)
   end    
})

Tab:AddButton({
 Name = "Print tool information",
 Callback = function()
      local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
      
      print("--- Value Bases ---")
      
      for _, val in next, tool:GetDescendants() do
        if val:IsA("ValueBase") then
          print(val.ClassName, val:GetFullName(), val.Value)
        end
      end
      print("--- Attributes ---")
      for atname, atval in next, tool:GetAttributes() do
        print(tool:GetFullName(), atname, atval)
      end
      for _, obj in next, tool:GetDescendants() do
        for atname, atval in next, obj:GetAttributes() do
          print(obj:GetFullName(), atname, atval)
        end
      end
      
      print("--- Upvalues, Constants and Protos of tool.Activated ---")
for _, con in next, getconnections(tool.Activated) do
  for i, d in next, debug.getconstants(con.Function) do
    print("constant:", i, d)
  end
  for i, u in next, debug.getupvalues(con.Function) do
    print("upvalue:", i, u)
  end
  for i, p in next, debug.getprotos(con.Function) do
    print("proto:", i, p, debug.getinfo(p).name)
  end
end
   end    
})

local Tab = Window:MakeTab({
  Name = "Gui",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
 Name = "Print all showed guis in PlayerGui",
 Callback = function()
      for _, gui in next, game.Players.LocalPlayer.PlayerGui:GetDescendants() do
         if gui:IsA("ScreenGui") and gui.Enabled == true then
            print(gui:GetFullName())
         end
      end
   end    
})

Tab:AddButton({
 Name = "Print all hidden guis in PlayerGui",
 Callback = function()
      for _, gui in next, game.Players.LocalPlayer.PlayerGui:GetDescendants() do
         if gui:IsA("ScreenGui") and gui.Enabled == false then
            print(gui:GetFullName())
         end
      end
   end    
})

Tab:AddButton({
 Name = "Print all guis in CoreGui",
 Callback = function()
      for _, gui in next, game.CoreGui:GetDescendants() do
         if gui:IsA("ScreenGui") then
            print(gui:GetFullName(), "Enabled: " .. gui.Enabled)
         end
      end
   end    
})

Tab:AddButton({
 Name = "Print all guis in gethui",
 Callback = function()
     for _, gui in next, gethui:GetDescendants() do
         if gui:IsA("ScreenGui") then
            print(gui:GetFullName(), "Enabled: " .. gui.Enabled)
         end
      end
   end    
})

local Tab = Window:MakeTab({
 Name = "Place",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "Copy place id",
 Callback = function()
      setclipboard(tostring(game.PlaceId))
   end    
})

Tab:AddButton({
 Name = "Copy universe id",
 Callback = function()
     setclipboard(tostring(game.GameId))
   end    
})

local Tab = Window:MakeTab({
	Name = "RemoteEvents",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
 Name = "Print all RemoteEvent and RemoteFunction",
 Callback = function()
      for _, rem in next, game:GetDescendants() do
         if rem:IsA("RemoteEvent") or rem:IsA("RemoteFunction") then
           print(rem.ClassName, rem:GetFullName())
         end
      end
   end    
})

Tab:AddButton({
 Name = "Print all BindableEvent",
 Callback = function()
      for _, be in next, game:GetDescendants() do
        if be:IsA("BindableEvent") then
          print(be:GetFullName())
        end
      end
   end    
})

Tab:AddButton({
 Name = "Print all Remote in ReplicatedStorage",
 Callback = function()
      for _, rem in next, game:GetDescendants() do
         if (rem:IsA("RemoteEvent") or rem:IsA("RemoteFunction")) and rem:IsDescendantOf(game.ReplicatedStorage) or rem:IsDescendantOf(game.RobloxReplicatedStorage) then
           print(rem:GetFullName())
         end
      end
   end    
})

local Tab = Window:MakeTab({
 Name = "Self",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
  Name = "Player"
})

Tab:AddButton({
 Name = "Copy user id",
 Callback = function()
     setclipboard(tostring(game.Players.LocalPlayer.CharacterAppearanceId))
   end    
})

Tab:AddButton({
 Name = "Copy client id",
 Callback = function()
     setclipboard(tostring(game:GetService("RbxAnalyticsService"):GetClientId()))
   end    
})

local Section = Tab:AddSection({
  Name = "Character"
})

Tab:AddButton({
 Name = "Copy character position",
 Callback = function()
     setclipboard(tostring(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart").Position))
   end    
})

local Tab = Window:MakeTab({
  Name = "Scripts",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
 Name = "Print all scripts in getscripts",
 Callback = function()
      for _, scr in next, getscripts() do
        print(scr.ClassName, scr:GetFullName())
      end
   end    
})

Tab:AddButton({
 Name = "Print all loaded modules",
 Callback = function()
      for _, modul in next, getloadedmodules() do
        print(modul:GetFullName())
      end
   end    
})

Tab:AddButton({
 Name = "Print all scripts in game",
 Callback = function()
      for _, scri in next, game:GetDescendants() do
        if scri:IsA("LocalScript") or scri:IsA("Script") then
          print(scri.ClassName, scri:GetFullName())
        end
      end
   end    
})

local Tab = Window:MakeTab({
 Name = "Other",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "Http spy",
 Callback = function()
     loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Http-Spy-41029"))()
   end    
})

Tab:AddButton({
 Name = "Audio logger",
 Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHUOriginal/refs/heads/main/Guis/AudioLoggerV2"))()
   end    
})

Tab:AddButton({
 Name = "Tool gun",
 Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Tool/refs/heads/main/Tool%20Gun"))()
   end    
})

Tab:AddButton({
 Name = "Subplace finder",
 Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHUOriginal/refs/heads/main/Guis/SubplaceFinder"))()
   end    
})

Tab:AddButton({
 Name = "Animation Logger",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Animation-Logger/main/Gui"))()
   end    
})

Tab:AddButton({
 Name = "Remote spy",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
   end    
})
