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
--小游戏1
--Copyright(C)Liusshuxi.All right reserved
--玩法：
--过一段事件就刷怪，杀死怪物和玩家得一分，死亡扣一分，时间内分数最高的队伍胜利
--游戏设定
Def = {}
Def.sgx = -13--刷怪x坐标
Def.sgy = 8--刷怪y坐标
Def.sgz = 7--刷怪z坐标
Def.sgs = 10--刷怪数
Def.gw = 3101--怪物ID
Def.bos1 = 3132 --一级BossID
Def.bos2 = 3501 --二级BossID
Def.bos3 = 3511 --三级BossID
Def.bosX = -13--BoosX坐标
Def.bosY = 8--BoosY坐标
Def.bosZ = 7--BoosZ坐标
Def.spl = 10--刷怪频率
Def.bpl = 1000--Boss刷怪频率
Def.welgg = "暂无公告"--欢迎公告
--规则
GameRule.EndTime = 20  		 --游戏时长
GameRule.TeamNum = 2         --队伍数量
GameRule.PlayerDieDrops = 1  --死亡掉落 1:true
GameRule.ScoreKillPlayer = 0 --击杀玩家 得0分
GameRule.WinLoseEndTime = 1  --游戏超时结束则全胜
GameRule.CurTime = 0;	--获取/设置当前时间
GameRule.MobGen= 1;	--是否刷怪: -1:按创建的选项刷, 0:不刷, 1:刷
GameRule.TimeLocked= 1;	--时间锁/锁定时间
GameRule.EndScore= 100;	--胜利分数设定
--其他（不是设定）
Def.maintr = 0
nowBsT = 0
--事件
main  = function()
    rtimer()
end
etg = function(eventobjid,toobjid)
    Chat:sendSystemMsg("欢迎"..Player:getNickname(eventobjid).."!"..Def.welgg,0)
end
pht = function(eventobjid,toobjid)
    if (Player:getAttr(toobjid) < 50) then
        Player:notifyGameInfo2Self(toobjid,"#R警告！生命值小于50%")
    end
end
ded = function(eventobjid,toobjid)
    --死亡一次减去一分
    Team:setTeamScore(Player:getTeam(toobjid),Team:getTeamScore(Player:getTeam(toobjid) - 1))
end
tmc = function(timerid, timername)
    if MiniTimer:getTimerTime(Def.maintr) % Def.spl == 0 then
        re = ErrorCode.FAILED
        repeat
            re = World:spawnCreature(Def.sgx,Def.sgy,Def.sgz,Def.gw,Def.sgs)
        until re == ErrorCode.OK
        Chat:sendSystemMsg("刷怪了，做好准备",0)
        re = ErrorCode.FAILED
    end
    if (MiniTimer:getTimerTime(Def.maintr) % Def.bpl == 0) then
        if (nowBsT % 10 == 0) then
            repeat
                re = World:spawnCreature(Def.bosX,Def.bosY,Def.bosZ,Def.bos3)
            until re == ErrorCode.OK
            nowBst = nowBsT + 1
            Chat:sendSystemMsg("出现3级boos！",0)
            return
        end
        if (nowBsT % 5 == 0) then
            repeat
                re = World:spawnCreature(Def.bosX,Def.bosY,Def.bosZ,Def.bos2)
            until re == ErrorCode.OK
            nowBst = nowBsT + 1
            Chat:sendSystemMsg("出现2级boos！",0)
            return
        end
        repeat
            re = World:spawnCreature(Def.bosX,Def.bosY,Def.bosZ,Def.bos1)
        until re == ErrorCode.OK
        nowBsT = nowBsT +1
        Chat:sendSystemMsg("出现1级boos！",0)
    end
end
function revent ()
    ScriptSupportEvent:registerEvent([=[Game.AnyPlayer.EnterGame]=],etg)
    ScriptSupportEvent:registerEvent([=[Game.Start]=],main)
    ScriptSupportEvent:registerEvent([=[Player.BeHurt]=],pht)
    ScriptSupportEvent:registerEvent([=[Game.AnyPlayer.Defeat]=],ded)
    ScriptSupportEvent:registerEvent([=[minitimer.change]=],tmc)
end
--初始化
function rtimer()
    re = ErrorCode.FAILED
    repeat
        re,Def.maintr = MiniTimer:createTimer("main")
    until re == ErrorCode.OK
    re = ErrorCode.FAILED
    repeat
        re = MiniTimer:startForwardTimer(Def.maintr)
    until re == ErrorCode.OK
end
revent()
