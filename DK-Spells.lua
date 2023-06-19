local Unlocker, awful, awful_dk = ...
if not awful_dk.dk.ready then return end

local dk = awful_dk.dk
local unholy = dk.unholy

local Spell = awful.NewSpell
local spells = {

}

awful.Populate(spells, unholy, getfenv(1))

local hookCallbacks = awful.hookSpellCallbacks

local gcdRemains, gcd = awful.gcdRemains, awful.gcd
hookCallbacks(function() 
    gcdRemains, gcd = awful.gcdRemains, awful.gcd
end)