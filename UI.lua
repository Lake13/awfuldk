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

cmd:New(function(msg)
    if msg == "spells" then
        local i = 1
        local spells = {};

        -- overwrite or create new spells file
        local fileName = awful.player.class .. '-spells.txt'
        WriteFile(fileName, "", false)

        -- Get spells
        while true do
            local spellName, spellSubName, spellId = GetSpellBookItemName(i, BOOKTYPE_SPELL)
            if not spellName then do break end end

            -- create tables with spell names as keys with empty tables
            if spells[spellName] == nil then spells[spellName] = {} end

            -- insert spell to spell table
            table.insert(spells[spellName], spellId)

            i = i + 1
        end

        -- Write spells to file
        for spellName, spellIds in pairs(spells) do
            -- rename spells to camelCase
            local formatedSpellName = spellName:gsub('%s+', ''):gsub("^%a", string.lower)

            -- Write line with formatted spell name and new spell
            WriteFile(fileName, formatedSpellName .. "= NS({ ", true)

            -- reverse spell ids so higher ranks are first
            local rev = {}
            for i = #spellIds, 1, -1 do rev[#rev + 1] = spellIds[i] end

            for j, spellId in pairs(rev) do WriteFile(fileName, tostring(spellId) .. ", ", true) end

            WriteFile(fileName, "}),\n", true)
        end
        print('Spells Written to ' .. fileName)
    end
end)