local AddParticles = game.AddParticles
local PrecacheParticleSystem = PrecacheParticleSystem

AddParticles("particles/muzzleflashes_test.pcf")
AddParticles("particles/muzzleflashes_test_b.pcf")
AddParticles("particles/pcfs_jack_muzzleflashes.pcf")
AddParticles("particles/ar2_muzzle.pcf")
AddParticles("particles/matin_catorce_muzzleflashes.pcf")
AddParticles("particles/muzzleflashes_csgo.pcf")
AddParticles("particles/nmrih_extinguisher.pcf")
AddParticles("particles/pcfs_jack_explosions_large.pcf")
AddParticles("particles/pcfs_jack_explosions_medium.pcf")
AddParticles("particles/pcfs_jack_explosions_small.pcf")
AddParticles("particles/pcfs_jack_explosions_incendiary2.pcf")
AddParticles("particles/pcfs_jack_nuclear_explosions.pcf")
AddParticles("particles/pcfs_jack_moab.pcf")
AddParticles("particles/gb5_large_explosion.pcf")
AddParticles("particles/gb5_500lb.pcf")
AddParticles("particles/gb5_100lb.pcf")
AddParticles("particles/gb5_50lb.pcf")
AddParticles("particles/explosions_fx.pcf")
AddParticles("particles/lighter.pcf")
AddParticles("particles/pfx_redux.pcf")
AddParticles("particles/impact_fx.pcf")
AddParticles("particles/water_impact.pcf")

local particles = {
    -- vlv
    "weapon_muzzle_flash_pistol",
    "weapon_muzzle_flash_pistol_elite",
    "weapon_muzzle_flash_pistol_elite_FP",
    "weapon_muzzle_flash_smg",
    "weapon_muzzle_flash_assaultrifle",
    "weapon_muzzle_flash_awp",
    "weapon_muzzle_flash_huntingrifle",
    "weapon_muzzle_flash_autoshotgun",
    "weapon_muzzle_flash_shotgun",
    "weapon_muzzle_flash_shotgun_FP",
    "weapon_muzzle_flash_para",
    "weapon_muzzle_flash_para_FP",
    "weapon_muzzle_flash_taser",
    "explosion_hegrenade_interior",

    -- mif
    "AC_muzzle_rifle",
    "mw_fas2_muzzleflash_suppressed",
    "mw_ins2_shell_eject",
    "mw_fas2_muzzleflash_ar_smoke_barrel",

    -- mzl
    "muzzleflash_4",
    "muzzleflash_6",
    "muzzleflash_ak47",
    "muzzleflash_ak74",
    "muzzleflash_m24",
    "muzzleflash_m79",
    "muzzleflash_M3",
    "muzzleflash_m14",
    "muzzleflash_g3",
    "muzzleflash_FAMAS",
    "muzzleflash_mp5",
    "muzzleflash_shotgun",
    "muzzleflash_smg",
    "muzzleflash_suppressed",
    "muzzleflash_vollmer",
    "muzzleflash_hmg",
    "muzzleflash_p90",
    "muzzleflash_mpx",
    "muzzleflash_pistol_red",
    "muzzleflash_pistol_rbull",
    "muzzleflash_SR25",
    "muzzleflash_MINIMI",
    "muzzleflash_svd",
    "new_ar2_muzzle",
    "matin_mw_muzzleflash_ak",

    -- npc
    "muzzleflash_pistol_npc",
    "muzzleflash_smg_npc",
    "muzzleflash_shotgun_npc",
    "muzzleflash_sniper_npc",
    "muzzleflash_ar2_npc",

    -- hmcd
    "pcf_jack_mf_tpistol",
    "pcf_jack_mf_mshotgun",
    "pcf_jack_mf_msmg",
    "pcf_jack_mf_spistol",
    "pcf_jack_mf_mrifle1",
    "pcf_jack_mf_mrifle2",
    "pcf_jack_mf_mpistol",
    "pcf_jack_mf_suppressed",

    -- oth
    "NMRIH_EXTINGUISHER",

    -- exp
    "[2]sparkle1",
    "Lighter_flame",
    "pcf_jack_nuke_ground",
    "pcf_jack_nuke_air",
    "pcf_jack_moab",
    "pcf_jack_moab_air",
    "cloudmaker_air",
    "cloudmaker_ground",
    "500lb_air",
    "500lb_ground",
    "100lb_air",
    "100lb_ground",
    "50lb_air",
    "pcf_jack_incendiary_ground_sm2",
    "pcf_jack_groundsplode_small3",
    "pcf_jack_smokebomb3",
    "pcf_jack_groundsplode_medium",
    "pcf_jack_groundsplode_large",
    "pcf_jack_airsplode_medium",
    "pcf_jack_airsplode_large",

    -- imp
    "impact_concrete",
    "impact_metal",
    "impact_computer",
    "impact_grass",
    "impact_dirt",
    "impact_wood",
    "impact_glass",
}

for _, name in ipairs(particles) do
    PrecacheParticleSystem(name)
end

--// Fix for homigrad content breaking impact decals (bruh)
if CLIENT then
    RunConsoleCommand("cl_new_impact_effects", "1")
end
