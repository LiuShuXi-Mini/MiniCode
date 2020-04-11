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
--事件
main = function()
    Chat:sendSystemMsg("欢迎！Copyrright(C)68066216,83552953等3个",0)--版权声明，写上自己的，最后个引用了这个就行
    Chat:sendSystemMsg("玩法:挖掉对方的旗子就可以胜利，如果己方的旗子被破坏，则对方胜利。",0)
    Chat:sendSystemMsg("初始化变量中...",0)
    di()
    Chat:sendSystemMsg("注册计时器中")
    MAIN_TIMER_HWN = dtimer()
    Chat:sendSystemMsg("加载完成，尽情玩耍吧！",0)
end
enterg = function(eventobjid,toobjid)
    local re,na = Player:getNickname(eventobjid)
    if (re == ErrorCode.OK) then
        Chat:sendSystemMsg("欢迎"..na.."!".."注意！撸掉自己家的旗子会失效！")
    end
end
timerc = function(timerid,timername)
    if (MiniTimer:getTimerTime(MAIN_TIMER_HWN) % 5 == 0) then--每5s执行一次，更改“5”为其他数字可以调整频率
        World:spawnItem(-228,8,-2,11209,1)--11209：铁 请更改前3个参数为铁生成的地址
        World:spawnItem(18,8,5,11209,1)--11209：铁 请更改前3个参数为铁生成的地址
        World:spawnItem(-105,7,1,11203,1)--11203：钻石 请更改前3个参数为钻石生成的地址
        World:spawnItem(-105,7,1,200,1)--200：木头 请更改前3个参数为木头生成的地址
        World:spawnItem(-105,7,1,706,1)--706：电能线 请更改前3个参数为电能线生成的地址
        --todo:增加或减少地址
    end
end
bldes = function(eventobjid, blockid, x, y, z)
    --在此函数内的所有命令都会失灵，请使用触发器补充功能：摧毁保护的方块后让敌人胜利
    --不要再这里写代码
    local re = 10001
    Chat:sendSystemMsg(blockid,0)
    if (blockid == 2002) then--把2002改成红方要保护的方块id
        repeat
            Chat:sendSystemMsg("红队胜利！",0)
            re = Team:setTeamScore(1,100)
        until re == ErrorCode.OK
    end if (blockid == 2001) then--把2001改成蓝方要保护的方块id
        repeat
            Chat:sendSystemMsg("蓝队胜利！",0)
            re = Team:setTeamScore(2,100)
        until re == ErrorCode.OK
    end
end
--注册函数事件和初始化
function revent()
    Chat:sendSystemMsg("事件：Game.AnyPlayer.EnterGame，返回函数：enterg")
    ScriptSupportEvent:registerEvent([=[Game.AnyPlayer.EnterGame]=],enterg)
    Chat:sendSystemMsg("事件：minitimer.change，返回函数：timerc")
    ScriptSupportEvent:registerEvent([=[minitimer.change]=],timerc)
    Chat:sendSystemMsg("事件：Player.ClickBlock，返回函数：bldes")
    ScriptSupportEvent:registerEvent([=[Player.ClickBlock]=],bldes)
    Chat:sendSystemMsg("注册初始事件中Game.Start，加载到main")
    ScriptSupportEvent:registerEvent([=[Game.Start]=],main)
    Chat:sendSystemMsg("事件注册完成")

end
function di()
    --TODO:有变量需要开头初始化就在这里初始化
    Chat:sendSystemMsg("变量初始化完成")
end
function dtimer()
    local re = 0
    local hwn = 0
    Chat:sendSystemMsg("名称：主计时器，类型，公有")
    repeat
        re,hwn = MiniTimer:createTimer("主计时器")
    until re == ErrorCode.OK
    Chat:sendSystemMsg("名称：主计时器，类型：正向启动")
    repeat
        re = MiniTimer:startForwardTimer(hwn)
    until re ==ErrorCode.OK
    Chat:sendSystemMsg("计时器初始化完成")
    return hwn
end
Chat:sendSystemMsg("加载游戏规则")
Chat:sendSystemMsg("规则：EndTime，值：20")
GameRule.EndTime = 20  		 --游戏时长
Chat:sendSystemMsg("规则：TeamNum，值：2")
GameRule.TeamNum = 2         --队伍数量
Chat:sendSystemMsg("规则：MaxPlayers，值：6")
GameRule.MaxPlayers = 6      --最大玩家量
Chat:sendSystemMsg("规则：StartMode，值：0")
GameRule.StartMode = 0       --开启模式 0:主开
Chat:sendSystemMsg("规则：StartPlayers，值：1")
GameRule.StartPlayers = 1    --最低玩家量 2人
Chat:sendSystemMsg("规则：PlayerDieDrops，值：0")
GameRule.PlayerDieDrops = 1  --死亡掉落 1:true
Chat:sendSystemMsg("规则：DisplayScore，值：1")
GameRule.DisplayScore = 1    --显示比分 1:true
Chat:sendSystemMsg("规则：AllowMidwayJoin，值：1")
GameRule.AllowMidwayJoin = 1 --中途加入 1:允许
Chat:sendSystemMsg("规则：ScoreKillPlayer，值：0")
GameRule.ScoreKillPlayer = 0 --击杀玩家 得0分
Chat:sendSystemMsg("规则：WinLoseEndTime，值：1")
GameRule.WinLoseEndTime = 1  --游戏超时结束则全胜
Chat:sendSystemMsg("规则：ScoreKillMob，值：0")
GameRule.ScoreKillMob = 0
Chat:sendSystemMsg("规则：CurTime，值：0")
GameRule.CurTime = 0;	--获取/设置当前时间
Chat:sendSystemMsg("规则：TimeLocked，值：1")
GameRule.TimeLocked= 1;	--时间锁/锁定时间
Chat:sendSystemMsg("规则：MobGen，值：1")
GameRule.MobGen= 1;	--是否刷怪: -1:按创建的选项刷, 0:不刷, 1:刷
Chat:sendSystemMsg("规则：EndScore，值：100")
GameRule.EndScore= 100;	--胜利分数设定
--TODO:增加或减少规则
Chat:sendSystemMsg("注册事件中...",0)
revent()
