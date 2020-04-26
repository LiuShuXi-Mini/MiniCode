World = class.World.new()
Game = class.Game.new()
Block = class.Block.new()
Actor = class.Actor.new()
Player = class.Player.new()
Creature = class.Creature.new()
UI = class.UI.new()
Area = class.Area.new()
Chat = class.Chat.new()
Team = class.Team.new()
Item = class.Item.new()
Backpack = class.Backpack.new()
WorldContainer = class.WorldContainer.new()
MapMark = class.MapMark.new()
Spawnport = class.Spawnport.new()
MiniTimer = class.MiniTimer.new()
ObjectLib = class.ObjectLib.new()
--Copyright(C)2019-2020.All right reserved.
Timer = {
    MainTimerID = 0;
}
function Timer:createTimer()
    local res = 0
    repeat
        res,Timer.MainTimerID = MiniTimer:createTimer("mainTimer")
    until res == ErrorCode.OK
    return Timer.MainTimerID
end
function Timer:pauseTimer()
    local res = 0
    repeat
        res,Timer.MainTimerID = MiniTimer:createTimer("mainTimer")
    until res == ErrorCode.OK
    if (MiniTimer:isExist(Timer.MainTimerID) == false) then
        Chat:sendSystemMsg("#R On PauseTimer:Timer not found",0)
        return
    end
    repeat
        res = MiniTimer:pauseTimer(Timer.MainTimerID)
    until res == ErrorCode.OK
    return
end
function Timer:runtimer()
    local res = 0
    repeat
        res,Timer.MainTimerID = MiniTimer:createTimer("mainTimer")
    until res == ErrorCode.OK
    repeat
        res = MiniTimer:resumeTimer(Timer.MainTimerID)
    until res == ErrorCode.OK
end
function Timer:deleteTimer()
    local res = 0
    repeat
        res = MiniTimer:deleteTimer(Timer.MainTimerID)
    until res == ErrorCode.OK
    return
end
function Timer:changeEvents(timerTime)
    local res
    repeat
        res = World:spawnItem(1,1,1,11209,1) --生成铁
    until res == ErrorCode.OK
    if (timerTime % 5 == 0) then
        repeat
            res = World:spawnItem(1,1,1,11207,1) --生成金子
        until res == ErrorCode.OK
    end
    if (timerTime  % 10 == 0) then
        repeat
            res = World:spawnItem(1,1,1,11203,1) --生成钻石
        until res == ErrorCode.OK
    end
end
function main()
    Chat:sendSystemMsg("Copyright(C)680662166(CN)23552953(AN)",0)
    Chat:sendSystemMsg("Welcome to Bed War! Try to break enemy's bed to win!",0)
    Timer:createTimer()
    return
end
--Events
Start = function()
    main()
end
Tic = function (timerid,timername)
    if (timerid == Timer.MainTimerID) then
        Timer:changeEvents(MiniTimer:getTimerTime(timerid))
        return
    end
end
Bld = function(eventobjid,blockid,x,y,z)
    local res,ret
    if (blockid == 1) then--蓝方床ID
        repeat
            ret,res = Player:getTeam(eventobjid)
        until ret == ErrorCode.OK
        if (res == 2) then
            Chat:sendSystemMsg("Do not dig your team's bed!")
            repeat
                ret = Block:placeBlock(1,x,y,z,1)--蓝床ID
            until ret == ErrorCode.OK
            return
        end
        repeat
            ret = Team:setTeamScore(1,9999)
        until ret == ErrorCode.OK
    end
    if (blockid == 2) then--红队床ID
        repeat
            ret,res = Player:getTeam(eventobjid)
        until ret == ErrorCode.OK
        if (res == 1) then
            Chat:sendSystemMsg("Do not dig your team's bed!")
            repeat
                ret = Block:placeBlock(2,x,y,z,1)--红床ID
            until ret == ErrorCode.OK
            return
        end
        Team:setTeamScore(2,9999)
    end
end
ScriptSupportEvent:registerEvent("Game.Start",Start)
ScriptSupportEvent:registerEvent("minitimer.change",Tic)
ScriptSupportEvent:registerEvent("Block.DestroyBy",Bld)
