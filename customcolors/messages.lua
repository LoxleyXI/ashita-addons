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
-- https://github.com/LoxleyXI/ashita-addons
-----------------------------------
local item     = "[A-Za-z0-9%_%'%.%: ]+"
local messages =
{
    -- === Your custom messages here ===
    -- { Pattern, { Colors } },

    -- === HELM ===
    { "Harvesting is possible here if you have a (sickle)%.", { 2 } },
    { "You successfully harvest an* (" .. item .. ")%!", { 2 } },
    { "You harvest an* (" .. item .. "), but your (sickle) breaks.", { 2, 2 } },
    { "Your (sickle) breaks%!", { 2 } },

    { "Logging is possible here if you have a (hatchet)%.", { 2 } },
    { "You successfully cut off an* (" .. item .. ")%!", { 2 } },
    { "You cut off an* (" .. item .. "), but your (hatchet) breaks in the process%.", { 2, 2 } },
    { "Your (hatchet) breaks%!", { 2 } },

    { "Mining is possible here if you have a (pickaxe)%.", { 2 } },
    { "You successfully dig up an* (" .. item .. ")%!", { 2 } },
    { "You dig up an* (" .. item .. "), but your (pickaxe) breaks in the process%.", { 2, 2 } },
    { "Your (pickaxe) breaks%!", { 2 } },

    -- CatsEyeXI specific custom content
    -- === Ventures ===
    { "You defeated a venture target%. %(Progress: %d+/%d+%)",                        69 },
    { "You defeated a dynamis venture target%. %(Progress: %d+/%d+%)",                69 },
    { "You accumulate %d+ special venture objective points*%. %(Progress: %d+/%d+%)", 69 },
    { "You have completed a special venture objective%. %(Progress: %d+/%d+%)",       69 },
    { "You have successfully completed the venture%.",                                69 },
    { "Your venture begins anew%.",                                                   69 },
    { "Your venture has expired%.",                                                   68 },
    { "Dynamis Prowess Increased %(%d+%/%d+%)%!",                                     69 },
    { "Dynamis Prowess Increased%!",                                                  69 },

    -- === Trials ===
    { "([A-Za-z]+ Trial) %[(" .. item .. ")%] (%d+/%d+) %((" .. item .. ")( in )(" .. item .. ")(%))", { 69, 2, 69, 86, 69, 105, 69 } },
    { "\129\154 Trial [A-Za-z0-9%_%'%.%: ]*Complete! \129\154", 69 },
    { "\129\154 Step Complete! \129\154", 69 },
    { "Your Adept trials have been reset%!", 68 },
    { "\129\158 Quest Cancelled", 68 },

    -- === Domain Invasion ===
    { "You have completed a domain invasion objective%. %(Progress: %d+/%d+%)",       69 },
    { "You have successfully completed a domain invasion rotation%! %(Total: %d+%)",  69 },
    { "You have successfully completed a domain invasion rotation!",                  69 },

    -- === Incursion ===
    { "New Objective%: Defeat", 69 },
    { "Incursion %[" .. item .. "%]", 69 },
    { "(%d+ pieces of missed currency) were stored at Garet%.", { 2 } },
    { "Bonus Objective%:", 69 },

    -- === Clamming ===
    { "You find an* (" .. item .. ") and toss it into your bucket%.", { 2 } },

    -- === Ephemeral Box (Crystal Warrior) ===
    { "You store (" .. item .. ") (x%d+) %(Total%: (%d+)%) ([A-Za-z]+) \129\168 ([A-Za-z]+)", { 2, 78, 109, 86, 105 } },
    { "You store (" .. item .. ") (x%d+) %(Total%: (%d+)%)", { 2, 78, 109 } },
    { "You store a (scroll of " .. item .. ") %(([A-Za-z ]+) \129\168 ([A-Za-z]+)%)", { 2, 86, 105 } },
    { "Ephemeral Box : I have (%d+) (" .. item .. ")%. %(([A-Za-z]+) \129\168 ([A-Za-z]+)%)", { 109, 2, 86, 105 } },
    { "You have already stored a (scroll of " .. item .. ")%.", { 2 } },
    { "You have a (scroll of " .. item .. ") currently in storage %(([A-Za-z ]+) \129\168 ([A-Za-z]+)%)", { 2, 86, 105 } },
    { "You scrap a (scroll of " .. item .. ") for (%d+ gil) %((Already stored)%)", { 2, 109, 105 } },
}

return messages
