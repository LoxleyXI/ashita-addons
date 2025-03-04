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
addon.name    = "CustomColors"
addon.author  = "Loxley"
addon.version = "1.1"
addon.desc    = "Applies colors to chat messages for custom content"
addon.link    = "https://github.com/LoxleyXI/ashita-addons"

require('common')

local chat     = require('chat')
local messages = require('messages')

local function multicolor(msg, colors, start, parts)
    local out  = msg:sub(1, start - 1)
    local curr = start

    for i, part in pairs(parts) do
        if part ~= nil then
            local remain = msg:sub(curr, -1)
            local f1, f2 = remain:find(part)

            out  = out .. remain:sub(1, f1 - 1) .. chat.color1(colors[i], part)
            curr = curr + f2
        end
    end

    return out .. msg:sub(curr, -1)
end

ashita.events.register('text_in', 'text_in_cb', function (e)
    local id = bit.band(e.mode_modified,  0x000000FF)

    -- NS_SAY and SYSTEM_3 from server
    if id ~= 9 and id ~= 121 then
        return
    end

    local msg = AshitaCore:GetChatManager():ParseAutoTranslate(e.message_modified, true)

    -- This character is handled incorrectly by lua regex capture groups
    -- So we swap it out temporarily
    msg = msg:gsub("-", "ƒ")

    for _, txt in pairs(messages) do
        if type(txt[2]) == "number" then
            local f1, f2 = msg:find(txt[1])

            if f1 ~= nil then
                msg = msg:sub(1, f1 - 1) .. chat.color1(txt[2], msg:sub(f1, -1))
                e.message_modified = msg:gsub("ƒ", "-")

                return
            end
        else
            local start, _, a1, a2, a3, a4, a5, a6, a7, a8 = msg:find(txt[1])

            if start ~= nil then
                msg = multicolor(msg, txt[2], start, { a1, a2, a3, a4, a5, a6, a7, a8 })
                e.message_modified = msg:gsub("ƒ", "-")

                return
            end
        end
    end
end)
