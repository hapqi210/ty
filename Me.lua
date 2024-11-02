_G.AUTOHAKI = true
spawn(function()
	while wait(.1) do
		if _G.AUTOHAKI then 
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {
					[1] = "Buso"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end
end)
LocalPlayer = game:GetService("Player").LocalPlayer
Char = LocalPlayer.Character
_G.AutoFarm = true
local GetQuests =function(N,NB)
      local args = {
    [1] = "StartQuest",
    [2] = N or "BanditQuest1",
    [3] = NB or 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end;local ChackQ = function()
    local Lv = LocalPlayer.Data.Level
     if Lv.Value >= 1 and Lv.Value <9 then
           retrun {
               ["Mon"] ='Bandit'
               ["NumQ"] = 'BanditQuest1'
               ["NameQ"] = '1'
               ["CFrameQ"] = CFrame.new(1091.69849, 14.9715757, 1607.15869, -0.54046911, -3.37374373e-09, 0.841363847, 2.96100975e-08, 1, 2.30305659e-08, -0.841363847, 3.73601736e-08, -0.54046911)
               ["CFrameMon"] = CFrame.new(1122.36121, 14.179883, 1568.91919, 0.84017241, -0.3418262, -0.421028703, 0.140510023, 0.887043476, -0.439784884, 0.52380079, 0.310336381, 0.793299496)
             }
      elseif Lv.Value >= 10 and Lv.Value <= 9e99 then
             retrun {
             	 ["Mon"] = 'Money'
                 ["NumQ"] = 'JungleQuest'
                 ["NameQ"] = 1,
                 ["CFrameQ"] = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)      
                 ["CFrameMon] = CFrame.new(1619.10632, 21.7005882, 142.148117, 0.342042625, -0.000311157171, 0.939684391, 0.000113111477, 0.99999994, 0.000289957155, -0.939684391, 7.11137545e-06, 0.342042685)
                 }
            end
      end;
 function StopTween(target)
	if not target then
		tween:Cancel()
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
		wait(0.2)
	end
end
       
       
           	
