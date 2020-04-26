# 文件介绍
### 大逃杀.lua
- 该应用在**测试阶段**，最好**不要使用**。如果你想帮助解决bug，你可以在这里得知bug然后尝试解决它。bug如下
- - 无法控制刷怪频率
- - 其他暂时没有找到
- 玩法介绍
- 1. 躲避敌对生物
- 2. 躲避敌对玩家
- 3. 在这个基础下尝试**击杀更多的敌对生物和玩家**
- 4. 每**死亡一次扣一分**
---
### 迷你像素画（32色）.lua
- 这个就是像素画。可以通过**设置变量**来控制输出
- **inp**
- - *inp*控制的是输出。inp的格式如下
- - 颜色 | 代码
- - 白色 | a
- - 橙色 | b
- - 紫红 | c
- - 淡蓝 | d
- - 黄色 | e
- - 淡绿 | f
- - 粉色 | g
- - 灰色 | h
- - 淡灰 | i
- - 青色 | j
- - 紫色 | k
- - 蓝色 | l
- - 褐色 | m
- - 绿色 | n
- - 红色 | o
- - 黑色 | p
- - 换行 | q
- - 空格 | r
- **faceid**
- - *faceid*是指方块朝向，值如下
- - 常量 | 值 | 描述
- - FACE_DIRECTION.DIR_NOT_INIT | -1 | 未指定
- - FACE_DIRECTION.DIR_NEG_X | 0 | X反方向
- - FACE_DIRECTION.DIR_POS_X | 1 | X正方向
- - FACE_DIRECTION.DIR_NEG_Z | 2 | Z反方向
- - FACE_DIRECTION.DIR_POS_Z | 3 | Z正方向
- - FACE_DIRECTION.DIR_NEG_Y | 4 | Y反方向
- - FACE_DIRECTION.DIR_POS_Y | 5 | Y正方向
- **x,y,z**
- *x,y,z*是起始坐标，请填写
- **outway**
- - *outway*是指定以什么方式输出。值如下
- - 常量 | 值 | 描述
- - outways.sheep | 0 | 羊毛
- - outways.outways.block | 1 | 方块
- - outways.undersheep | 2 | 地毯
- - outways.glass | 3 | 玻璃
- - outways.glasspiece | 4 | 玻璃窗
- - outways.glasslight | 5 | 玻璃灯
---
### 起床战争模板.lua
- 一个起床战争的模板，开发者可以以这个为起点开发
---
### 股票支持库.mcode
- 面向对象的一个实例，开发者可以基于开发
---
### 射箭.mcode
- 就是一个射箭的动作。
---
### bedWar.lua
- 这个是起床战争模板的另改版，这个可能会更稳定。
---
# 版权声明
- Copyright (C) Liushuxi.All right reserved.
