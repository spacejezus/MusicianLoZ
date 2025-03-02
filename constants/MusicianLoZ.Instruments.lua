-- Adding the Legend of Zelda instruments.

-- Ocarina
	if Musician.INSTRUMENTS["ocarina"] == nil then
        Musician.INSTRUMENTS["ocarina"] = {
	            path = "Interface\\AddOns\\MusicianLoZ\\instruments\\ocarina",      		-- Path to your instrument folder
	            decay = 150,                                                        		-- Decay duration in milliseconds
	            isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
	            isPlucked = false,                                                  		-- Set to true for plucked instruments such as guitar, harp etc.
	            midi = 79,  --ocarina                                               		-- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
	            loop = { 4, 5 },                                                    		-- Only needed for continuous instruments. The sample will be looped randomly after 4 and 5 seconds
				crossfade = 150,															-- Crossfade in milliseconds
	            color = { 0.00, 1.00, 0.59 },                                       		-- r, g, b
	            source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
        }

        -- Insert the ocarina before recorder
        local i = 1
       while Musician.INSTRUMENTS_AVAILABLE[i] ~= "recorder" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
        table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "ocarina")
    end

-- Glockenspiel
	if Musician.INSTRUMENTS["glockenspiel"] == nil then
        Musician.INSTRUMENTS["glockenspiel"] = {
	            path = "Interface\\AddOns\\MusicianLoZ\\instruments\\glockenspiel",      	-- Path to your instrument folder
	            decay = 1000,                                                        		-- Decay duration in milliseconds
	            isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
	            isPlucked = true,                                                  			-- Set to true for plucked instruments such as guitar, harp etc.
	            midi = 9,  --glockenspiel                                               	-- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
	            color = { 0.78 / 1.25, 0.61 / 1.25, 0.43 / 1.25 },                          -- r, g, b
	            source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
        }

        -- Insert the glockenspiel before percussions
        local i = 1
       while Musician.INSTRUMENTS_AVAILABLE[i] ~= "percussions" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
        table.insert(Musician.INSTRUMENTS_AVAILABLE, i - 1, "glockenspiel")
    end

-- Banjo
	if Musician.INSTRUMENTS["banjo"] == nil then
		Musician.INSTRUMENTS["banjo"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\banjo",		      	-- Path to your instrument folder
				decay = 200,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = true,                                                  			-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 105,  --banjo		                                               	-- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				color = { 1.00, 0.49 * 1.5, 0.04 * 1.5 },                                   -- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the banjo after lute
		local i = 1
	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "lute" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "banjo")
	end

-- Sheik Harp
	if Musician.INSTRUMENTS["sheikharp"] == nil then
		Musician.INSTRUMENTS["sheikharp"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\sheikharp",		    -- Path to your instrument folder
				decay = 500,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = true,                                                  			-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 106,  --Shamisen			                                            -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				color = { 1.00, 0.96, 0.85 },                                   			-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the sheikharp before harp
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "harp" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "sheikharp")
	end

-- Choir Male
	if Musician.INSTRUMENTS["choirmale"] == nil then
		Musician.INSTRUMENTS["choirmale"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\choirmale",		    -- Path to your instrument folder
				decay = 100,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = false,                                                  		-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 85,  --Lead6Voice			                                        -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				loop = { 3, 4 },															-- Only needed for continuous instruments. The sample will be looped randomly after 3 and 4 seconds
				crossfade = 100,															-- Crossfade in milliseconds
				color = { 0.00, 0.44, 0.87 },			                                  	-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the choirmale before male_voice
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "male_voice" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "choirmale")
	end

-- Choir Female
	if Musician.INSTRUMENTS["choirfemale"] == nil then
		Musician.INSTRUMENTS["choirfemale"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\choirfemale",		    -- Path to your instrument folder
				decay = 100,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = false,                                                  		-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 91,  --Pad4Choir				                                        -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				loop = { 3, 4 },															-- Only needed for continuous instruments. The sample will be looped randomly after 3 and 4 seconds
				crossfade = 100,															-- Crossfade in milliseconds
				color = { 0.41, 0.80, 0.94 },			                                  	-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the choirfemale before female_voice
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "female_voice" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "choirfemale")
	end

