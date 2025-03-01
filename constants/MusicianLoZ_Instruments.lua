if Musician.INSTRUMENTS["ocarina"] == nil then
        Musician.INSTRUMENTS["flute"] = {
	            path = "Interface\\AddOns\\MusicianLoZ\\instruments\\ocarina",      -- Path to your instrument folder
	            decay = 150,                                                        -- Decay duration in milliseconds
	            isPercussion = false,                                               -- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
	            isPlucked = false,                                                  -- Set to true for plucked instruments such as guitar, harp etc.
	            midi = 79,                                                          -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
	            loop = { 4, 5 },                                                    -- Only needed for continuous instruments. The sample will be looped randomly after 4 and 5 seconds
	            color = { 0.00, 1.00, 0.59 },                                          -- r, g, b
	            source = "Xadra's LoZ Soundfont"                                    -- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
        }

        -- Insert the ocarina after Dizi
        local i = 1
        while Musician.INSTRUMENTS_AVAILABLE[i] ~= "dizi" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
        table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "ocarina")
    end
