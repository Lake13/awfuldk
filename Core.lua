local Unlocker, awful, awful_dk = ...
if awful.player.class2 ~= "DEATHKNIGHT" then return end

awful.DevMode = true
awful.ttd_enabled = true

awful_dk.saved = awful.NewConfig("awfuldk")

if not awful_dk.dk then awful_dk.dk = {} end

local dk = awful_dk.dk
local ready = awful.player.class2 == "DEATHKNIGHT" and awful.player.specIndex == 3
dk.ready = ready

dk.unholy = awful.Actor:New({
    spec = 3,
    class = "deathknight",
})