# Vim快速配置

### 修改人

**chenxuan**

- [README](./README.en.md) in English

## 仓库地址

1. gitee:[vim-fast: A easy vim config](https://gitee.com/mirrorvim/vim-fast)

2. github:[GitHub - chenxuan520/vim-fast](https://github.com/chenxuan520/vim-fast)

## 配置效果

![](https://picx.zhimg.com/v2-465040e3e32df418808b886729a1815f_1440w.jpg?source=172ae18b)

## 为什么制作

- 之前一直使用[Vimplus](https://gitee.com/chxuan/vimplus.git),不过Vimplus出现几个问题
  
  1. Vimplus很久没有更新了,挺多issue没有解决的
  
  2. 目前主流补全方案是lsp,Vimplus使用的YCM有点老了,而且需要自己编译
  
  3. 有的插件已经有个更加好的替换方案
  
  4. github访问太慢,导致插件下载太慢,对新手不友好

- 对于其他的配置,有的存在github访问问题,有的因为太过复杂,使得配置文件基本和原来的.vimrc相差太远,使得虽然全面,当时配置更加复杂了

- 基于以上的问题,我想基于Vimplus进行创作,使得它更加好

## 项目特点

1. 基于Vimplus,使得所有配置文件都在.vimrc中,配置更加简单和直观

2. 插件精简化,精选出了31个插件,使得打开速度得到提高

3. 插件压缩包放在gitee上,使得插件下载的速度得到提高,对新手友好化

4. 配置文件极少,只有400余行,注释详细,使得更加容易阅读和修改

5. 添加了功能快捷键的查找,避免了出现快捷键忘记

6. 支持C/C++,Go,python语言一键配置(欢迎大家提mr添加功能)

7. 使用coc代替YCM,更好的补全体验

8. 支持更加多样化的主题,更好的编程体验

## 项目说明

1. **!目前只支持ubuntu,debian,以及其他ubuntu系的linux,其他系统可以使用vimplus!,同时非常希望大家可以提mr来完善仓库,或者提出issue说明需求的系统**

2. 该项目基于[Vimplus](https://gitee.com/chxuan/vimplus.git)

## 安装

1. git clone [https://gitee.com/mirrorvim/vim-fast](https://link.zhihu.com/?target=https%3A//gitee.com/mirrorvim/vim-fast)

2. cd vim-fast && ./install.sh

3. 等待软件的安装，直到出现，按下y 回车，如果你原来vim有配置会弹出询问是否保存配置

![](https://pic3.zhimg.com/80/v2-e446d1e2516b559cf5a0d039a06fa242_720w.jpg)

4. 等到下图，按下回车

5. ![](https://pic3.zhimg.com/80/v2-c8683440682115dcb5c95c78f93c52b2_720w.png)

6. 出现下图，安装完成

7. ![](https://pic1.zhimg.com/80/v2-e6ced21db995500235c706af87ab5410_720w.jpg)

8. 对于不同语言执行不同脚本

#### C++

1. ./cpp.sh
   
   ![](https://pic1.zhimg.com/80/v2-8f63e192e0b96e7514fd89112f0bbbb4_720w.png)

2. 出现下图配置成功
   
   ![](https://pic2.zhimg.com/80/v2-3116e456f0df668740f16dabb7eb50d9_720w.jpg)

#### Python

1. ./python.sh
   
   ![](https://pic4.zhimg.com/80/v2-f4024d6b0b3ac1563753ff06485f6203_720w.png)

2. 出现这个为安装python补全成功
   
   ![](https://pic2.zhimg.com/80/v2-acbb90f61bbe85985e5619382ece1235_720w.jpg)

#### Go

1. ./go.sh
   
   ![](https://pic2.zhimg.com/80/v2-a9f92770ec5d7ff5ad891e20cb9dfb49_720w.png)

2. 刚编辑文件时需要等待一会下载，大概两分钟
   
   ![](https://pic1.zhimg.com/80/v2-fe683bb1bae4bbf75e447528cdfecf18_720w.png)

3. 出现这个为安装go补全成功
   
   ![](https://pic2.zhimg.com/80/v2-1d6ebe0d321f1f0aaae71836371c1c35_720w.jpg)

## Vimplus仓库

[Vimplus](https://gitee.com/chxuan/vimplus.git)

## QA

1. 有nvim版本吗
   
   - nvim可以暂时通过nvim.sh安装,lua配置版本还需要点时间

2. 我的系统没有支持
   
   - 可以提出issue或者自己制作提出mr

## 帮助

1. [插件快捷键说明](./key.md)
2. [Vim一些按键帮助](./help.md)

## 希望

- 由于个人能力有限,希望大家可以给自己的系统写一份install.sh,然后提mr,非常感谢

---

- 如果这个仓库对你有用,可以给个星星
