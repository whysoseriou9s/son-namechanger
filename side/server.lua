-- Events
RegisterNetEvent("sonwalens:changename")
AddEventHandler("sonwalens:changename", function(pID, firstname, lastname)
    local src = source
    local name = GetPlayerName(src)
    local xPlayer = ESX.GetPlayerFromId(pID)
    if pID ~= nil and firstname ~= nil and lastname ~= nil then
        if xPlayer then
            MySQL.Async.execute('UPDATE users SET firstname = @firstname, lastname = @lastname WHERE identifier = @identifier', {
                ['@firstname'] = firstname,
                ['@lastname'] = lastname,
                ['@identifier'] = xPlayer.identifier
            })
            -- Notify that the name change was successful
            TriggerClientEvent('esx:showNotification', pID, 'Your name has been changed by an administrator.')
        else
            -- Notify that the specified ID is not online
            TriggerClientEvent('esx:showNotification', src, 'Player with ID ' .. pID .. ' is not online.')
        end
    else
        print('Invalid parameters')
    end
end)

