-- jfm-bpmfvert.lua
-- Author: Takushun Wu(GitHub: takushun-wu)
-- Licensed under WTFPL(http://www.wtfpl.net/)

luatexja.jfont.define_jfm {
    version = 3,
    dir = 'tate',
    zw = 1.0, zh = 1.0,
    [0] = {
      align = 'left', left = 0.0, down = 0.0,
      width = 'prop', height = 0.88, depth = 0.12, italic = 0.0
    },
    [1] = { -- 注音符号调号和缩小的注音符号
      chars = {
        0x02C6, 0x02C7, 0x02C9, 0x02CA, 0x02CB, 0x02D6, 0x02D8, 0x02EA, 0x02EB,
        0x0300, 0x0301, 0x0302, 0x0304, 0x0306, 0x030C, 0x1AC8, 0x31B4, 0x31B5,
        0x31B6, 0x31B7, 0x31BB
      },
      align = 'left', left = 0.0, down = 0.0,
      width = 0, height = 0.88, depth = 0.12, italic = 0.0
    },
    [2] = { -- 注音符号轻声
      chars = {0x02D9},
      align = 'left', left = 0.0, down = 0.0,
      width = 'prop', height = 0.88, depth = 0.12, italic = 0.0
    }
}