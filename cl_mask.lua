CreateThread(function()
    local lastRan = 0
    local lastMask = 0
    local same = false
    local valid = false

    function PlayMaskAudio(id, gender)
        if not Config.WorkInVehicle and IsPedInAnyVehicle(PlayerPedId(), false) then
            return
        end

        if gender == false then -- Male Ped
            PlayPedAmbientSpeechWithVoiceNative(PlayerPedId(), Config.MaleIndexes[id][1], Config.MaleIndexes[id][2], "SPEECH_PARAMS_FORCE_NORMAL", true)
        else -- Female Ped
            PlayPedAmbientSpeechWithVoiceNative(PlayerPedId(), Config.FemaleIndexes[id][1], Config.FemaleIndexes[id][2], "SPEECH_PARAMS_FORCE_NORMAL", true)
        end
    end

    while true do
        Wait(0)
        local mask = GetPedDrawableVariation(PlayerPedId(), 1)
        -- Check if model is male or not
        if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
            if mask ~= lastMask then
                lastMask = mask
                valid = false

                for k, _ in pairs(Config.MaleIndexes) do
                    if mask == k then
                        valid = true

                        BeginTextCommandDisplayHelp("STRING")
                        AddTextComponentSubstringPlayerName(Config.PromptText)
                        EndTextCommandDisplayHelp(0, 0, 1, 5000)

                        break
                    end
                end
            end

            if valid and IsControlJustPressed(0, Config.ActionKey) then
                if GetGameTimer() > lastRan + Config.Cooldown then
                    PlayMaskAudio(mask, false)
                end
            end
        elseif GetEntityModel(PlayerPedId()) == `mp_f_freemode_01` then 
            if mask ~= lastMask then
                valid = false
                lastMask = mask

                for k, _ in pairs(Config.FemaleIndexes) do
                    if mask == k then
                        valid = true

                        BeginTextCommandDisplayHelp("STRING")
                        AddTextComponentSubstringPlayerName(Config.PromptText)
                        EndTextCommandDisplayHelp(0, 0, 1, 5000)

                        break
                    end
                end
            end

            if valid and IsControlJustPressed(0, Config.ActionKey) then
                if GetGameTimer() > lastRan + Config.Cooldown then
                    PlayMaskAudio(mask, true)
                end
            end
        end
    end
end)