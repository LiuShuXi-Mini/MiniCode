--Copyright(C)2019-202.All right reserved.
inp = ""
x = 0
y = 0
z = 0
faceid = FACE_DIRECTION.DIR_NEG_X
outway = 0
outways = {
    sheep = 0;
    block = 1;
    undersheep = 2;
    glass = 3;
    glasspiece = 4;
    glasslight = 5;
}

function revent()
    --event
    ScriptSupportEvent:registerEvent("Game.Start",function()
        if (inp == "") then
            class.Chat:sendSystemMsg("Input Error:0x0001",0)
            return
        end
        local n = 1
        local s = ""
        if (outway == outways.sheep) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(600,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(601,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(602,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(603,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(604,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(605,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(606,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(607,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(608,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(609,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(610,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(611,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(612,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(613,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(614,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(615,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
        if (outway == outways.block) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(667,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(668,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(669,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(670,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(671,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(672,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(673,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(674,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(675,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(676,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(677,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(678,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(679,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(680,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(681,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(682,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
        if (outway == outways.undersheep) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(616,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(617,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(618,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(619,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(620,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(621,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(622,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(623,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(624,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(625,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(626,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(627,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(628,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(629,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(630,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(631,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
        if (outway == outways.glass) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(633,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(634,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(635,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(636,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(637,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(638,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(639,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(640,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(641,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(642,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(643,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(644,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(645,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(646,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(647,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(648,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
        if (outway == outways.glasspiece) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(650,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(651,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(652,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(653,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(654,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(655,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(656,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(657,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(658,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(659,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(660,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(661,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(662,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(663,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(664,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(665,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
        if (outway == outways.glasslight) then
            for n=1,string.len(inp),1 do
                s = string.rep(inp,n)
                if (s == "a") then
                    class.Block:placeBlock(862,x,y,z,faceid)--White
                elseif (s == "b") then
                    class.Block:placeBlock(863,x,y,z,faceid)--orange
                elseif (s == "c") then
                    class.Block:placeBlock(864,x,y,z,faceid)--purple
                elseif (s == "d") then
                    class.Block:placeBlock(865,x,y,z,faceid)--small blue
                elseif (s == "e") then
                    class.Block:placeBlock(866,x,y,z,faceid)--yellow
                elseif (s == "f") then
                    class.Block:placeBlock(867,x,y,z,faceid)--orange
                elseif (s == "g") then
                    class.Block:placeBlock(868,x,y,z,faceid)--orange
                elseif (s == "h") then
                    class.Block:placeBlock(869,x,y,z,faceid)--orange
                elseif (s == "i") then
                    class.Block:placeBlock(870,x,y,z,faceid)--orange
                elseif (s == "j") then
                    class.Block:placeBlock(871,x,y,z,faceid)--orange
                elseif (s == "k") then
                    class.Block:placeBlock(872,x,y,z,faceid)--orange
                elseif (s == "l") then
                    class.Block:placeBlock(873,x,y,z,faceid)--orange
                elseif (s == "m") then
                    class.Block:placeBlock(874,x,y,z,faceid)--orange
                elseif (s == "n") then
                    class.Block:placeBlock(875,x,y,z,faceid)--orange
                elseif (s == "o") then
                    class.Block:placeBlock(876,x,y,z,faceid)--orange
                elseif (s == "p") then
                    class.Block:placeBlock(877,x,y,z,faceid)--orange
                elseif (s == "q") then
                    y = y - 1
                elseif (s == "r") then
                    --Not anything
                else
                    class.Chat:sendSystemMsg("input error! Wrong on "..n,0)
                end
                x = x + 1
            end
        end
    end)
end
