SWEP.Base = "weapon_ar15"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = "M4A1"
SWEP.Author = "Colt’s Manufacturing Company"
SWEP.Instructions = "Automatic rifle chambered in 5.56x45 mm\n\nRate of fire 950 rounds per minute"
SWEP.Category = "Weapons - Assault Rifles"

SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.WepSelectIcon2 = Material("entities/arc9_ump45_ins1_m4.png")
SWEP.IconOverride = "entities/arc9_ump45_ins1_m4.png"

SWEP.Primary.Wait = 0.063
SWEP.Primary.Automatic = true

SWEP.ZoomPos = Vector(0.20, 0.28, 4.8)

SWEP.LocalMuzzlePos = Vector(20,0.4,2)
SWEP.LocalMuzzleAng = Angle(0.1,-0.1,-1)
SWEP.WeaponEyeAngles = Angle(0,3,0)

//SWEP.StartAtt = {"ironsight2", false}
-- SWEP.StartAtt = {"ironsight2"}

SWEP.FakeBodyGroups = "0020000"

function SWEP:ModelCreated(model)
	if CLIENT and IsValid(self:GetWM()) and isstring(self.FakeBodyGroups) then
		self:GetWM():SetBodyGroups(self.FakeBodyGroups)
	end
end

SWEP.cameraShakeMul = 1
