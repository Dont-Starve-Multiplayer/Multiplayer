require "class"
require "screens/pausescreen"
local easing = require "easing"

local trace = function() end

local CLICK_WALK_TIME = .5

local prefabs =
{
}


local PlayerController_multiplayer = Class(function(self, inst)
    self.inst = inst
    self.enabled = true
    
    
    self.inputhandlers = {}

    table.insert(self.inputhandlers, TheInput:AddKeyUpHandler(KEY_P, function() self:Enable() end))
	
    

end)

function PlayerController_multiplayer:Enable()
    local socket = require("socket")
    
    local spider = SpawnPrefab("spider")
    
    local pt = GetPlayer():GetPosition()
    
    spawner.Transform:SetPosition(pt.x+1, pt.y, pt.z+1) 
    
    
    
    
end