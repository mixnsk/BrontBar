local E, C, L, DB = unpack(ElvUI)
function BrontBar_VarsLoaded() if( not Bront) then
	Bront = {[1] = "Первая строка", [2] = "Вторая строка", [3] = "Третья строка", [4] = "Четвёртая строка"}
	end 
end
BrontBar_VarsLoaded();
local tooltip_sh = "Показать"
local backdropr, backdropg, backdropb, backdropa = .1, .1, .1, 1
--Mover
local BrontBar = CreateFrame("Frame","BrontBar",UIParent)
BrontBar:CreatePanel("Default",150,36,"CENTER", UIParent, "CENTER", -273, -75)
BrontBar:Hide()
E.CreateMover(BrontBar, "BrontBarMover", "Move Bront Bar")
--BackDrop
local prof_bar = CreateFrame("Frame", "prof_bar", UIParent)
prof_bar:CreatePanel(prof_bar, 26, C["chat"].chatheight + 68, "RIGHT", BrontBar, "LEFT", -3, 0)
prof_bar:SetFrameLevel((prof_bar:GetParent()):GetFrameLevel() + 1)
if C["chat"].style == "ElvUI" then
		prof_bar:SetTemplate("Transparent")
	else
prof_bar:SetFrameStrata("BACKGROUND")
end
--BackDrop Switch
local prof_bar_set = CreateFrame("Frame", "prof_bar_set", UIParent)
prof_bar_set:CreatePanel(prof_bar_set, C["chat"].chatwidth + 14, C["chat"].chatheight + 68, "LEFT", prof_bar, "RIGHT", 3, 0)
prof_bar_set:SetFrameLevel(500)
if C["chat"].style == "ElvUI" then
		prof_bar_set:SetTemplate("Transparent")
	else
prof_bar_set:SetFrameStrata("BACKGROUND")
end
prof_bar_set:Hide()

local first_line = CreateFrame("EditBox", "first_line", prof_bar_set)
first_line:CreatePanel(first_line, C["chat"].chatwidth, 20, "TOP", prof_bar_set, "TOP", 0, -15)
first_line:SetFrameLevel((first_line:GetParent()):GetFrameLevel() + 1)
first_line:SetAutoFocus(false)
first_line:SetMultiLine(false)
first_line:SetMaxLetters(255)
first_line:SetTextInsets(3,0,0,0)
first_line:SetFrameStrata("BACKGROUND")
first_line_Text = first_line:CreateFontString()
first_line_Text:SetFont(C.media.font, 12)
first_line_Text:SetPoint("BOTTOMLEFT", first_line, "TOPLEFT")
first_line_Text:SetText("|cFF1783d1Bront Spam Settings: |r")
first_line:SetFont(C.media.font, 12)
first_line:SetText(Bront[1])
	
local second_line = CreateFrame("EditBox", "second_line", prof_bar_set)
second_line:CreatePanel(second_line, C["chat"].chatwidth, 20, "TOP", prof_bar_set, "TOP", 0, -37)
second_line:SetFrameLevel((second_line:GetParent()):GetFrameLevel() + 1)
second_line:SetAutoFocus(false)
second_line:SetMultiLine(false)
second_line:SetMaxLetters(255)
second_line:SetTextInsets(3,0,0,0)
second_line:SetFrameStrata("BACKGROUND")
second_line:SetFont(C.media.font, 12)
second_line:SetText(Bront[2])

local third_line = CreateFrame("EditBox", "third_line", prof_bar_set)
third_line:CreatePanel(third_line, C["chat"].chatwidth, 20, "TOP", prof_bar_set, "TOP", 0, -59)
third_line:SetFrameLevel((third_line:GetParent()):GetFrameLevel() + 1)
third_line:SetAutoFocus(false)
third_line:SetMultiLine(false)
third_line:SetMaxLetters(255)
third_line:SetTextInsets(3,0,0,0)
third_line:SetFrameStrata("BACKGROUND")
third_line:SetFont(C.media.font, 12)
third_line:SetText(Bront[3])

local fourth_line = CreateFrame("EditBox", "fourth_line", prof_bar_set)
fourth_line:CreatePanel(fourth_line, C["chat"].chatwidth, 20, "TOP", prof_bar_set, "TOP", 0, -81)
fourth_line:SetFrameLevel((fourth_line:GetParent()):GetFrameLevel() + 1)
fourth_line:SetAutoFocus(false)
fourth_line:SetMultiLine(false)
fourth_line:SetMaxLetters(255)
fourth_line:SetTextInsets(3,0,0,0)
fourth_line:SetFrameStrata("BACKGROUND")
fourth_line:SetFont(C.media.font, 12)
fourth_line:SetText(Bront[4])

local function ToMoney()
end
--Button 1 start
local ProfBut1 = CreateFrame("Button", "ElvuiProfBut1", prof_bar)
ProfBut1:CreatePanel(nil, 22, 22, "TOP", prof_bar, "TOP", 0, -3)
local ProfBut1Text = ProfBut1:CreateFontString(nil, "OVERLAY")
ProfBut1Text:SetFont(C.media.font, 14)
ProfBut1Text:Point("CENTER", ProfBut1, "CENTER", 0, 0)
ProfBut1Text:SetText("ы")

ProfBut1:SetScript("OnMouseDown", function()
--GuildInfo();
--RunMacroText("/cast Измельчение /use Пепельник"); -- Prints appropriate text
--print();
--DoEmote("roar");
--nf="[Фласки!]: ";for i=1,GetNumRaidMembers()do for b=1,41 do ufl=UnitAura('raid'..i,b);if ufl then if strfind(ufl,"Flask")then break;end;elseif b==41 then nf=nf..UnitName('raid'..i).." ";end;end;end;SendChatMessage(nf,"party");
--prof_bar_set:Hide()
end)

