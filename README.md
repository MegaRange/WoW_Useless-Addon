# Useless Addon
A Self-use useless World of Warcraft Addon dat do play sound or something when skill cast successfully. No customizing options. No warranty.

自用。毫无卵用的魔兽世界插件，技能施放成功时播放声音或做其他事情，无自定义选项。无质量保证。

---

Usage:
* Download zip, open with a uncompresser software like 7-zip;
* Enter folder with right client version, drag `Useless Addon` folder into World of Warcraft's `Interface/AddOns` folder;
* Launch game, In addon menu check "Load outdated addons" tickbox(because I'm lazy for update TOCs).

Modify:
* You need a little knowledge of Lua Programming Language to do this;
* Use a text editor(at least notepad) to open `Useless Addon.lua`;
* Add an `elseif ... then` statement before `end`;
* Set condition to `SpellID == (Variable or Acutally SpellID number)`;
* Save, you might need type `/reload` ingame to reload addons.
* Additionally, you can open `Useless Addon.toc` and modify `## Interface: (a number)` to update TOC to an acceptable number, this will get rid of checking that "Load outdated addons" tickbox, and will improve stablity and security of the game. (I don't need this because I won't use addons too much, and I often check codes in addon to ensure these addons doing right thing)

to find SpellID, use `/etrace` ingame to open Event Tracer, then use a spell/ability you want, event tracer will show an `UNIT_SPELLCAST_SUCCEEDED` event with a SpellID number in it, use this number in that `SpellID == (Variable or Acutally SpellID number)` condition statement.

Check WoWWiki if you need some information of the addon mechanic.

---

使用方法：
* 下载zip，用任何解压缩软件（如7-zip）打开它；
* 进入所需版本的文件夹，将`Useless Addon`文件夹拖到魔兽世界的`Interface/AddOns`文件夹内；
* 启动游戏，并在插件菜单中打开“加载过期插件”（因为我懒得更新TOC）。

修改方法：
* 你需要一点儿Lua编程语言的知识来做这件事；
* 使用一个文本编辑器打开`Useless Addon.lua`（至少用记事本就可以）；
* 在`end`语句前面加入一个`elseif ... then`语句；
* 将条件设置为`SpellID == (变量或者实际的SpellID)`；
* 保存，你也许要在游戏中输入`/reload`重载插件。
* 顺便，你可以打开`Useless Addon.toc`并编辑`## Interface: (数字)`用一个合理的数字更新TOC，这么做可以不用再勾选“加载过期插件”，也能保护游戏的稳定性和安全性。（虽然我不需要，因为我不用太多插件，并且我会检查插件的代码，确保插件正确运行）

要获取SpellID，在游戏内输入`/etrace`来打开事件跟踪器，然后使用一个你想要的技能，事件追踪器窗口就会出现一个`UNIT_SPELLCAST_SUCCEEDED`事件，事件包含SpellID实际的数字，把这个数字用在`SpellID == (数字或者实际的SpellID)`语句中即可。

你可以去WoWWiki（英文）找你需要的关于插件机制的内容。
