-- cjkfont.lua
-- Author: Takushun Wu(GitHub: takushun-wu)
-- Licensed under WTFPL(http://www.wtfpl.net/)

function textCJK(s)
    tex.sprint("\\begingroup%\n")
    for p, c in utf8.codes(s) do 
        if ((c>=0x2E80 and c<=0x2FFF) or (c>=0x3400 and c<=0x4DFF) or 
            (c>=0x4E00 and c<=0x9FFF) or (c>=0xF900 and c<=0xFAFF)) and plane~=0 then
            tex.sprint("\\jfontspec{WenJin Mincho Plane 0}[Renderer=HarfBuzz]")
            plane=0
        end
        if c>=0x20000 and c<=0x2FFFF and plane~=2 then
            tex.sprint("\\jfontspec{WenJin Mincho Plane 2}[Renderer=HarfBuzz]")
            plane=2
        end
        if c>=0x30000 and c<=0x3FFFF and plane~=3 then
            tex.sprint("\\jfontspec{WenJin Mincho Plane 3}[Renderer=HarfBuzz]")
            plane=3
        end
        tex.sprint(utf8.char(c))
    end
    tex.sprint("\\endgroup%\n")
end