ProfBut1:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, E.Scale(6));
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM", self, "TOP", 0, E.mult)	
		GameTooltip:ClearLines()
		GameTooltip:AddLine(Bront[1], 1, 1, 1)
		GameTooltip:AddLine(Bront[2], 1, 1, 1)
		GameTooltip:AddLine(Bront[3], 1, 1, 1)
		GameTooltip:AddLine(Bront[4], 1, 1, 1)
		GameTooltip:Show()
	end)
ProfBut1:SetScript("OnLeave", function() GameTooltip:Hide() end)
--Button 1 end
--Button 2 start
local ProfBut2 = CreateFrame("Button", "ElvuiProfBut2", prof_bar)
ProfBut2:CreatePanel(nil, 22, 22, "TOP", prof_bar, "TOP", 0, -28)
local ProfBut2Text = ProfBut2:CreateFontString(nil, "OVERLAY")
ProfBut2Text:SetFont(C.media.font, 14)
ProfBut2Text:Point("CENTER", ProfBut2, "CENTER", 0, 0)
ProfBut2Text:SetText(">")

ProfBut2:SetScript("OnMouseDown", function()
if(ProfBut2Text:GetText()==">")
then
	ChatFrame3Tab:Hide()
	prof_bar_set:Show()
	first_line:SetText(Bront[1])
	second_line:SetText(Bront[2])
	third_line:SetText(Bront[3])
	fourth_line:SetText(Bront[4])
	ProfBut2Text:SetText("<")
	tooltip_sh = "Скрыть"
else
	Bront[1] = first_line:GetText()
	Bront[2] = second_line:GetText()
	Bront[3] = third_line:GetText()
	Bront[4] = fourth_line:GetText()
	prof_bar_set:Hide()
	ChatFrame3Tab:Show()
	ProfBut2Text:SetText(">")
	tooltip_sh = "Показать"
	end
end)

ProfBut2:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, E.Scale(6));
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM", self, "TOP", 0, E.mult)	
		GameTooltip:ClearLines()
		GameTooltip:AddLine(tooltip_sh, 1, 1, 1)
		GameTooltip:Show()
	end)
ProfBut2:SetScript("OnLeave", function() GameTooltip:Hide() end)
--Button 2 end
--Button 3 start
local ProfBut3 = CreateFrame("Button", "ElvuiProfBut3", prof_bar)
ProfBut3:CreatePanel(nil, 22, 22, "TOP", prof_bar, "TOP", 0, -53)
local ProfBut3Text = ProfBut3:CreateFontString(nil, "OVERLAY")
ProfBut3Text:SetFont(C.media.font, 14)
ProfBut3Text:Point("CENTER", ProfBut3, "CENTER", 0, 0)
ProfBut3Text:SetText("\\2")

ProfBut3:SetScript("OnMouseDown", function()
		SendChatMessage(Bront[1], "CHANNEL", nil, "2");
		SendChatMessage(Bront[2], "CHANNEL", nil, "2");
		SendChatMessage(Bront[3], "CHANNEL", nil, "2");
		SendChatMessage(Bront[4], "CHANNEL", nil, "2");
end)

ProfBut3:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, E.Scale(6));
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM", self, "TOP", 0, E.mult)	
		GameTooltip:ClearLines()
		GameTooltip:AddLine("Отправить")
		GameTooltip:Show()
	end)
ProfBut3:SetScript("OnLeave", function() GameTooltip:Hide() end)
--Button 3 end
--Button 4 start
local ProfBut4 = CreateFrame("Button", "ElvuiProfBut4", prof_bar)
ProfBut4:CreatePanel(nil, 22, 22, "TOP", prof_bar, "TOP", 0, -78)
local ProfBut4Text = ProfBut4:CreateFontString(nil, "OVERLAY")
ProfBut4Text:SetFont(C.media.font, 14)
ProfBut4Text:Point("CENTER", ProfBut4, "CENTER", 0, 0)
ProfBut4Text:SetText("\\4")

ProfBut4:SetScript("OnMouseDown", function()
		SendChatMessage(Bront[1], "CHANNEL", nil, "4");
		SendChatMessage(Bront[2], "CHANNEL", nil, "4");
		SendChatMessage(Bront[3], "CHANNEL", nil, "4");
		SendChatMessage(Bront[4], "CHANNEL", nil, "4");
end)

ProfBut4:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, E.Scale(6));
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM", self, "TOP", 0, E.mult)	
		GameTooltip:ClearLines()
		GameTooltip:AddLine("Отправить")
		GameTooltip:Show()
	end)
ProfBut4:SetScript("OnLeave", function() GameTooltip:Hide() end)
--Button 4 end

SLASH_BRONT1, SLASH_BRONT2 = '/brontbar', '/bb' 
function brontbar_SlashHandler(param1, editbox) 

if(param1 == '2')
	then
		SendChatMessage(Bront[1], "CHANNEL", nil, "2");
		SendChatMessage(Bront[2], "CHANNEL", nil, "2");
		SendChatMessage(Bront[3], "CHANNEL", nil, "2");
		SendChatMessage(Bront[4], "CHANNEL", nil, "2");
	end 
if(param1 == '4')
	then
		SendChatMessage(Bront[1], "CHANNEL", nil, "4");
		SendChatMessage(Bront[2], "CHANNEL", nil, "4");
		SendChatMessage(Bront[3], "CHANNEL", nil, "4");
		SendChatMessage(Bront[4], "CHANNEL", nil, "4");
	end 
if(param1 == 'hide')
	then
prof_bar:Hide()
	end 
if(param1 == 'show')
	then
prof_bar:Show()
	end 
end 
SlashCmdList["BRONT"] = brontbar_SlashHandler