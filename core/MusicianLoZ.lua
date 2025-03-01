--- Extended module: Adds Legend of Zelda Ocarina to Musician.
-- @module MusicianLoZ

MusicianLoZ = LibStub("AceAddon-3.0"):NewAddon("MusicianLoZ")

-- We are going to call our module LoZ (Legend of Zelda), and register it with Musician.
local MODULE_NAME = "LoZ"
Musician.AddModule(MODULE_NAME)

local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata

--- OnInitialize
--
function MusicianLoZ:OnInitialize()
		-- Fix audio settings
		Musician.Utils.AdjustAudioSettings()
end

-- Append MusicianLoZ version in the global version string
--
local hookedMusicianRegistryGetVersionString = Musician.Registry.GetVersionString
function Musician.Registry.GetVersionString()
    return hookedMusicianRegistryGetVersionString() .. " " ..
        "MusicianLoZ=" .. GetAddOnMetadata("MusicianLoZ", "Version")
end

-- Enlarge required cache size
--
if Musician.Utils.GetSoundCacheSize then
	local hookedMusicianUtilsGetSoundCacheSize = Musician.Utils.GetSoundCacheSize
	function Musician.Utils.GetSoundCacheSize()
		return hookedMusicianUtilsGetSoundCacheSize() + MusicianLoZ.SOUND_CACHE_SIZE
	end
end