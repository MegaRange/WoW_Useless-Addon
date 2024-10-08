-- 暗影国度之后
-- 技能数据表（spellID）
Typhoon = 132469			-- 台风（德鲁伊）
ThunderStorm = 51490	-- 雷霆风暴（萨满）
FeralSpirit = 51533		-- 野性狼魂（萨满）
FakeDeath = 5384		-- 假死（猎人）
FrostNova = 122			-- 冰霜新星（法师）
ShockWave = 157981		-- 冲击波（法师）

-- TODO: 找个更好看的写法，也许效率更高的那种。
-- 事件函数
-- 喊话仅副本内有效，但是表情什么地方都能用，搞不懂。
function ProcOnEvent(self, event, ...)
	local UnitTarget, _, SpellID = select(1, ...)
	if UnitTarget == "player" then
		-- 德鲁伊台风 萨满雷霆风暴 法师冲击波 fus ro dah
		if (SpellID == Typhoon) or (SpellID == ThunderStorm) or (SpellID == ShockWave)then
			PlaySoundFile("Interface\\AddOns\\Useless Addon\\Fus Ro Dah.wav", "SFX")
			SendChatMessage("Fus ro dah!") 
		elseif SpellID == FeralSpirit then
			SendChatMessage("欧欧卡米哟，吞噬我的敌人！")
		-- 猎人假死
		elseif SpellID == FakeDeath then
			SendChatMessage("死掉了。", "Emote")
		-- 法师冰环
		elseif SpellID == FrostNova then
			SendChatMessage("冻住，不许走！")
		end
	end
end 

-- 事件注册
local UselessFrame = CreateFrame("Frame")

UselessFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
UselessFrame:SetScript("OnEvent", ProcOnEvent)
