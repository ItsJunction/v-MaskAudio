Config = {
    ActionKey = 171,    -- Key to play mask audio (https://docs.fivem.net/docs/game-references/controls/#controls)
    Cooldown = 2500,    -- Cooldown in milliseconds (1s = 1000ms)
    WorkInVehicle = true, -- Should the mask play audio when in a vehicle?
    PromptText = "This mask has a special feature! Press ~INPUT_SPECIAL_ABILITY_PC~ to try it out.", -- Text to display when a valid mask is equipped (change this according to yourCommandName ActionKey)

    MaleIndexes = {
        [205] = {"HLWN_22", "Mask_SFX"},
        [216] = {"HLWN_23_A", "Mask_SFX"},
        [217] = {"HLWN_23_C", "Mask_SFX"},
        [218] = {"HLWN_23_D", "Mask_SFX"},
        [219] = {"HLWN_23_E", "Mask_SFX"},
        [220] = {"HLWN_23_B", "Mask_SFX"},
    },

    FemaleIndexes = {
        [206] = {"HLWN_22", "Mask_SFX"},
        [217] = {"HLWN_23_A", "Mask_SFX"},
        [218] = {"HLWN_23_C", "Mask_SFX"},
        [219] = {"HLWN_23_D", "Mask_SFX"},
        [220] = {"HLWN_23_E", "Mask_SFX"},
        [221] = {"HLWN_23_B", "Mask_SFX"},
    }
}