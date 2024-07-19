-- 巫妖王之怒 WotLK
-- 技能数据表（spellID）
Typhoon = 69824			-- 台风（德鲁伊）
ThunderStorm = 51490	-- 雷霆风暴（萨满）
FeralSpirit = 51533		-- 野性狼魂（萨满）
FakeDeath = 5384		-- 假死（猎人）
FrostNova = 122			-- 冰霜新星（法师）
FrostNova2 = 865		-- 冰霜新星 等级2
FrostNova3 = 6131		-- 冰霜新星 等级3
FrostNova4 = 10230
FrostNova5 = 27088
FrostNova6 = 42917

-- TODO: 找个更好看的写法，也许效率更高的那种。
-- 事件函数
-- 喊话仅副本内有效，但是表情什么地方都能用，搞不懂。
function ProcOnEvent(self, event, ...)
	local UnitTarget, _, SpellID = select(1, ...)
	if UnitTarget == "player" then
		-- 德鲁伊台风萨满雷霆风暴fus ro dah
		if (SpellID == Typhoon) or (SpellID == ThunderStorm) then
			PlaySoundFile("Interface\\AddOns\\Useless Addon\\Fus Ro Dah.wav", "SFX")
			SendChatMessage("Fus ro dah!") 
		elseif SpellID == FeralSpirit then
			SendChatMessage("欧欧卡米哟，吞噬我的敌人！")
		-- 猎人假死
		elseif SpellID == FakeDeath then
			SendChatMessage("死掉了。", "Emote")
		-- 法师冰环
		-- 极度不美观，得找个更好的写法
		elseif (SpellID == FrostNova) or (SpellID == FrostNova2) or (SpellID == FrostNova3) or (SpellID == FrostNova4) or (SpellID == FrostNova5) or (SpellID == FrostNova6) then
			SendChatMessage("冻住，不许走！")
		end
	end
end 

-- 事件注册
local UselessFrame = CreateFrame("Frame")

UselessFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
UselessFrame:SetScript("OnEvent", ProcOnEvent)
