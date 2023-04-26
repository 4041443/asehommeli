-- lolz paskaa koodia homo homo homo
local playerPed = GetPlayerPed()
local playerPed = GetPlayerPed()

    -- Aseitten spawnit ja hashit täältä > https://wiki.fivem.net/wiki/Weapons
    function giveWeapon(weaponHash)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 999, false)
    end

    -- Täält löydät kaiken paskan https://wiki.fivem.net/wiki/Weapon_Components
    function weaponComponent(weaponHash, component)
        if HasPedGotWeapon(PlayerPedId(-1), GetHashKey(weaponHash), false) then
            GiveWeaponComponentToPed(PlayerPedId(-1), GetHashKey(weaponHash), GetHashKey(component))
         end
    end

    RegisterCommand('ase1', function()
            weaponComponent("weapon_combatpistol", "COMPONENT_AT_PI_SUPP")
            weaponComponent("weapon_combatpistol", "COMPONENT_COMBATPISTOL_CLIP_02")
    end, false)
    TriggerEvent('chat:addSuggestion', '/ase1')

    RegisterCommand('ase2', function()
        weaponComponent("weapon_smg", "COMPONENT_AT_PI_SUPP")
        weaponComponent("weapon_smg", "COMPONENT_SMG_CLIP_03")
end, false)
TriggerEvent('chat:addSuggestion', '/ase2')

RegisterCommand('ase3', function()
    weaponComponent("weapon_assaultrifle", "COMPONENT_ASSAULTRIFLE_CLIP_03")
    weaponComponent("weapon_assaultrifle", "COMPONENT_AT_AR_SUPP_02")
    weaponComponent("weapon_assaultrifle", "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE")
end, false)
TriggerEvent('chat:addSuggestion', '/ase3')