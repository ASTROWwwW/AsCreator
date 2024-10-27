RegisterNetEvent("astrxw:creator:save:identity", function(ident)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- Faire une requête pour obtenir l'UniqueID du joueur
    local result = MySQL.query.await("SELECT UniqueID FROM users WHERE identifier = @identifier", {
        ["@identifier"] = xPlayer.identifier
    })
    
    if result[1] then -- Vérifie si on a bien un résultat
        local uniqueID = result[1].UniqueID -- Récupère l'UniqueID depuis le premier résultat

        -- Exécuter la requête de mise à jour sans reset des comptes, inventaires, et loadouts
        MySQL.update("UPDATE users SET firstname = ?, lastname = ?, height = ?, sex = ?, dateofbirth = ?, playerName = ? WHERE UniqueID = ?", {
            ident.firstname,
            ident.lastname,
            ident.height,
            ident.sex,
            ident.age,
            xPlayer.getName(),
            uniqueID
        }, function(affectedRows)
            if affectedRows > 0 then
                TriggerClientEvent('esx:showNotification', source, 'Identité enregistrée avec succès !')
                print(('Identité de %s (UniqueID: %s) enregistrée avec succès.'):format(GetPlayerName(source), uniqueID))
            else
                TriggerClientEvent('esx:showNotification', source, 'Erreur lors de l\'enregistrement de l\'identité.')
                print(('Erreur lors de l\'enregistrement de l\'identité de %s (UniqueID: %s).'):format(GetPlayerName(source), uniqueID))
            end
        end)
    else
        TriggerClientEvent('esx:showNotification', source, 'Impossible de récupérer l\'UniqueID.')
        print(('Impossible de récupérer l\'UniqueID pour %s.'):format(GetPlayerName(source)))
    end
end)




RegisterNetEvent('creator:finishPersonnage', function(skinn)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if not xPlayer then return end

    Wait(100)
    print(('Player %s finished character'):format(GetPlayerName(source)))

  
    SetPlayerRoutingBucket(source, 0)
end)
ESX = exports["es_extended"]:getSharedObject()
 RegisterCommand('register', function(source, args)
     TriggerClientEvent('astrxw:createPlayer', source)
end)

RegisterNetEvent('astrxw:caca:setInstance', function()
    local source = source
    Wait(100)
    SetPlayerRoutingBucket(source, source)
end)

RegisterNetEvent('astrxw:caca:sortInstance', function()
    local source = source
    SetPlayerRoutingBucket(source, 0)
end)

