-----------------------------------
-- Copyright (c) 2025 LoxleyXI
-----------------------------------
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see http://www.gnu.org/licenses/
-----------------------------------
-- (Special thanks to Noomi for inspiring this addon!)
-----------------------------------
addon.name    = "pos"
addon.author  = "Loxley"
addon.version = "1.0"
addon.desc    = "Copies character position to clipboard"
addon.link    = "https://github.com/LoxleyXI/ashita-addons"

require("common")

ashita.events.register("command", "cb_HandleCommand", function (e)
    if string.sub(string.lower(e.command),1,4) ~= "/pos" then
        return
    end

    local player = GetPlayerEntity()

    local rot = math.deg(player["Movement"]["LocalPosition"]["Yaw"])

    if rot < 0 then
        rot = 360 + rot
    end

    rot = math.round((rot / 360) * 255)

    local out = string.format(
        "{ %.3f, %.3f, %.3f, %d }, -- !pos %.3f %.3f %.3f %d",
        player["Movement"]["LocalPosition"]["X"],
        player["Movement"]["LocalPosition"]["Z"],
        player["Movement"]["LocalPosition"]["Y"],
        rot,
        player["Movement"]["LocalPosition"]["X"],
        player["Movement"]["LocalPosition"]["Z"],
        player["Movement"]["LocalPosition"]["Y"],
        AshitaCore:GetMemoryManager():GetParty():GetMemberZone(0)
    )

    print(out)
    ashita.misc.set_clipboard(out)
end)
