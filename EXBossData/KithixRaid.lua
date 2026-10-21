---@diagnostic disable: undefined-global
-- Kith'ix (The Unbinding of Kith'ix), encounter 3513.
-- Supplemental hand-maintained raid timeline. The main EncounterData.lua is
-- generated from the upstream encounter catalog, which has not yet picked up
-- this newly released raid. Timings below are Heroic pull-relative observations;
-- later casts are periodic estimates and can vary with phase/difficulty tuning.
local data = _G.EXBOSS_ENCOUNTER_DATA
if type(data) ~= "table" or type(data.maps) ~= "table" then return end

local raid = data.maps[3004]
if type(raid) ~= "table" or type(raid.bosses) ~= "table" then return end

local events = {
    [10001] = { eventID=10001, eventName="Voidswarm", textLabel="Adds / raid damage", eventType="Raid", voiceLabel="Voidswarm", spellID=1301511, evenSpellID=1301511, castType="begincast", castDuration=6, firstSeenSec=5, cdSeriesSec={109,109,109}, severity=2 },
    [10002] = { eventID=10002, eventName="Voidweave", textLabel="Raid DoT", eventType="Raid", voiceLabel="Voidweave", spellID=1302333, evenSpellID=1302333, castType="begincast", castDuration=1.5, firstSeenSec=12.5, cdSeriesSec={109,109,109}, severity=1 },
    [10003] = { eventID=10003, eventName="Digestive Juices", textLabel="Raid DoT", eventType="Raid", voiceLabel="Digestive Juices", spellID=1302319, evenSpellID=1302319, castType="begincast", castDuration=1.5, firstSeenSec=13.27, cdSeriesSec={109,109,109}, severity=1 },
    [10004] = { eventID=10004, eventName="Venom Roar", textLabel="Frontal", eventType="Dodge", voiceLabel="Frontal", spellID=1302884, evenSpellID=1302884, castType="begincast", castDuration=1.5, firstSeenSec=19.55, cdSeriesSec={15.75,93.25}, severity=2 },
    [10005] = { eventID=10005, eventName="Dark Devastation", textLabel="Tankbuster", eventType="Tank", voiceLabel="Tankbuster", spellID=1304930, evenSpellID=1304930, castType="begincast", castDuration=2, firstSeenSec=26, cdSeriesSec={20,20,69}, severity=3 },
    [10006] = { eventID=10006, eventName="Extinguish", textLabel="Raid-wide", eventType="Healer", voiceLabel="Extinguish", spellID=1304424, evenSpellID=1304424, castType="begincast", castDuration=3, firstSeenSec=37.01, cdSeriesSec={57,52}, severity=3 },
    [10007] = { eventID=10007, eventName="Unspeakable Horrors", textLabel="Spread / dispel", eventType="Healer", voiceLabel="Spread", spellID=1304045, evenSpellID=1304045, castType="begincast", castDuration=1.5, firstSeenSec=43, cdSeriesSec={33,76}, severity=2 },
    [10008] = { eventID=10008, eventName="Nightfall", textLabel="Raid damage", eventType="Healer", voiceLabel="Nightfall", spellID=1302705, evenSpellID=1302705, castType="begincast", castDuration=1.5, firstSeenSec=42.2, cdSeriesSec={109,109,109}, severity=2 },
    [10009] = { eventID=10009, eventName="Suffocating Darkness", textLabel="Intermission", eventType="Healer", voiceLabel="Suffocating Darkness", spellID=1302951, evenSpellID=1302951, castType="begincast", castDuration=44, firstSeenSec=57, cdSeriesSec={109,109,109}, severity=3 },
    [10010] = { eventID=10010, eventName="Abyssal Grasp", textLabel="Healing absorb", eventType="Healer", voiceLabel="Abyssal Grasp", spellID=1303406, evenSpellID=1303406, castType="begincast", castDuration=1.5, firstSeenSec=62.01, cdSeriesSec={26.99,82.01}, severity=2 },
    [10011] = { eventID=10011, eventName="Divine Radiance", textLabel="Liadrin / phase event", eventType="Other", voiceLabel="Divine Radiance", spellID=1303169, evenSpellID=1303169, castType="begincast", castDuration=1.5, firstSeenSec=101.01, cdSeriesSec={109,109,109}, severity=1 },
}

raid.bosses[3513] = {
    encounterID = 3513,
    bossName = "Kith'ix",
    bossOrder = #(raid.bossOrder or {}) + 1,
    journalEncounterID = 0,
    creatureDisplayID = 0,
    creatureFileDataID = 0,
    spellIconFileID = 1301511,
    events = events,
}
raid.bossOrder = raid.bossOrder or {}
raid.bossOrder[#raid.bossOrder + 1] = 3513

-- Use the fixed pull-relative axis so EXBoss can build Bun/Timer bars even
-- before the Blizzard encounter timeline has announced the first ability.
_G.EXBOSS_FIXED_TIMELINE_ENCOUNTERS = _G.EXBOSS_FIXED_TIMELINE_ENCOUNTERS or {}
_G.EXBOSS_FIXED_TIMELINE_ENCOUNTERS[3513] = true
_G.EXBOSS_ENCOUNTER_TRIGGERS = _G.EXBOSS_ENCOUNTER_TRIGGERS or {}
_G.EXBOSS_ENCOUNTER_TRIGGERS[3513] = { trigger = "TIME" }
