# CM Notifications for QBCore Framework

A simple FiveM notification system for use with the QBCore Framework, based off mythic_notify

https://github.com/minuka05/cmNotify

Forked From - https://github.com/maejok-xx/mythic_notify
## Preview

## Installation

- **Replace** the `QBCore.Functions.Notify()` function in _**./qb-core/client/functions.lua:128**_
```lua
function QBCore.Functions.Notify(text, texttype, length)
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        texttype = texttype or 'primary'
        length = length or 5000
        SendNUIMessage({
            action = 'notify',
            type = texttype,
            length = length,
            text = ttext,
            caption = caption
        })
    else
        texttype = texttype or 'primary'
        length = length or 5000
        SendNUIMessage({
            action = 'notify',
            type = texttype,
            length = length,
            text = text
        })
    end
end
```

- **Replace the above code  with the following**
```lua
function QBCore.Functions.Notify(text, textype, length)
    if textype == "primary" then textype = "inform" end
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['cmNotify']:DoCustomHudText(ttype, ttext, length, caption)
    else
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['cmNotify']:DoCustomHudText(ttype, text, length)
    end
end
```
