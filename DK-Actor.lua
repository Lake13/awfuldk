local Unlocker, awful, awful_dk = ...
if not awful_dk.dk.ready then return end

local dk = awful_dk.dk
local unholy = dk.unholy

dk.random = math.random(0.035, 0.05) 
unholy:Init(function()
    --Randomize tick rate by a variable amount
    dk.random = math.random(0.035, 0.05)

    print("We have lift off.")

end, dk.random)
