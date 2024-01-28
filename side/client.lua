RegisterCommand("gantinama", function(source, args, rawCommand) -- u can change command whatever u want --
    local src = source
    local input = lib.inputDialog('Change IC Nickname', {
        { type = 'number', label = 'Player ID' },
        { type = 'input', label = 'First Name' },
        { type = 'input', label = 'Last Name' }
    })

    if input then
        local pID = tonumber(input[1])  
        local firstname = input[2]      
        local lastname = input[3]        

        TriggerServerEvent("sonwalens:changename", pID, firstname, lastname)
    end
end, false)