-- Ganon's Organ
	if Musician.INSTRUMENTS["ganonorgan"] == nil then
		Musician.INSTRUMENTS["ganonorgan"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\ganonorgan",		    -- Path to your instrument folder
				decay = 40,                                                        			-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = false,                                                  		-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 20,  --ReedOrgan				                                        -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				loop = { 4, 5 },															-- Only needed for continuous instruments. The sample will be looped randomly after 4 and 5 seconds
				color = { 0.85 * .8, 0.95 * .8, 1 },			                            -- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the ganonorgan before bagpipe
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "bagpipe" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "ganonorgan")
	end

-- Harpsichord
	if Musician.INSTRUMENTS["harpsichord"] == nil then
		Musician.INSTRUMENTS["harpsichord"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\harpsichord",		    -- Path to your instrument folder
				decay = 200,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = true,                                                  			-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 6,  --Harpsichord				                                    -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				color = { 1.00, 1.00, 1.00 },			                            		-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the harpsichord before piano
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "piano" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "harpsichord")
	end

-- Varimba (Marimba mapped to Vibraphone)
	if Musician.INSTRUMENTS["varimba"] == nil then
		Musician.INSTRUMENTS["varimba"] = {
			path = "Interface\\AddOns\\MusicianLoZ\\instruments\\varimba",					-- Path to your instrument folder
			decay = 1000,																	-- Decay duration in milliseconds
			isPercussion = false,															-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
			isPlucked = true,																-- Set to true for plucked instruments such as guitar, harp etc.
			midi = 11, -- Vibraphone														-- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
			color = { 0.78 / 1.25, 0.61 / 1.25, 0.43 / 1.25 },								-- r, g, b
			source = "Xadra's LoZ Soundfont"												-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}
	
		-- Insert the varimba before the marimba
		local i = 1
		while Musician.INSTRUMENTS_AVAILABLE[i] ~= "percussions" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i - 2, "varimba")
	end

-- Piccolo
	if Musician.INSTRUMENTS["piccolo"] == nil then
		Musician.INSTRUMENTS["piccolo"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\piccolo",		    	-- Path to your instrument folder
				decay = 150,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = false,                                                  		-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 72,  --Piccolo				                                        -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				loop = { 4, 5 },															-- Only needed for continuous instruments. The sample will be looped randomly after 4 and 5 seconds
				crossfade = 150,															-- Crossfade in milliseconds
				color = { 0.00, 1.00, 0.59 },			                            		-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the piccolo before recorder
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "recorder" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i - 1, "piccolo")
	end

-- Pizzicato Strings
	if Musician.INSTRUMENTS["pizzicatostrings"] == nil then
		Musician.INSTRUMENTS["pizzicatostrings"] = {
				path = "Interface\\AddOns\\MusicianLoZ\\instruments\\pizzicatostrings",		-- Path to your instrument folder
				decay = 500,                                                        		-- Decay duration in milliseconds
				isPercussion = false,                                               		-- Act as a percussion instrument using the single sample file (without extension) from path or picked from pathList using keyMod or roundRobin methods
				isPlucked = true,                                                  			-- Set to true for plucked instruments such as guitar, harp etc.
				midi = 45,  --Pizzicato Strings				                                -- General MIDI instrument ID (0-127). For percussions, midi is its MIDI ID + 128
				color = { 1.00, 0.49, 0.04 },			                            		-- r, g, b
				source = "Xadra's LoZ Soundfont"                                    		-- Credits to author, software, library etc used to create the instrument. Displayed in the "About" window.
		}

		-- Insert the pizzicatostrings before fiddle
		local i = 1
   	   while Musician.INSTRUMENTS_AVAILABLE[i] ~= "fiddle" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
		table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "pizzicatostrings")
	end