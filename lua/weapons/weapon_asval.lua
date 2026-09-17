SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "AS «Val»"
SWEP.Author = "TsNIITochmash Tula arms plant"
SWEP.Instructions = "An incredibly potent armament, this steel/polymer 9x39mm gas-operated, selective-fire, integrally suppressed rifle, the ASVAL, is the epitome of Soviet special operations units in the mid-1980s. With a 20-round-capacity magazine, a folding stock, and a pistol grip, it's designed for precision and stealth. Its unique design allows it to fire subsonic ammunition, reducing muzzle flash and report to a mere whisper. This makes the ASVAL a formidable weapon in the right hands, symbolizing the silent but deadly efficiency of specialized warfare. \n\nRate of fire 900 rounds per minute"
SWEP.Category = "Weapons - Assault Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"
SWEP.WorldModelFake = "models/weapons/ump45_ins1/c_sr_val.mdl"

SWEP.FakePos = Vector(-10.5, 3.92, 8.35)
SWEP.FakeAng = Angle(0, 0, 0)
SWEP.AttachmentPos = Vector(1,0,0.5)
SWEP.AttachmentAng = Angle(0,0,0)


SWEP.FakeAttachment = "muzzle"


SWEP.FakeEjectBrassATT = "shell"
SWEP.FakeReloadSounds = {
	[0.32] = "weapons/tfa_ins2/akm_bw/magout.wav",
	[0.8] = "weapons/ak47/ak47_magin.wav",
}
SWEP.DOZVUK = true

SWEP.FakeEmptyReloadSounds = {
	[0.3] = "weapons/tfa_ins2/akm_bw/magout.wav",
	[0.65] = "weapons/ak47/ak47_magin.wav",
	[0.92] = "weapons/ak47/ak47_boltback.wav",
	[0.97] = "weapons/ak47/ak47_boltrelease.wav"
}

SWEP.MagModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_custom_sawed_off_762x39_10.mdl"

local vector_full = Vector(1,1,1)
local vecPochtiZero = Vector(0.01,0.01,0.01)

if CLIENT then
	SWEP.FakeReloadEvents = {
		[0.15] = function( self, timeMul )
			self:GetWM():ManipulateBoneScale(105, vector_full)
		end,
		[0.52] = function( self, timeMul )
			hg.CreateMag( self, Vector(0,0,-50) )
			self:GetWM():ManipulateBoneScale(105, vector_full)
		end,
	
		[0.92] = function( self, timeMul )
			self:GetWM():ManipulateBoneScale(105, vector_full)
		end
	}
end

SWEP.lmagpos = Vector(0,0,0)
SWEP.lmagang = Angle(0,0,0)
SWEP.lmagpos2 = Vector(0,2,-6)
SWEP.lmagang2 = Angle(0,0,-90)

SWEP.FakeViewBobBone = "ValveBiped.Bip01_R_Hand"
SWEP.FakeViewBobBaseBone = "ValveBiped.Bip01_L_UpperArm"
SWEP.ViewPunchDiv = 70
SWEP.FakeMagDropBone = 48

SWEP.AnimList = {
	["idle"] = "base_idle",
	["reload"] = "base_reload",
	["reload_empty"] = "base_reloadempty",
}


function SWEP:ModelCreated(model)
	if not IsValid(self:GetWM()) then return end
	self:GetWM():ManipulateBoneScale(105, vecPochtiZero)
	self._magBoneHidden = true
end

function SWEP:ThinkAdd(model)
	if not IsValid(self:GetWM()) then return end

	local shouldHide = not self.reload
	if self._magBoneHidden ~= shouldHide then
		self._magBoneHidden = shouldHide
		self:GetWM():ManipulateBoneScale(105, shouldHide and vecPochtiZero or vector_full)
	end
end
SWEP.WepSelectIcon2 = Material("entities/arc9_ump45_ins1_val.png")
SWEP.IconOverride = "entities/arc9_ump45_ins1_val.png"
SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.dwr_customIsSuppressed = true
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9x39 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 42
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 42
SWEP.Primary.Sound = {"myt_ins1_sd/minebea.wav", 65, 90, 100}
SWEP.SupressedSound = {"myt_ins1_sd/smg2.wav", 65, 90, 120}
SWEP.Primary.Wait = 0.066
SWEP.ReloadTime = 3.5
SWEP.ReloadSoundes = {
	"none",
	"none",
	"none",
	"none",
	"weapons/tfa_ins2/ak103/ak103_magout.wav",
	"none",
	"none",
	"none",
	"weapons/tfa_ins2/akm_bw/magin.wav",
	"none",
	"weapons/tfa_inss/asval/slideback.wav",
	"weapons/tfa_inss/asval/slideforward.wav",
	"none",
	"none",
	"none",
	"none"
}

SWEP.LocalMuzzlePos = Vector(28,-0.2,4)
SWEP.LocalMuzzleAng = Angle(0,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.PPSMuzzleEffectSuppress = "muzzleflash_suppressed"

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(0, 0.7, 7.0112)
SWEP.RHandPos = Vector(-5, -1, 1)
SWEP.LHandPos = Vector(7, -2, -2)
SWEP.ShockMultiplier = 3
SWEP.CustomShell = "762x39"
--SWEP.EjectPos = Vector(-4,0,4)
--SWEP.EjectAng = Angle(0,0,-65)

SWEP.weight = 4

SWEP.Spray = {}
for i = 1, 20 do
	SWEP.Spray[i] = Angle(-0.01 - math.cos(i) * 0.01, math.cos(i * i) * 0.02, 0) * 1
end

SWEP.addSprayMul = 0.5

SWEP.Ergonomics = 0.9
SWEP.Penetration = 15
SWEP.WorldPos = Vector(3, -1, 1)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, -0.5)
SWEP.attAng = Angle(-0, 0.05, 0)
SWEP.lengthSub = 15
SWEP.handsAng = Angle(0, 0, 0)
SWEP.Supressor = true
SWEP.SetSupressor = true

--local to head
SWEP.RHPos = Vector(4,-5.5,3.5)
SWEP.RHAng = Angle(0,-15,90)
--local to rh
SWEP.LHPos = Vector(12,0.2,-3.5)
SWEP.LHAng = Angle(-110,-180,5)

SWEP.ShootAnimMul = 4

function SWEP:AnimHoldPost()
end

-- Inspect Assault
SWEP.InspectAnimWepAng = {
	Angle(0,0,0),
	Angle(4,4,15),
	Angle(10,15,25),
	Angle(10,15,25),
	Angle(10,15,25),
	Angle(-6,-15,-15),
	Angle(1,15,-45),
	Angle(15,25,-55),
	Angle(15,25,-55),
	Angle(15,25,-55),
	Angle(0,0,0),
	Angle(0,0,0)
}
