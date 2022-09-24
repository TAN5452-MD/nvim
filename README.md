# nvim配置项目
<!-- markdown-toc GitLab -->

* [如何使用](#如何使用)
* [配置结构](#配置结构)
* [lua/profile.lua 通用基础配置说明](#luaprofilelua-通用基础配置说明)
* [lua/keymap.lua 快捷键相关配置说明](#luakeymaplua-快捷键相关配置说明)
* [lua/packinit.lua 插件相关的配置说明](#luapackinitlua-插件相关的配置说明)
  * [插件列表](#插件列表)
  * [插件简单说明以及键位绑定](#插件简单说明以及键位绑定)

<!-- markdown-toc -->

## 如何使用

1. 将项目clone至 ~/.config/nvim 目录中(注意备份好自己的配置)  
    ```plaintext
    cd ~/.config
    git clone https://github.com/yaocccc/nvim
    ```
2. 启动vim 等待自动安装packer(包管理工具、如果你没有安装的话) 会自动安装所有插件

3. 每次修改过lua/packinit.lua 请重启后PackerSync

## 配置结构

```dir
.
├─ lua/                -- LUA配置目录
│  ├─ pack/            -- 各插件的配置目录
│  ├─ G.lua            -- G: Global 封装了lua配置内用到的部分通用方法
│  ├─ keymap.lua       -- 快捷键配置
│  ├─ packinit.lua     -- 插件配置入口
│  └─ profile.lua      -- 环境变量(各种set)
├─ colors/             -- 样式相关(theme)
├─ ftplugin/           -- 单独文件类型独有的配置
├─ snippets/           -- 代码片段
├─ init.lua            -- 配置入口
├─ coc-settings.json   -- coc配置
└─ README.md           -- README
```

## lua/profile.lua 通用基础配置说明

  不额外说明了，有需要直接看 lua/profile.lua 的注释

## lua/keymap.lua 快捷键相关配置说明

| 模式   | 键                   | 说明                              |
| ------ | --------             | ---------                         |
| normal | ;                    | :                                 |
| normal | +                    | 数字自增                          |
| normal | _                    | 数字自减                          |
| normal | ,                    | 重复上一次宏操作                  |
| normal | ctrl - j             | 从, 处打断当前行                  |
| normal | \                    | 清除当前搜索词高亮                |
| normal | backspace            | 删除当前词并插入                  |
| insert | ctrl - h(backspace)  | 删除内容置词首                    |
| insert | ctrl - z             | 撤销最后修改并退出编辑            |
| command| ctrl - a             | Home                              |
| command| ctrl - e             | End                               |
| all    | ctrl - s             | 进入替换模式                      |
| normal | S                    | save                              |
| normal | W                    | close                             |
| normal | Q                    | quit                              |
| normal | R                    | 重载配置                          |
| normal | >>                   | 将代码块右移                      |
| normal | <<                   | 将代码块左移                      |
| visual | > or tab             | 将代码块右移                      |
| visual | < or shift-tab       | 将代码块左移                      |
| all    | shift - 方向         | 选中文本(类似于在其他编辑器的体验)|
| all    | ctrl - shift + 方向  | 快速移动                          |
| all    | ctrl - u             | 清空本行                          |
| all    | alt - up/down        | 上下移动当前行/块                 |
| all    | alt - o              | 下方新起一行                      |
| all    | alt - O              | 上方新起一行                      |
| normal | sv                   | 左右分屏                          |
| normal | sp                   | 上下分屏                          |
| normal | sc                   | 关闭当前窗口                      |
| normal | so                   | 关闭其他所有窗口                  |
| normal | s + 方向             | 聚焦到对应窗口                    |
| normal | ctrl - space         | 切换窗口                          |
| normal | s=                   | 将窗口大小置为相同                |
| normal | s,                   | 窗口减小                          |
| normal | s.                   | 窗口增大                          |
| normal | ss                   | 切换到下个buffer                  |
| all    | alt  - left or right | 左右跳转buffer                    |
| all    | F5                   | 一键运行当前文件                  |
| normal | --                   | 折叠/反折叠                       |
| visual | -                    | 折叠选中内容                      |
| normal | space                | 在行首 第一个非空字符 行尾 跳转   |
| normal | =                    | 格式化当前行                      |
| visual | =                    | 格式化选中内容                    |
| visual | t                    | 驼峰和下划线转换                  |

PS: 如果需要格式化js和ts代码，请手动安装: npm i js-beautify -g

## lua/packinit.lua 插件相关的配置说明

### 插件列表

```
  'yianwillis/vimcdoc'             -- 中文vim help文档
  'terryma/vim-expand-region'      -- 快速选中文本插件
  'lfv89/vim-interestingwords'     -- 高亮关键词插件
  'mg979/vim-visual-multi'         -- 虚拟多光标插件
  'iamcco/markdown-preview.nvim'   -- md 预览插件
  'mzlogin/vim-markdown-toc'       -- md 生成目录
  'neoclide/coc.nvim'              -- coc
  'voldikss/vim-floaterm'          -- 悬浮终端插件
  'tpope/vim-dadbod'               -- 数据库可视化工具
  'kristijanhusak/vim-dadbod-ui'   -- 数据库可视化工具
  'junegunn/fzf.vim'               -- 文本/文件搜索插件
  'nvim-treesitter/nvim-treesitter'-- 文本分析插件
  'yaocccc/nvim-lines.lua'         -- 状态栏/标签栏插件
  'yaocccc/nvim-hlchunk'           -- {}区间高亮插件
  'yaocccc/vim-surround'           -- 快速操作({["'`等的插件
  'yaocccc/vim-comment'            -- 快速注释插件
```

### 插件简单说明以及键位绑定

> [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)  
>> v 扩展 visual 范围 例如我经常用的 vv 选中当前词，vvv选中"xxx"内的内容  
>> V 缩小 sisual 范围  
>
> [lfv89/vim-interestingwords](https://github.com/lfv89/vim-interestingwords)  
>> ff 高亮当前词(如果光标在高亮的词上可以用n/N跳转)  再次ff取消高亮  
>> FF 取消全部高亮词  
>
> [**mg979/vim-visual-multi**](https://github.com/mg979/vim-visual-multi)  
>> 建议到对应的仓库看一下  
>> ctrl + up or down， 上下行添加光标(normal模式)(可用w e b $ ^ t f等等操作)  
>> ctrl + left or right， 左右添加选中(visual模式)(可用w e b $ ^ t f等等操作)  
>> tab 在 normal 和 visual 模式下切换  
>> ctrl + d 选中全部当前词  
>> ctrl + x 当前位置添加光标  
>> ctrl + w 当前词首添加光标  
>> q 取消当前光标  
>
> [iamcco/markdown-preview.vim](https://github.com/iamcco/markdown-preview.vim)  
>> F5 在浏览器预览markdown  
>
> [mzlogin/vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)  
>> :GenTocGFM  
>
> [**neoclide/coc.nvim**](https://github.com/neoclide/coc.nvim)  
>> 建议到对应的仓库看一下  
>> 全局的插件列表 let g:coc_global_extensions=[...] 按需添加  
>> coc 通用快捷键  
>>> tab/s-tab 上下 选择候选项  
>>> gd 跳转到定义  
>>> gy 跳转到类型  
>>> K 查看文档  
>>> ctrl-e 显示错误列表  
>>> F2 重命名  
>>> F4 关闭/开启 coc  
>>
>> 部分自用的插件的快捷键  
>>> mm 翻译当前词  
>>> T 开始coc-explorer文件管理器窗口
>>> ( or ) 跳转到上下 git 修改  
>>> C 展示 git commit or change info  
>>> leader - g 开启临时 git blame 显示  
>
> [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)  
>> ctrl - t 打开关闭 浮动终端  
>> ctrl - b 打开关闭 浮动数据库可视化工具(依赖于 tpope/vim-dadbod)  
>> ctrl - f 打开关闭 浮动ranger  
>
> [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod)  
> [kristijanhusak/vim-dadbod-ui](kristijanhusak/vim-dadbod-ui)  
>> :DBUI 来使用 数据库可视化工具  
>> 添加链接: let g:dbs = [{ 'name': 'connection_name', 'url': 'mysql://user:password@host:port' }]  
>> 注意 url内的东西需要url_encode  
>
> [**junegunn/fzf.vim**](https://github.com/junegunn/fzf.vim)  
>> 注意要配合ag使用，请自己手动安装: the_silver_searcher fd bat  
>> ctrl - a 全局文本搜索  
>> ctrl - l 当前文件文本搜索  
>> ctrl - p 全局文件搜索  
>> ctrl - h 历史文件搜索  
>> ctrl - g git变更文件搜索  
>> ctrl - / 关闭/开启preview  
>
> **yaocccc/...**  
>> 建议到对应的仓库看一下  
>>
>> [yaocccc/nvim-lines.lua](https://github.com/yaocccc/nvim-lines.lua)  
>>> 采用默认配置即可  
>>
>> [yaocccc/vim-surround](https://github.com/yaocccc/vim-surround)  
>>> visual模式下 '"`({[]}) 会用对应的符号将选中区域包裹起来  
>>> normal模式下 ys + '"`({[]}) 会用对应的符号将当前词包裹起来  
>>> normal模式下 yS + '"`({[]}) 会用对应的符号将当前行包裹起来  
>>> normal模式下 ds + '"`({[]}) 会删除离光标最近的符号  
>>> normal模式下 cs + 符号1 + 符号2 会将 最近的 符号1 改为 符号2  
>>
>> [yaocccc/vim-comment](https://github.com/yaocccc/vim-comment)  
>>> normal模式下 ?? 行注释/反注释当前行  
>>> visual模式下 /  行注释/反注释当前块  
>>> visual模式下 ?  块注释/反注释当前块  
>>
>> [yaocccc/nvim-hlchunk](https://github.com/yaocccc/nvim-hlchunk)  

