local Unlocker, awful, awful_dk = ...
if not awful_dk.dk.ready then return end

local dk = awful_dk.dk

--Placeholder because I don't feel like creating a ui
local white = {255, 255, 255, 1}
local _, _, cmd = awful.UI:New("dk", {
    title = "Death Knight",
    show = false,
    width = 1,
    height = 1,
    sidebar = false,
    colors = {
        title = white,
        primary = white,
        accent = white,
        background = white
    }
})

dk.cmd = cmd