local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end
local voices = { 
	{text = 'Hey, need some furniture for your house? Come to my shop!'} 
}

-- NPC shop
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({"amphora"}, 2023, 4, 1)
shopModule:addBuyableItem({"armor rack kit"}, 6114, 90, 1)
shopModule:addBuyableItem({"barrel kit"}, 3919, 12, 1)
shopModule:addBuyableItem({"big table kit"}, 3911, 30, 1)
shopModule:addBuyableItem({"birdcage kit"}, 3922, 50, 1)
shopModule:addBuyableItem({"blue bed kit"}, 7907, 80, 1)
shopModule:addBuyableItem({"blue pillow"}, 1686, 25, 1)
shopModule:addBuyableItem({"blue tapestry"}, 1872, 25, 1)
shopModule:addBuyableItem({"bookcase kit"}, 6373, 70, 1)
shopModule:addBuyableItem({"box"}, 1738, 10, 1)
shopModule:addBuyableItem({"canopy bed kit"}, 20252, 200, 1)
shopModule:addBuyableItem({"chest"}, 1740, 10, 1)
shopModule:addBuyableItem({"chimney kit"}, 8692, 200, 1)
shopModule:addBuyableItem({"coal basin kit"}, 3932, 25, 1)
shopModule:addBuyableItem({"crate"}, 1739, 10, 1)
shopModule:addBuyableItem({"crystal table kit"}, 9974, 150, 1)
shopModule:addBuyableItem({"cuckoo clock"}, 1877, 40, 1)
shopModule:addBuyableItem({"drawer kit"}, 3915, 18, 1)
shopModule:addBuyableItem({"dresser kit"}, 3916, 25, 1)
shopModule:addBuyableItem({"empty goldfish bowl"}, 5928, 50, 1)
shopModule:addBuyableItem({"flower bowl"}, 2102, 6, 1)
shopModule:addBuyableItem({"globe kit"}, 3926, 50, 1)
shopModule:addBuyableItem({"goblin statue kit"}, 3930, 50, 1)
shopModule:addBuyableItem({"god flowers"}, 2100, 5, 1)
shopModule:addBuyableItem({"green bed kit"}, 7904, 80, 1)
shopModule:addBuyableItem({"green cushioned chair kit"}, 3902, 40, 1)
shopModule:addBuyableItem({"green pillow"}, 1688, 25, 1)
shopModule:addBuyableItem({"green tapestry"}, 1860, 25, 1)
shopModule:addBuyableItem({"harp kit"}, 3934, 50, 1)
shopModule:addBuyableItem({"heart pillow"}, 1685, 30, 1)
shopModule:addBuyableItem({"honey flower"}, 2103, 5, 1)
shopModule:addBuyableItem({"indoor plant kit"}, 3937, 8, 1)
shopModule:addBuyableItem({"knight statue kit"}, 3928, 50, 1)
shopModule:addBuyableItem({"large amphora kit"}, 3931, 50, 1)
shopModule:addBuyableItem({"locker kit"}, 3917, 30, 1)
shopModule:addBuyableItem({"minotaur statue kit"}, 3929, 50, 1)
shopModule:addBuyableItem({"orange tapestry"}, 1866, 25, 1)
shopModule:addBuyableItem({"oven kit"}, 6372, 80, 1)
shopModule:addBuyableItem({"pendulum clock kit"}, 3927, 75, 1)
shopModule:addBuyableItem({"piano kit"}, 3933, 200, 1)
shopModule:addBuyableItem({"picture"}, 1852, 50, 1)
shopModule:addBuyableItem({"picture"}, 1854, 50, 1)
shopModule:addBuyableItem({"picture"}, 1853, 50, 1)
shopModule:addBuyableItem({"potted flower"}, 2104, 5, 1)
shopModule:addBuyableItem({"purple tapestry"}, 1857, 25, 1)
shopModule:addBuyableItem({"red bed kit"}, 7906, 80, 1)
shopModule:addBuyableItem({"red cushioned chair kit"}, 3901, 40, 1)
shopModule:addBuyableItem({"red pillow"}, 1687, 25, 1)
shopModule:addBuyableItem({"red tapestry"}, 1869, 25, 1)
shopModule:addBuyableItem({"rocking chair kit"}, 3904, 25, 1)
shopModule:addBuyableItem({"rocking horse kit"}, 3926, 30, 1)
shopModule:addBuyableItem({"round blue pillow"}, 1690, 25, 1)
shopModule:addBuyableItem({"round purple pillow"}, 1692, 25, 1)
shopModule:addBuyableItem({"round red pillow"}, 1691, 25, 1)
shopModule:addBuyableItem({"round table kit"}, 14328, 25, 1)
shopModule:addBuyableItem({"round turquoise pillow"}, 1693, 25, 1)
shopModule:addBuyableItem({"silky tapestry"}, 9959, 80, 1)
shopModule:addBuyableItem({"small blue pillow"}, 1681, 20, 1)
shopModule:addBuyableItem({"small green pillow"}, 1679, 20, 1)
shopModule:addBuyableItem({"small orange pillow"}, 1682, 20, 1)
shopModule:addBuyableItem({"small purple pillow"}, 1678, 20, 1)
shopModule:addBuyableItem({"small red pillow"}, 1680, 20, 1)
shopModule:addBuyableItem({"small table kit"}, 3908, 20, 1)
shopModule:addBuyableItem({"small turquoise pillow"}, 1683, 20, 1)
shopModule:addBuyableItem({"small white pillow"}, 1684, 20, 1)
shopModule:addBuyableItem({"sofa chair kit"}, 3905, 55, 1)
shopModule:addBuyableItem({"square table ki"}, 14329, 25, 1)
shopModule:addBuyableItem({"table lamp kit"}, 3924, 35, 1)
shopModule:addBuyableItem({"telescope kit"}, 3925, 70, 1)
shopModule:addBuyableItem({"treasure chest"}, 1746, 1000, 1)
shopModule:addBuyableItem({"trophy stand"}, 7936, 50, 1)
shopModule:addBuyableItem({"trough kit"}, 3918, 7, 1)
shopModule:addBuyableItem({"trunk kit"}, 3920, 10, 1)
shopModule:addBuyableItem({"vase"}, 2008, 3, 1)
shopModule:addBuyableItem({"venorean cabinet kit"}, 20254, 90, 1)
shopModule:addBuyableItem({"venorean drawer kit"}, 20257, 40, 1)
shopModule:addBuyableItem({"venorean wardrobe kit"}, 20255, 50, 1)
shopModule:addBuyableItem({"wall mirror"}, 1851, 40, 1)
shopModule:addBuyableItem({"wall mirror"}, 1848, 40, 1)
shopModule:addBuyableItem({"wall mirror"}, 1845, 40, 1)
shopModule:addBuyableItem({"water pipe"}, 2099, 40, 1)
shopModule:addBuyableItem({"weapon rack kit"}, 6115, 90, 1)
shopModule:addBuyableItem({"white tapestry"}, 1880, 25, 1)
shopModule:addBuyableItem({"wooden chair kit"}, 3903, 15, 1)
shopModule:addBuyableItem({"yellow bed kit"}, 7905, 80, 1)
shopModule:addBuyableItem({"yellow pillow"}, 1689, 25, 1)
shopModule:addBuyableItem({"yellow tapestry"}, 1863, 25, 1)

npcHandler:setMessage(MESSAGE_GREET, "Be greeted, visitor. If you're interested in buying furniture, ask me for a trade.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Have a look. Most furniture comes in handy kits. Just use them in your house to assemble the furniture. Do you want to see only a certain {type} of furniture?")

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:addModule(FocusModule:new())
