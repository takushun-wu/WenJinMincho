# 更新日志（测试版）
## 0.701(2024.12.1)
### 说明文件
- 增加[ZeoSeven Fonts Webfont CDN服务](https://fonts.zeoseven.com/)的相关使用说明，CDN服务器提供的字体会在稍后更新。欢迎用户及开发者使用该服务在网页上调用文津宋体（除汉字外有些功能可能无法正常使用）。
- 完善了使用手册和使用授权中的部分语言描述。
### 改进与问题修复
- 新增4个遗漏的Adobe-GB1字符集字符：
    |字符     |映射字符  |备注                      |
    |:-------:|:--------:|:------------------------:|
    |`U+00AD` ­|`U+002D`- |软连字符，一般情况下不可见|
    |`U+205D`⁝|`U+FE19`︙|-                         |
    |`U+2329`〈|`U+3008`〈|-                         |
    |`U+232A`〉|`U+3009`〉|-                         |
- 第0平面字体新增8个位于扩展B区的汉字（在Adobe-GB1字符集中）：𠂇𠂉𠃌𠔉𠦝𡗗𢦏𤇾
- 修复了拉丁大写字母“Q”后随下标组合用字符位置异常的问题，即增加拉丁大写字母“Q”及其斜体形式的下标组合用字符的锚点。
- 修复了SVS序列`FF01 FE00`映射缺失的问题（应映射为置于左侧的全角感叹号）。
- 修复了某些位于中间的标点符号无法正确压缩的问题。
- 将14个汉字修改成思源宋体的样式：
    - **ExtB**：𠁣𠃛𠜖𠠃𢛟𢜳𢩭𢺴𣜧𤁢𥏘𦃓𪖶
    - **ExtE**：𬏛
- 修正11个错误汉字字形：
    - **URO**：蘩龴
    - **ExtB**：𠂉𢟼
    - **ExtC**：𪽺𫃇𫓊𫙼𫚄
    - **ExtE**：𬂵
    - **IVS**：𨻶󠄀`28EF6 E0100`

## 0.700(2024.11.8)
### 新增内容
#### 字符
- 增加了拉丁字符的支持范围，涵盖GF Latin Core字符集定义的全部字符；
- 加入23个音标用字符“꜀ ꜁ ꜂ ꜃ ꜄ ꜅ ꜆ ꜇ ꜈ ꜉ ꜊ ꜋ ꜌ ꜍ ꜎ ꜏ ꜐ ꜑ ꜒ ꜓ ꜔ ꜕ ꜖”，其中后5个支持至多3个连续字符的连接（如“꜒ ꜓ ꜔”→“꜒꜓꜔”）；
- 添加字符U+0323“◌̣”（组合用下加点），用于部分注音符号的下加点（粤语注音符号），也可用于汉字的着重号表示；
- 添加两个标点字符“‼ ⁇”，这两个字符都占据一个汉字（1000ppem）的宽度。
#### OpenType特性
- 新增ASCII和拉丁字符的斜体支持，涵盖GF Latin Core字符集和各拼音系统（越南语除外），可通过OpenType`ital`特性调用；
- 新增《古籍印刷通用字规范字形表》（GB/Z 40637-2021）字形支持，可通过OpenType`ss12`特性调用；
- 新增等宽数字（直立形式和斜体形式，`tnum`）和序数替换（西班牙语：12a→12ª，`ordn`）特性，可通过OpenType特性调用；
- 新增拉丁语系中针对特定语言的OpenType自动处理功能：荷兰语的IJ标音字符、加泰罗尼亚语的“l·l”处理、罗马尼亚语的“Şş”替换成“Șș”、土耳其语的有点“i”后加标音字符不去点等；
- 添加10个字符的西文比例宽度样式：“ˆ ˇ ˘ ˙ ‖ − ≈ ≠ ≤ ≥”，可通过OpenType`locl`特性调用，将语言设定成西文（默认字形为全角形式）；
- 添加了在中国大陆字典当中常用的注音符号调号样式——调号位于注音符号的正上方（仅限阳平、上声和去声符号），可通过OpenType`ss04`特性调用（该特性还会将注音符号“ㄧ”替换成一竖）。
### 改进与问题修复
#### 改进与改动
- 改进了LGC（拉丁字母、希腊字母和西里尔字母）字符的样式，使之接近于Source Serif 4的样式；
- 注音符号的笔划较之前的版本有所加粗；
- 部首扩展与康熙部首（`U+2E80..2E99,2E9B..2EF3,2F00..2FD5`）的默认样式已更改为宋体样式，黑体形式可通过OpenType`ss11`特性调用（PS：黑体版本特性**有可能**会因后续版本的字符空位等技术原因而移除）；
- 将数个IVS异体字修改成思源宋体的样式；
- 改进了使用手册的部分语言描述以及排版样式。
#### 问题修复
- 修复了在LuaLaTeX使用`luatex-ja`模板的环境下注音符号竖排时遇到“ㆴ˙ ㆵ˙ ㆶ˙ ㆷ˙ ㆻ˙”（上标点应该在注音符号的正上方）连体后面无故增加1 em空格的问题；
- 修复了在Word软件下英文字体选单下找不到文津宋体的问题（同时这也是CJK笔画区块在Word中无法替换成文津宋体的原因）；
- 修复了在安卓系统下基于TextView的文本框（尤其是[UnicodePad](https://github.com/Ryosuke839/UnicodePad)中的文本框）首选文津宋体（特别是第0平面）时行间距过大的问题[^1]；
- 修正了10个错误汉字字形。
    - **URO**：乁衃†鶠‡鿽
    - **ExtB**：𪚝
    - **ExtC**：𪹇
    - **ExtE**：𬸘‡
    - **ExtF**：𭂲𭓱𮩁（这3个跟进Unicode 16.0版本）
    - 画†的汉字Unicode码表字形（`cv01`）和GB 18030-2022字形（`cv02`）都发生改变，而默认映射的字形不变；
    - 画‡的汉字仅默认映射的字形发生改变，Unicode码表字形（`cv01`）和GB 18030-2022字形（`cv02`）都不变。

在此对提供问题反馈的内测用户表示感谢。

[^1]: 即字体中的`head`表中的yMin/yMax值修改成与`hhea`表中的Ascender/Descender的值。yMin/yMax值为整个字体所有字形的y坐标的最小值/最大值，通常是由字体生成软件自动生成。详情参见：https://zhuanlan.zhihu.com/p/28012968

## 0.504(2024.10.13)
<font color="red">**注意：本次更新为重大问题修复，建议所有用户（尤其是使用v0.503版的用户）尽快更新。为您带来的不便敬请谅解。**</font>
- 修正4个错误IVS汉字字形
   - **IVS**：博󠄇`535A E0107`、即󠄂`5373 E0102`&#x2a;、杞󠄃`675E E0103`&#x2a;、梁󠄁`6881 E0101`

&#x2a; (#1)感谢GitHub用户@osfans

## 0.503(2024.10.10)
**注意：本次更新（原则上，如无重大BUG）是三测前的最后一次更新。**
- 修正72个汉字字形
<details>
<summary>点击以查看</summary>

-   - **URO**：丮凿‡卂卋吿弒彧恱†憠†抇敻黸稶篳§
    - **Comp**：寧
    - **ExtA**：㖭†㡪†㨮†䃣†䎜†䜌†
    - **ExtB**：𢪏𤇾†𨅏𪍠𪑛
    - **CompSup**：𡷦㣇慎櫛牐㺬𥪧𥪧竮䈂𥮫篆築䈧𥲀真者茝䗗㒻𧼯
    - **IVS**：丮󠄀`4E2E E0100`、侍󠄀`4F8D E0100`、唕󠄀`5515 E0100`、嚧󠄀`56A7 E0100`、壚󠄀`58DA E0100`、帛󠄀`5EAB E0100`、慽󠄀`617D E0100`、棏󠄀`68CF E0100/E0101`、樺󠄀`6A3A E0100`、櫨󠄀`6AE8 E0100`、沛󠄀`6C9B E0100`、淂󠄀`6DC2 E0100`、渫󠄀`6E2B E0100`、濊󠄀`6FCA E0100`、煤󠄀`7164 E0100`、犭󠄀`72AD E0100`、瞱󠄀`77B1 E0100`、硾󠄀`787E E0100`、礵󠄀`7935 E0100`、簴󠄀`7C34 E0100/E0101`、籖󠄀`7C56 E0100`、粉󠄀`7C89 E0100/E0102`、虍󠄀`864D E0100`、蹙󠄀`8E59 E0100`、鬯󠄀`9B2F E0100`
    - **注**：
    - 画†的汉字仅Unicode码表字形（`cv01`）发生改变，默认映射的字形和GB 18030-2022字形（`cv02`）不变；
    - 画‡的汉字Unicode码表字形（`cv01`）和默认映射的字形都发生改变，但GB 18030-2022字形（`cv02`）不变；
    - 画§的汉字默认映射的字形和GB 18030-2022字形（`cv02`）都发生改变，但Unicode码表字形（`cv01`）不变。
</details>

- 优化了基本区、兼容区、扩展A、扩展B-G（思源宋体原版覆盖范围）、Adobe-Japan1 IVD大部分汉字的曲线轮廓。
- 将部分可统合的兼容区/普通汉字与IVD汉字映射到同一字图。

## 0.502(2024.10.3)
- 修正7个汉字字形
<details>
<summary>点击以查看</summary>

-   - **URO**：虩（码表以及GB形式，默认形式不变）
    - **ExtB**：𧛓𨼭
    - **IVS**：芡󠄂`82A1 E0102`、蕾󠄂`857E E0102`、藿󠄂`85FF E0102`、鄚󠄂`911A E0102`
</details>

- 将30个汉字修改成思源宋体的样式：
    - **ExtB**：𠃸𡠤𡥧𡭝𢃆𢓳𣐕𣱚𤉐𤝕𤝻𤟎𦊂𦏺𧃽𧃰𧧐𨇠𩒱𩿤𪃧
    - **ExtC**：𪻁
    - **ExtE**：𫣗𫰪𫾔
    - **IVS**：蒧󠄁`84A7 E0101`、蒸󠄂`84B8 E0102`、蓼`84FC E0103`、蕆`8546 E0102`、蕕󠄄`8555 E0104`
- 修复了字母i、ɨ、j后接组合用字符“◌᷄◌᷅◌᷆◌᷇◌᷈◌᷉”不能去点的问题。
- 修复了字母ʝ后接组合用上标字符不能去点的问题。
- 修复了5个连字ﬀ、ﬁ、ﬂ、ﬃ、ﬄ后接的组合用字符位置错乱的问题。（即为这5个字符添加锚点）
## 0.501(2024.9.20)
- 修正13个汉字字形
<details>
<summary>点击以查看</summary>

-   - **URO**：珎鉨
    - **ExtA**：㤗
    - **ExtB**：𡠌𧂘𨽴
    - **ExtC**：𫗗
    - **IVS**：㤗󠄀`3917 E0100/E0101`、㤗󠄂`3917 E0102`（与`U+3917`共用一个字形）、珎󠄀`73CE E0100/E0102`、珎󠄁`73CE E0101/E0103`、衤󠄀`8864 E0100`、鉨󠄀`9268 E0100/E0101`
</details>

- 自此版本起，第2、3平面的1000ppem版本字形已全部制作完成（即Unicode 16.0已收汉字），原先使用SuperHan字体填满的字形已全部被新版本字形替代。
## 0.500(2024.9.10)
### 🎉重要更新
#### 适配Unicode 16.0版本，以下内容发生变化：
- 新增4个字符`‘’“”`的标准异体序列（SVS），在后接`U+FE00`(VS1)可转变为半角形式，后接`U+FE01`(VS2)可转变为全角形式。
- 新增2个中日韩笔画字符`U+31E4`㇤（横斜钩）、`U+31E5`㇥（竖折撇）。
- 改变4个苏州码子字符`〦〧〨〩`的字形。
- 改变1个中日韩笔画字符`U+31D2`㇒的字形。
- 改变55个汉字的字形。
<details>
<summary>点击以查看</summary>

-   - **URO**：鿽
    - **ExtA**：㐍†㐎†㐟†㐠†㐢†㓙†㔔†㕾†㖋†㖌†㖍†㖎†㖙†㖚†㖛†㖜†㖝†㖯†㖰†㖲†㖳†㗟†㗠†㗡†㗯†㘏†㘒†㤀†㪳†㫈†㾱†䎞†䜳†
    - **ExtB**：𠏘𠾺𡄨𢯘𥇀𥑭𥓉𥮟𦬑𦵠𦷾𦼠
    - **ExtC**：𪧨𪶊𫀏𫏖
    - **ExtE**：𫤬𬈜
    - **ExtF**：𭅖
    - **ExtG**：𰶑
    - **ExtH**：𲉨
    * 注：画†的汉字仅Unicode码表字形（`cv01`）发生改变，默认映射的字形不变。
</details>

### 非Unicode版本更新的改变
#### 字形添加、修正与优化
- 重新制作扩展B~H区的T源字形（共11,010个），样式贴近于思源宋体对应版本，同时原先使用全字库正宋体的字形已被全部制作完毕。
- 添加21个国际音标相关字符：ȅ˳◌͈ᵬᵭᵮᵯᵰᵱᵲᵳᵴᵵᵶ◌᷄◌᷅◌᷆◌᷇◌᷈◌᷉‿
- 添加62个带圈数字字符：⓪、⑪~㊿，⓿~⓴
- 添加1个几何图形字符：▷
- 修正/优化14个汉字：
    - **ExtB**：𡇂𤬼𤬽𥒨𥱨𩱜
    - **ExtF**：𭧹𮇸
    - **ExtG**：𰶗
    - **ExtH**：𲉟𲎥
    - **IVS**：旞󠄁`65DE E0101`、旞󠄂`65DE E0102`、虪󠄀`866A E0100`
- 将28个IVS汉字修改成思源宋体（或阮明朝）的样式：
    - 㤀󠄀`3900 E0100`、乄󠄁`4E44 E0101`、乄󠄂`4E44 E0102`、屄󠄀`5C44 E0100`、徲󠄀`5FB2 E0100`、攇󠄀`6507 E0100`、烣󠄀`70E3 E0100`、疃󠄀`7583 E0100`、窙󠄀`7A99 E0100`、窴󠄁`7AB4 E0101`、遀󠄁`9040 E0101`、𠐉󠄃`20409 E0103`、𢙲󠄀`22672 E0100`、𢢆󠄀`22886 E0100`、𣳮󠄁`23CEE E0101`、𥳉󠄀`25CC9 E0100`、𥳍󠄀`25CCD E0100`、𨓽󠄀`284FD E0100`、𨖇󠄀`28587 E0100`、𨖿󠄀`285BF E0100`、𩚩󠄀`296A9 E0100`、𫇿󠄁`2B1FF E0101`
    - 隶󠄂隶󠄄`96B6 E0102/E0104`（共用同一字图）
    - 韈󠄄韈󠄆`97C8 E0104/E0106`（共用同一字图）
    - 龜󠄅龜󠄈`9F9C E0105/E0108`（共用同一字图）
- 重制173个汉字（不含前文所述汉字，256ppem→1000ppem）。
- 将部分可统合的IVS汉字映射到同一字图（glyph）。
- PostScript曲线版本（OTF版）增加了字形微调（Hinting）信息，以优化在低分辨率下的字形显示效果。
- 修复了在`vhal`（竖排半角替换）特性下部分标点符号位置异常的问题。
- 修复了组合用字符“◌̏”的锚点位置错误的问题。

## 0.123(2024.8.9)
#### 字形添加、修正与优化
- 添加31个国际音标相关字符：ħǀǁǃȡȴȵȶɫɿʅʛʣʤʥʦʧʨʮʯʱˤ͜ᴀᴇᵐᵑⱱꜛꜜꭥ
- 优化3个国际音标相关字符/上标拉丁字母：“`U+01C2`ǂ”、“`U+0284`ʄ”、“`U+1D3A`ᴺ”
- 修正/优化783个汉字
<details>
<summary>点击以查看</summary>

-   - **ExtB**：𠇛𠗴𠜔𠧰𡖹𡙂𡚍𡭪𡱎𡱠𡳟𢅍𢑤𢑼𢑽𢓖𢘪𢜵𢡗𢥰𢰡𢱴𢴯𢹎𢻛𢿌𣆧𣐉𣔏𣕔𣡷𣤁𣥎𣥩𣧅𣧕𣨴𣯅𣯚𣳳𣵞𣷛𣸉𣹆𣿘𤁴𤃿𤈕𤊼𤌒𤌸𤌻𤎃𤎊𤎣𤎥𤏙𤏹𤐞𤐬𤐭𤑌𤑪𤑽𤒃𤒗𤒜𤓜𤓦𤕐𤖫𤗓𤗩𤗭𤗵𤘛𤘧𤙼𤛌𤛟𤛼𤜸𤜺𤝛𤞉𤟣𤟬𤟶𤠺𤡙𤡤𤡫𤣌𤣔𤥛𤧝𤧵𤨛𤪉𤪰𤪾𤫆𤫌𤫧𤭺𤰌𤰨𤰫𤱑𤱦𤱿𤲜𤲭𤲴𤳣𤴗𤴟𤼷𤼾𤽓𤽖𤽻𤾁𤾉𤾣𤾿𤿋𤿽𥀒𥀕𥀯𥀷𥁂𥁎𥁓𥁖𥂯𥂸𥃇𥃈𥃔𥃩𥄊𥄒𥅏𥅕𥆢𥆮𥆴𥇝𥇡𥇫𥈄𥈈𥈏𥉁𥊱𥊸𥊾𥋄𥋭𥌖𥌘𥍇𥍿𥎤𥎼𥏬𥏰𥐁𥑱𥓀𥓨𥔏𥔐𥔨𥕆𥕙𥗉𥗋𥗑𥗔𥗙𥗤𥗥𥘣𥞧𥟜𥟯𥠌𥠜𥠻𥡎𥡖𥡻𥢔𥢣𥢮𥢰𥣜𥣥𥣫𥤈𥤎𥨊𥫪𥬪𥭥𥭬𥭳𥮤𥮮𥮯𥯕𥯣𥯬𥰰𥰳𥱂𥲉𥲔𥲦𥲪𥲭𥳜𥳸𥳹𥴒𥵒𥵢𥵵𥵶𥵼𥶖𥶟𥶢𥷄𥷐𥷔𥷙𥷟𥷱𥹆𥹹𥺜𥼓𥽃𥽒𦉶𦊗𦋇𦋳𦌃𦌋𦌓𦌡𦌭𦍈𦍬𦏗𦒾𦓀𦓔𦓘𦓢𦘡𦙡𦛹𦜉𦜎𦜳𦝸𦞈𦞞𦠌𦡘𦡩𦡼𦢊𦢭𦢯𦢰𦢹𦣉𦤁𦤗𦤿𦥣𦥱𦦋𦦐𦦔𦦥𦦾𦫔𦫜𦫞𦫟𦬒𦬡𦭾𦮇𦮕𦮮𦰮𦰲𦱵𦴁𦴆𦴈𦶐𦷙𦷢𦸢𦺺𦺻𦺾𦻋𦻎𦼌𦼐𦼳𦼴𦽋𦽢𦽩𦽭𦾑𦾺𦿆𧀆𧀘𧀪𧀫𧀬𧀭𧀵𧁰𧁾𧂊𧂋𧂦𧃜𧃢𧃬𧃱𧄏𧄙𧄻𧅀𧅡𧅾𧆗𧇿𧈔𧋚𧌌𧌒𧌛𧌝𧌡𧍓𧍭𧍵𧎄𧏄𧏍𧏥𧐀𧐓𧐭𧐮𧐯𧐰𧑘𧑬𧑮𧒁𧒃𧒢𧓜𧓩𧓽𧓾𧔁𧔱𧕦𧕵𧖠𧖯𧖺𧖽𧗛𧢆𧯁𧯢𧰆𧰚𧰬𧰭𧱗𧲐𧲢𧲶𧳿𧴌𧴓𧴦𧶻𧷅𧷌𧹈𧹾𧺄𧺳𧻜𧻫𧻬𧻻𧻽𧼟𧾜𧾶𧿕𧿮𨀔𨀭𨁞𨁢𨂬𨂸𨃦𨄆𨄎𨅨𨅲𨅴𨇅𨇫𨋈𨋬𨌐𨌦𨌸𨏓𨏮𨐃𨛛𨛷𨛹𨝌𨝟𨝩𨝬𨞃𨞢𨞷𨟋𨧏𨧭𨧳𨧴𨨬𨩹𨪄𨪎𨪖𨪻𨫖𨭊𨭹𨮆𨮓𨮪𨮰𨮷𨮾𨯀𨯜𨯺𨰵𨰷𨴡𨵉𨵫𨵴𨵵𨷮𨹤𨺅𨺬𨻾𨼖𨽫𨾂𨾄𩇧𩇨𩈊𩈟𩈦𩉀𩉖𩊢𩊷𩌊𩌤𩌿𩍁𩍄𩍩𩎑𩐆𩐉𩐍𩐎𩐏𩐖𩑛𩓺𩔘𩔞𩔤𩖋𩖏𩖒𩖧𩗝𩗸𩘃𩘡𩘵𩘺𩙎𩙐𩙖𩚁𩠮𩠰𩡍𩡟𩡷𩢚𩣦𩦛𩧒𩧕𩧗𩵑𩸊𩸓𩹌𩹒𩹞𩹼𩺟𩺷𩻉𩻞𩻯𩼐𩼛𩼥𩽅𩽍𩽘𩽣𩽬𩽯𩾘𩾜𩾣𩾸𩿼𪀧𪁊𪁐𪁯𪁻𪂅𪂜𪂝𪂡𪂩𪃉𪃌𪄁𪄐𪄗𪄭𪄯𪅈𪅊𪅗𪅺𪅼𪆙𪆜𪆺𪇀𪇆𪇈𪇙𪇞𪇠𪇺𪇾𪈇𪈈𪈌𪈔𪈞𪈱𪉳𪌛𪍙𪍝𪍤𪍪𪍫𪎃𪑆𪑓𪑹𪑻𪒃𪒍𪒚𪒢𪒣𪒩𪒺𪓁𪓕𪓛𪓣𪓤𪓨𪓲𪓻𪔀𪔐𪚾𪚿
    - **ExtC**：𪝶𪟰𪠦𪡒𪨳𪮓𪮾𪯘𪱞𪲴𪳚𪴸𪽧𫊼𫖐𫛵𫜑𫜓𫜔
    - **ExtE**：𫤂𫤵𫥦𫥹𫦆𫦛𫧺𫩈𫩲𫪔𫬴𫭄𫯴𫯶𫲜𫴈𫵪𫶦𫶭𫸞𫹿𫻨𫻿𫽏𬅡𬅰𬆐𬇻𬈒𬋮𬌪𬍈𬏙𬐔𬐳𬖳𬙕𬙦𬙳𬚮𬛱𬛶𬝙𬝼𬞗𬢹𬥒𬥝𬥫𬨀𬪡𬪥𬯕𬱊𬹎𬹞𬹠𬹡𬹢
    - **ExtF**：𭃏𭃐𭓁𭚛𭥊𭨢𭫣𭮜𮁒𮅌𮇠𮑆𮔾𮕏𮝃
    - **ExtG**：𰒠𰔹𰕒𰖦𰖾𰝭𰝵𰟝𰠌𰠰𰢕𰦋𰩱𰪚𰮶𰯕𰯚𰯞𰯤𰯫𰰃𰰙𰰼𰻿𰽈𱄲𱄷
    - **IVS**: 倰󠄁`5030 E0101`、啇󠄁`5547 E0101`、噂󠄃`5642 E0103`、 夅󠄁`5905 E0101`、挽󠄂`633D E0102`、泧󠄁`6CE7 E0101`、猶󠄄`7336 E0104`、猶󠄅`7336 E0105`、筵󠄃`7B75 E0103`、迣󠄁`8FE3 E0101`、迱󠄂`8FF1 E0102`、逯󠄁`902F E0101`、遨󠄁`9068 E0101`、遨󠄂`9068 E0102`、釁󠄃`91C1 E0103`、鏠󠄀`93E0 E0100`、霆󠄂`9706 E0102`、韠󠄁`97E0 E0101`、鱁󠄂`9C41 E0102`
</details>

- 重制6,703个汉字（不含前文所述汉字，256ppem→1000ppem）。
- 部分IVS汉字已修改成思源宋体（或昭源宋体、尙古明体、源样明朝）的样式。
- 将部分可统合的IVS汉字映射到同一字图（glyph）。
## 0.122(2024.8.2)
#### 字形添加、修正与优化
- 修正/优化1,586个汉字
<details>
<summary>点击以查看</summary>

-   - **ExtB**：𠀚𠀬𠀸𠁩𠂦𠃁𠄑𠅡𠅹𠅽𠆒𠆮𠆶𠆹𠆺𠈩𠊏𠊭𠊶𠋤𠋴𠌕𠌠𠌬𠍜𠍡𠎟𠎡𠎯𠎰𠎳𠏇𠏾𠐂𠐽𠐿𠑍𠑑𠑞𠑣𠑯𠑵𠒁𠒆𠓜𠓶𠓸𠔇𠔸𠕝𠕟𠕪𠕰𠕹𠖗𠖟𠖪𠖵𠗍𠘋𠘤𠘽𠙗𠙥𠙺𠚃𠚊𠚗𠚠𠚻𠛂𠛘𠛝𠛦𠛲𠜇𠜊𠜩𠝙𠝥𠝩𠝽𠞽𠟃𠟉𠟡𠟭𠟴𠟷𠠌𠠍𠠤𠠥𠠧𠡡𠡫𠡸𠡹𠢃𠢕𠢠𠢣𠢪𠢵𠢺𠣇𠣉𠣣𠣥𠣨𠣮𠣹𠤉𠤚𠤝𠤱𠤻𠥃𠥌𠥕𠥖𠥚𠥜𠥟𠥦𠦁𠦋𠦨𠧑𠧢𠨂𠨆𠨗𠨟𠨣𠨦𠨩𠩍𠩹𠪪𠪯𠪶𠬀𠬘𠬥𠬫𠬰𠬼𠬿𠭆𠭉𠭏𠭘𠭙𠭜𠭣𠭧𠭰𠭶𠭽𠭾𠮆𠮎𠮘𠳅𠳍𠴀𠴯𠴾𠴿𠵪𠵬𠶫𠶰𠶵𠶾𠶿𠷆𠷟𠷼𠸹𠹄𠹆𠹐𠺞𠻖𠽣𠽴𠽷𠽼𠾑𠿓𠿝𡀐𡀸𡁨𡂝𡂦𡃠𡃥𡃪𡃸𡄗𡄛𡅱𡅶𡆐𡆔𡇠𡇶𡇾𡈯𡈵𡉄𡊴𡋡𡋪𡋫𡋳𡋶𡌫𡍊𡍳𡍴𡍸𡎕𡎧𡎷𡎹𡏀𡏘𡏙𡏫𡏴𡐎𡐏𡐢𡐩𡑁𡑃𡑅𡑊𡑐𡑠𡑦𡑷𡑹𡑺𡒏𡒒𡒖𡒤𡒩𡒼𡓑𡓙𡓝𡓲𡓴𡓵𡔅𡔇𡔈𡔌𡔕𡔨𡔰𡔱𡔵𡔸𡕂𡕌𡕛𡕼𡖄𡖚𡖳𡗕𡗛𡗱𡗽𡘍𡘨𡙊𡙔𡙙𡙮𡙳𡙷𡚇𡚓𡛑𡝍𡞣𡞮𡣍𡣎𡤺𡥠𡦎𡩂𡩄𡩪𡪘𡫏𡬰𡬺𡬻𡭆𡭓𡭠𡮟𡮡𡯌𡯐𡯕𡯖𡯙𡯢𡯥𡯨𡯰𡯴𡯺𡯻𡯽𡯿𡰎𡰧𡰳𡰸𡱃𡱋𡱌𡱜𡱯𡱲𡱽𡲂𡲕𡲜𡲴𡳆𡳈𡳬𡳸𡴑𡴠𡴺𡴻𡵀𡶓𡷘𡺡𡻡𡾹𡿼𢀚𢀠𢀣𢀪𢀷𢀾𢁂𢁛𢁝𢁤𢁬𢁳𢁹𢂋𢂺𢃹𢄁𢄅𢄉𢄗𢄜𢄞𢄤𢄬𢅉𢅊𢅠𢅸𢅽𢆌𢆛𢌦𢌵𢌾𢍈𢍖𢍗𢍚𢍯𢍱𢐻𢑑𢑕𢑯𢑸𢒃𢒊𢒜𢒲𢒴𢓞𢓼𢔗𢕏𢕞𢕺𢖃𢖔𢘖𢘗𢘺𢙷𢚦𢚬𢛖𢛝𢛪𢜣𢜦𢜩𢜮𢜯𢜹𢝑𢝓𢝔𢝲𢝺𢝼𢞎𢞧𢟡𢟨𢟽𢡃𢡶𢢎𢣍𢣞𢣟𢣲𢣳𢤂𢤅𢤈𢤋𢤔𢤘𢤙𢤫𢤰𢤶𢤷𢥡𢦑𢦖𢦝𢦡𢦤𢦳𢦹𢦺𢧕𢧙𢧠𢧶𢧹𢨇𢨗𢨮𢩂𢩈𢩌𢩏𢩓𢩔𢩖𢩞𢩠𢪎𢪺𢬫𢬬𢮋𢮢𢰣𢱳𢱺𢳌𢳗𢴡𢴱𢵇𢷌𢸯𢹄𢹏𢹙𢹰𢹳𢻣𢼀𢼠𢼥𢼱𢼹𢽀𢽸𢾦𢿩𢿷𣀄𣀍𣀔𣀘𣀙𣀦𣀿𣁀𣁙𣁻𣂑𣂼𣃇𣅦𣅷𣆎𣇖𣇯𣈌𣉺𣊝𣊪𣊵𣊸𣋍𣋗𣌘𣌭𣌼𣍄𣍤𣎨𣏝𣏶𣏸𣐃𣑧𣑨𣒸𣓇𣓘𣓚𣓛𣓜𣔖𣕊𣕎𣖾𣗲𣗺𣗻𣘪𣙲𣙴𣙽𣚄𣚏𣚤𣛓𣛺𣜨𣜽𣝆𣝎𣝜𣞹𣞺𣟈𣟉𣟎𣟑𣟼𣡗𣡠𣡰𣡼𣢀𣢭𣢰𣣐𣣰𣣾𣤛𣤴𣤷𣥋𣥔𣥶𣥿𣦀𣦐𣦞𣦨𣦫𣦴𣨀𣨗𣨬𣩉𣩪𣩭𣩺𣩾𣪡𣫉𣫘𣫜𣫝𣫥𣫶𣬎𣬐𣬔𣬕𣮳𣯨𣰄𣰆𣰚𣰧𣰸𣱁𣱉𣱕𣱜𣱯𣱻𣲃𣲎𣲔𣲝𣲢𣳣𣴕𣴡𣶠𣸎𣸐𣸑𣹈𣹑𣹢𣹬𣹹𣹻𣺇𣺱𣺳𣼙𣼥𣽈𣽉𣽔𣾥𣾰𣿢𤀢𤀥𤀦𤀲𤀵𤂃𤂸𤂾𤃘𤃫𤃹𤄨𤅌𤅠𤅽𤆆𤆋𤆚𤆜𤆽𤇠𤈑𤈗𤈥𤈫𤉴𤊛𤊝𤊮𤋆𤌐𤏞𤑴𤑶𤑺𤔒𤕢𤕱𤕳𤕽𤕾𤖌𤖐𤖟𤗺𤘑𤚄𤚷𤛙𤜃𤟩𤫬𤫼𤬕𤬘𤬛𤬜𤬤𤬦𤭌𤭑𤮭𤯎𤱁𤱉𤱓𤲒𤳼𤴞𤴴𤵰𤶌𤶝𤷀𤷙𤷜𤷨𤸀𤸋𤸬𤸶𤸹𤹉𤹝𤺜𤻀𤻵𤼈𥁱𥃐𥄇𥆆𥆦𥆸𥋀𥋰𥌲𥍁𥑕𥔊𥕡𥕺𥕼𥚪𥝄𥝈𥝊𥟷𥡁𥢁𥢖𥣤𥤴𥤵𥤽𥥎𥥔𥥠𥥡𥥹𥥺𥦒𥦞𥦥𥦫𥦶𥦺𥦻𥦿𥧃𥧋𥧑𥧕𥧚𥧛𥧝𥧠𥧬𥧮𥧰𥧱𥧲𥧵𥧶𥧸𥧾𥨅𥨇𥨉𥨍𥨐𥨒𥨓𥨘𥨤𥨱𥨶𥨹𥩁𥩅𥩆𥩔𥩼𥪛𥪿𥫉𥮢𥯯𥯲𥰀𥱧𥲇𥳪𥴧𥴹𥶘𥶫𥷬𥺣𥿏𥿞𥿩𥿭𥿱𥿷𦀙𦁄𦁇𦁷𦂂𦂋𦂑𦂚𦃢𦃫𦄯𦄱𦅒𦅓𦅵𦆍𦆡𦆢𦆧𦇸𦉃𦉝𦉢𦋪𦍇𦍱𦎄𦎇𦎤𦎪𦏜𦏨𦐗𦐡𦑂𦑋𦑻𦒟𦓻𦕉𦖎𦖥𦗚𦗧𦗭𦙧𦚙𦜻𦞘𦠃𦣟𦣽𦤂𦤆𦤊𦤍𦤳𦤵𦤻𦥂𦥋𦥐𦦇𦦈𦦑𦦒𦦙𦦣𦦤𦦪𦦯𦦺𦦻𦧅𦨲𦩙𦪀𦪮𦪰𦫉𦫒𦫶𦫻𦭟𦮓𦯄𦯆𦯋𦯍𦯘𦯩𦯫𦯭𦰷𦰺𦱌𦱘𦱚𦱡𦱨𦱪𦱴𦱶𦱹𦳠𦳴𦳺𦴃𦴔𦴙𦴜𦵤𦵬𦵲𦵳𦵴𦵵𦵶𦵹𦶋𦷝𦷠𦷲𦷳𦷶𦷿𦸂𦸌𦸕𦸫𦸱𦹪𦺊𦻍𦼉𦼓𦽡𦿛𧂖𧃗𧃙𧃚𧄾𧅍𧇏𧇑𧇝𧇭𧇻𧈌𧈗𧈞𧐜𧕕𧗣𧗫𧘦𧘨𧘩𧙩𧚒𧚲𧛙𧛫𧜈𧜝𧜫𧜬𧝒𧝸𧝾𧞂𧞃𧞏𧞚𧞫𧡤𧡩𧡬𧢦𧢫𧢬𧢰𧢱𧢾𧣁𧣥𧣯𧣿𧤅𧤊𧤡𧤪𧥕𧥘𧥝𧥲𧥿𧦎𧦒𧦥𧦫𧦬𧧁𧧔𧧟𧧹𧨭𧨻𧩖𧩠𧩥𧩳𧫋𧫜𧫟𧫣𧫧𧫷𧬊𧬌𧭍𧭐𧭒𧭳𧭹𧭺𧭻𧮊𧮎𧮑𧮥𧰛𧲜𧵒𧹷𧹺𧺜𧺲𧺹𧺿𧻎𧻔𧻖𧼚𧼨𧼳𧼴𧽉𧽊𧽕𧽝𧽞𧽠𧽣𧽥𧽦𧽧𧽴𧽶𧽷𧽿𧾍𨁀𨂓𨅩𨈔𨈗𨈺𨈼𨉃𨉝𨉬𨊀𨊆𨊓𨊖𨋿𨍔𨐴𨓀𨓟𨓱𨓹𨔚𨔜𨔪𨔬𨔹𨕔𨕕𨖐𨖱𨖹𨗼𨘕𨘳𨘵𨙺𨙼𨚏𨚑𨚖𨛀𨛂𨛄𨛝𨜆𨜉𨜘𨝑𨞀𨞈𨞊𨞾𨟄𨟆𨟎𨟪𨠀𨠤𨠷𨡐𨡤𨡪𨡳𨢛𨢡𨢢𨢧𨣇𨣊𨣔𨣦𨣯𨣶𨮖𨮲𨯢𨱥𨱧𨱿𨲁𨲣𨲼𨴚𨸑𨸳𨹌𨹩𨹾𨺔𨺜𨺦𨺵𨻑𨻒𨻔𨻭𨻺𨻻𨼍𨼐𨼿𨽌𨽎𨽨𨾁𨾅𨾆𨾋𨾌𨾐𨾛𨾦𨾩𨾶𨾹𨾺𨿩𨿵𨿶𩀀𩀄𩀅𩀊𩀠𩀥𩀧𩀮𩁂𩁕𩁚𩁥𩁪𩁰𩃌𩃞𩃶𩅧𩅾𩆀𩆚𩈱𩉆𩋓𩎒𩎗𩎘𩎙𩎜𩎫𩎮𩎵𩎽𩏉𩏌𩏏𩏐𩏔𩏚𩏜𩏠𩏨𩏵𩐐𩐕𩐧𩐱𩐻𩖉𩖢𩘅𩘚𩘜𩙒𩙔𩚏𩜾𩝸𩞂𩟷𩟸𩡼𩢘𩣿𩤟𩤧𩤹𩥁𩥗𩥵𩦣𩦺𩦼𩧆𩩭𩪧𩫺𩬂𩬓𩬵𩬷𩬹𩭒𩭚𩭯𩭳𩮏𩮒𩮖𩮙𩮠𩮰𩯃𩯓𩯘𩯡𩯤𩯱𩯸𩱔𩱙𩳻𩴄𩴋𩴭𩸖𩸡𩸪𩺃𩺯𩾮𩿅𪀋𪀘𪀝𪁍𪁧𪁲𪁷𪁿𪂑𪂣𪂦𪂪𪂫𪂭𪃂𪃜𪅏𪅚𪆎𪆪𪇂𪇉𪇥𪇹𪈰𪉀𪉵𪊍𪊏𪊨𪊩𪊱𪋅𪋆𪋚𪋜𪋨𪋩𪋹𪎞𪎣𪎨𪎪𪎲𪐮𪑧𪑮𪑱𪑼𪒥𪓃𪓓𪓡𪓮𪓰𪓹𪓼𪓾𪔆𪔥𪔫𪔹𪔺𪔽𪔾𪕀𪕂𪕃𪕇𪕎𪕏𪕒𪕓𪕔𪕚𪕝𪕠𪕤𪕦𪕧𪕨𪕩𪕬𪕯𪕴𪕷𪕸𪕹𪕺𪕾𪖉𪖊𪖍𪖣𪖿𪗐𪗣𪗥𪗭𪗮𪗸𪘋𪘔𪘗𪘥𪘭𪘴𪘻𪘼𪙱𪚌𪚙𪚞𪚢𪚷𪚼𪛂
    - **ExtC**：𪝥𪟱𪧒𪧯𪧳𪫛𪭖𪰄𪴿𪵓𪵣𫌰𫎺𫎽𫜌𫜜
    - **ExtE**：𫤶𫤷𫧚𫨧𫨪𫩞𫮘𫯷𫰩𫰶𫱲𫱴𫲌𫲶𫲹𫳆𫳊𫳌𫳔𫳣𫳦𫳯𫳰𫳼𫴎𫴛𫴪𫶖𫶹𫸁𫸢𫸲𫺟𬀇𬆩𬆳𬎬𬔟𬛨𬛳𬜂𬡑𬡝𬡼𬣃𬥕𬦐𬩗𬩫𬪱𬪷𬰎𬸺𬹟𬺠
    - **ExtF**：𭁑𭖕𭚭𮆩𮓎𮖏𮚵
    - **ExtG**：𰆂𰆨𰍒𰎊𰒇𰗷𰘒𰙇𰚌𰝘𰞆𰟹𰠣𰢜𰢟𰢥𰣡𰥫𰥱𰮨𰲝𰴍𰶫𰶮𰷷𰺼𰻻𰽌𱀲𱀾𱁎𱁿𱂀𱄐𱆐𱈧𱈿𱉄
</details>

- 重制4,750个汉字（不含前文所述汉字，256ppem→1000ppem）。
- 更正以下汉字的Unicode码表字符（`cv01`特性）形式（默认显示字符不变，以假想G标显示）：
    - **ExtB**：𠋆𡺎𦻘
- 部分扩展区汉字已修改成思源宋体（或昭源宋体、阮明朝）的样式。
#### 说明文件
- 优化了说明文件`README.md`中OpenType特性例图的显示。
## 0.121(2024.7.26)
#### 字形添加、修正与优化
- 修正/优化104个汉字
<details>
<summary>点击以查看</summary>

-   - **ExtB**：𠆜𡀕𡄱𡆞𡕜𡖽𡙧𡜚𡨓𢐼𢴞𢸝𢿔𣚓𤃅𤄋𤎏𤎟𤑈𤓺𤭶𤰡𤺦𤼕𤽵𥡾𥨗𥴿𦁜𦍓𦨤𦩳𦴘𦾖𧄺𧒬𧞐𧭩𧮯𧻐𧻪𧻭𧼍𨇵𨎭𨒈𨘬𨢩𨤲𨱪𨱽𨽖𨾲𨿫𩅠𩆈𩆥𩏮𩕵𩘄𩛒𩞃𩩶𩳹𩵀𪋙𪏂𪕁𪕐𪘟𪙬𪛁𪛇
    - **ExtC**：𪜘𪜚𪲂𫂷
    - **ExtE**：𫡔𫡪𫡭𫡮𫡯𫦇𫧦𫫤𫬊𫴍𫴜𫴽𬀫𬏹𬦼𬲑
    - **ExtH**：𱎃𱎋𱎌𱔩𱙨𱥭𱺇𱿄𲃼𲄆𲋓
</details>

- 重制8,952个汉字（不含前文所述汉字，256ppem→1000ppem）。
- 部分扩展区汉字已修改成思源宋体（或昭源宋体、阮明朝）的样式。
- 优化注音符号调号的造型，并增加了全角调号形式，可通过OpenType`ss02`特性来调用。
#### 功能添加与优化
- 添加大部分西文字母和符号以及半宽符号的顺时针90°预旋转字形，并注册到OpenType`vrtr`特性。此外还添加了OpenType`vrt2`特性，完善了竖排时的文字显示效果，使OTF（PostScript曲线）版在Windows系统中能够实现竖排。
- 完善了注音符号的竖排显示，修复了注音符号调号在竖排时旋转错误的问题。具体技术实现参考自：https://github.com/cmex-30/Bopomofo_on_Web
- 横排时注音符号调号放置在右上角除可用“组合附加符号（Combining Diacritical Marks）”等相关区块符号外（范围`U+0300-038F,U+1AC8`），还可通过OpenType`ss03`特性来调用。
- 添加了`cvXX`（字符异形）以及`ssXX`（样式集）特性的多语言选项提示文本以及`cvXX`（字符异形）的样例文本。
- 修正竖排标点压缩特性（`vchw`）在某些标点序列下的表现。
## 0.120(2024.7.18)
#### 字形添加/删除、修正与优化
- 添加8个拉丁字母和国际音标相关字符：“`U+0160`Š”、“`U+0161`š”、“`U+0178`Ÿ”、“`U+017D`Ž”、“`U+017E`ž”、“`U+02DC`˜”、“`U+A7B5`ꞵ”、“`U+AB53`ꭓ”。
- 添加汉语拼音字母“āáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜüêɑḿńňǹɡ”（32个）、欧元符号“`U+20AC`€”和表意文字半角空格“`U+303F`〿”的半角形式，可通过OpenType`hwid`特性调用。
- 添加欧元符号“`U+20AC`€”的全角形式，可通过OpenType`fwid`特性调用。
- 添加注音符号“`U+312A`ㄪ”的变体形式：勺（⿴ㄅ丶），可通过OpenType`cv11`特性调用。
- 优化7个国际音标字符：“`U+025F`ɟ”、“`U+0294`ʔ”、“`U+0295`ʕ”、“`U+0299`ʙ”、“`U+029F`ʟ”、“`U+02A1`ʡ”、“`U+02A2`ʢ”。
- 删除软连字符“`U+00AD`­”。
- 修正/优化769个汉字
<details>
<summary>点击以查看</summary>

-   - **ExtB**：𠁏𠎱𠒾𠓽𠗨𠙬𠛒𠜷𠢆𠣀𠧘𠧡𠫠𠴷𠵤𠵹𠷔𠸰𠸳𠹔𠻤𠾰𠾲𠿡𡁀𡁎𡂙𡂧𡂩𡃢𡃩𡃯𡅥𡅾𡉙𡘏𡘐𡘬𡙀𡙬𡙻𡛿𡜷𡝏𡝑𡝡𡟳𡠉𡠗𡠹𡡖𡡛𡢁𡢎𡣡𡣯𡣿𡤋𡤛𡤞𡤸𡥜𡦣𡦱𡧒𡧚𡧤𡧪𡧰𡨆𡨞𡨢𡨾𡩝𡩦𡩨𡩻𡪏𡪙𡪡𡪤𡪴𡫞𡫤𡫬𡬅𡬓𡭷𡮿𡯍𡱷𡲠𡲪𡳙𡳡𡴟𡴮𡴼𡵖𡵵𡶌𡶏𡶲𡷋𡷗𡷛𡷡𡷨𡷽𡷿𡸅𡸟𡸤𡸫𡸬𡹊𡹋𡹐𡹙𡹜𡹴𡹶𡺂𡺟𡺠𡺷𡻊𡻞𡻟𡻻𡼚𡼺𡽜𡽬𡽽𡾝𡾺𡾿𡿉𢀶𢃂𢄆𢄐𢄨𢅂𢅢𢅨𢈃𢉈𢉘𢉫𢉹𢊗𢊺𢋒𢍨𢎕𢎖𢏩𢏪𢏼𢐝𢑌𢑷𢒱𢔘𢕈𢕛𢕾𢗙𢛠𢜶𢝃𢞘𢞰𢟿𢥁𢥯𢦗𢧘𢧰𢧾𢨁𢨌𢨪𢩆𢩕𢩗𢩘𢩢𢪍𢪪𢬴𢲘𢳋𢴨𢵂𢶂𢶳𢸆𢸬𢺄𢺕𢺢𢻻𢽍𢽛𢾁𢾑𢿨𢿭𣀎𣀤𣀩𣀷𣀻𣁊𣃪𣃼𣃽𣃿𣄑𣄕𣄣𣄮𣄰𣆍𣊄𣋥𣏣𣚍𣛻𣝒𣝘𣟅𣟱𣠐𣢎𣢐𣢚𣣷𣤂𣤃𣤠𣤦𣤱𣥊𣥻𣥼𣧒𣧖𣩹𣩻𣪄𣪇𣪐𣪫𣪳𣫩𣯋𣯌𣯛𣯲𣲡𣳝𣴪𣶌𣹦𣻣𣻦𣼚𣽢𣽲𣾤𣾨𣾲𣿄𤁢𤂁𤄘𤄧𤅑𤆙𤆰𤆴𤉝𤉧𤌆𤌉𤌽𤎧𤎮𤎷𤏭𤑾𤔚𤔰𤕭𤗶𤙾𤚈𤚎𤚜𤚪𤚫𤛆𤛎𤛛𤜄𤟏𤟫𤠯𤢢𤢪𤦇𤩉𤩣𤩨𤩪𤪐𤪑𤬖𤭎𤭦𤮁𤮕𤮖𤯢𤲗𤶆𤷊𤷸𤸃𤸲𤹊𤺎𤻈𤻢𤻲𤼋𤽰𤿯𥀊𥀰𥁅𥃀𥃏𥄳𥅟𥅢𥅥𥇐𥉸𥊭𥋑𥋫𥎗𥏕𥏭𥐃𥔑𥕇𥕳𥗶𥚬𥚼𥛙𥜣𥜶𥝑𥟔𥟽𥠎𥠴𥡤𥢑𥣩𥥨𥧷𥧻𥨝𥩂𥮪𥸨𥻈𥻉𥻫𥻰𥼇𥼊𥽏𦃉𦃍𦄘𦄙𦄜𦅄𦅏𦆃𦆇𦆬𦆿𦈪𦈫𦈸𦊐𦊰𦋣𦋯𦋵𦌁𦏷𦐆𦐟𦐨𦐼𦒝𦒪𦗐𦘤𦙴𦛀𦜶𦜼𦝚𦟅𦟔𦟘𦠒𦡀𦢻𦥆𦥍𦥎𦦅𦨓𦩖𦩗𦲭𦴐𦸓𦼊𦽲𦾓𦾫𦿓𧀍𧀢𧂠𧂥𧅆𧆌𧈂𧈽𧉍𧉜𧉢𧌈𧍫𧏩𧏹𧐴𧑅𧑔𧑕𧒱𧓄𧓬𧓺𧔧𧔨𧖊𧖍𧗉𧗋𧗜𧜊𧝫𧠨𧣹𧤈𧥁𧧠𧨛𧩁𧩗𧩜𧩴𧩾𧬎𧬿𧭤𧭸𧭽𧰓𧰥𧰯𧱉𧱵𧲀𧵧𧸛𧸧𧸸𧸿𧻧𧻰𧼞𧽟𧽻𧾉𧾚𧾢𨀇𨁌𨁷𨃠𨅙𨅪𨆨𨇰𨈙𨉤𨉵𨌋𨍕𨍨𨍴𨍹𨎈𨎍𨏊𨏲𨐱𨓼𨖺𨗤𨗪𨡕𨣑𨣝𨣰𨦗𨦷𨧒𨧩𨪋𨪴𨬙𨮔𨰅𨱩𨲋𨲥𨲨𨴤𨵂𨷘𨷳𨺥𨼣𨾣𨾬𩀚𩀷𩁒𩂃𩂄𩂙𩂝𩂥𩂨𩂫𩂴𩂺𩃄𩃔𩃘𩄌𩄗𩄟𩄥𩄪𩄬𩄽𩄾𩅁𩅂𩅃𩅨𩅩𩅪𩆅𩆉𩆌𩆗𩆙𩆫𩆰𩆷𩇒𩇞𩇿𩈎𩊎𩊕𩋾𩎚𩎠𩎨𩎱𩎴𩏑𩏒𩏙𩏪𩏯𩏻𩒜𩔄𩕓𩕠𩕻𩕽𩘂𩘿𩙂𩛹𩛺𩜮𩞆𩟦𩟨𩟮𩟶𩤐𩦡𩦫𩧖𩩥𩩧𩫎𩫒𩫚𩫳𩮝𩮺𩯢𩰁𩲬𩷰𩹔𩹡𩹶𩺝𩺱𩺺𩺼𩻀𩻊𩻖𩼂𩼎𩼔𩼹𩽀𩽎𩽐𩽲𩿉𪂓𪃈𪄀𪊉𪊐𪊒𪊗𪊚𪋏𪋣𪌠𪍉𪍭𪎕𪏋𪏒𪏟𪑀𪑢𪒝𪔮𪔻𪔼𪔿𪕆𪕍𪕕𪕣𪕳𪕽𪖀𪘜𪘯𪙄𪚉𪚊𪚻
    - **ExtC**：𪥪𪧝𪪶𪯙𪯽𪴕𪺈𫀳𫁤𫇓𫖍
    - **ExtE**：𫣬𫧘𫧙𫩁𫬌𫯉𫯎𫯢𫳨𫳮𫳸𫴄𫴅𫴌𫴫𫸠𫸦𫹸𫺐𫾷𫿌𫿏𫿢𬆻𬊆𬌧𬑥𬑪𬗧𬛷𬛼𬢅𬢚𬦒𬦟𬯗𬱇𬳭
    - **ExtF**：𭜰𭨅𭩔𭶈𮇱
    - **ExtG**：𰖑𰟶𰥇𰮌𰯨𱁛𱁨
    - **ExtH**：𱭢
</details>

- 重制3,632个汉字（不含前文所述汉字，256ppem→1000ppem）。
#### 功能添加与优化
- 支持拉丁字母以及国际音标字符的重音符号定位（即`mark`锚点定位）和重音符号的叠加定位（即`mkmk`锚点定位）。
- 支持至多3个五度音调符“˥ ˦ ˧ ˨ ˩”的自由组合。
- 部分ASCII外非汉字符号（除上述添加相关字形外）现可通过OpenType`hwid`/`fwid`/`pwid`特性来自由切换全角/半角/不定宽度形式。
#### 字体元数据
- 增加了字体名、许可证信息、字体概述字段的繁体中文、繁体中文（中国香港）、日语、韩语的译文。
- 字体的版权声明中的“保留字体名称（Reserved Font Name）”增加了字体名的简体中文、繁体中文、繁体中文（中国香港）、日语、韩语的形式。
#### 说明文件
- 按功能实际支持情况对说明文件`README.md`进行了更正。
- 字体的“保留字体名称”增加了字体名的简体中文、繁体中文、繁体中文（中国香港）、日语、韩语的形式。
## 0.110(2024.7.11)
#### 字形添加、修正与优化
- 添加[Adobe-GB1-6字符集](https://github.com/adobe-type-tools/Adobe-GB1)的大部分非汉字符号（不包括彝文、半宽的汉语拼音字母和预旋转90°的ASCII字符及其半宽版本），至此，本字体系列已支持GB 18030-2022实现级别3的所有字符（不包括民族文和私用区，字符层面上）。
- 添加“`U+02D8`˘”、注音符号的“ㄆㄇㄊㄋㄫ”的下标形式（可通过OpenType`subs`或`cv11`特性调用）以及其他8个未编码的注音符号（可通过OpenType`cv11`特性调用）。<br>
**已知问题：** 在Adobe InDesign中，“`U+02BB`ʻ”在竖排环境下不能正常旋转显示。
- 修正/优化598个汉字
<details>
<summary>点击以查看</summary>

-   - **ExtB**：𠄣𠆁𠈨𠈺𠈿𠋽𠌚𠒋𠒨𠔨𠙙𠚆𠛙𠞬𠢽𠣈𠥧𠧟𠧤𠧼𠨀𠩽𠫟𠭕𠮋𠰗𠼜𠼢𡄺𡅟𡇓𡈚𡈳𡋲𡋺𡕈𡕍𡕗𡕻𡘎𡤲𡤳𡧧𡨉𡩅𡩚𡪀𡫧𡫮𡬞𡮚𡰆𡲷𡴚𡴞𡶃𡹿𡻑𡿱𢀁𢀂𢀜𢂸𢃁𢃋𢅇𢅛𢅞𢅷𢉵𢊵𢋓𢋰𢋺𢌂𢌇𢍭𢎴𢑎𢑗𢑚𢑞𢑺𢓻𢗅𢚎𢚮𢛱𢞥𢟰𢡌𢥝𢦞𢦼𢪃𢬽𢮝𢸣𢹜𢺗𢺵𢺾𢻪𢻲𢻶𢼌𢼙𢾂𢾆𢾬𢿒𣀅𣀛𣀧𣀭𣁭𣃅𣄅𣊥𣋟𣍑𣍙𣍭𣙾𣚠𣞕𣠟𣠮𣠸𣡡𣡺𣤎𣤗𣤽𣥀𣥂𣦝𣦡𣦳𣫦𣭺𣯃𣯺𣱑𣴱𣵠𣶄𣶓𣷝𣸠𣹊𣹳𣽎𣽗𤀅𤁫𤂢𤅅𤅡𤅦𤇫𤉱𤌋𤍍𤍾𤎆𤏯𤑖𤓅𤓶𤔀𤔗𤔨𤗠𤚲𤛂𤜘𤜛𤜨𤠵𤢧𤨎𤫕𤬂𤬊𤬞𤬠𤬡𤬢𤬣𤬫𤮐𤮰𤯖𤶟𤶮𤸣𤻰𤾲𤾵𤿑𥀜𥀼𥂻𥃠𥆑𥆲𥈃𥈚𥊃𥌣𥌪𥏁𥏎𥒔𥓓𥔉𥔫𥗞𥙈𥙮𥚡𥛿𥟑𥡡𥥶𥧀𥩐𥪄𥭣𥭰𥲝𥳤𥴳𥵱𥵲𥶕𥸜𥸸𥺛𥻪𥼮𥽶𥾀𥾁𥿅𥿒𦂲𦄓𦅐𦅽𦆩𦇅𦈇𦈞𦉽𦌩𦌷𦎙𦏝𦐿𦑢𦒕𦒱𦖪𦞱𦠠𦢼𦣂𦥼𦦉𦦦𦦧𦦲𦧍𦨊𦩱𦪅𦫆𦫈𦭍𦭺𦳜𦳾𦶞𦺛𦾞𦾼𦿝𧁇𧃥𧆙𧊜𧋳𧑶𧑷𧒼𧓐𧓟𧓴𧔠𧔪𧔫𧔽𧕢𧕲𧕼𧖋𧗓𧘭𧘰𧘷𧛣𧜉𧜜𧝄𧝉𧞠𧞩𧠘𧠙𧢋𧪟𧫬𧬔𧭟𧭼𧰮𧰳𧱮𧱯𧲏𧲛𧲝𧵱𧶎𧸫𧹂𧹎𧺻𧺾𧻱𧼭𧼱𧽃𧽐𧽑𧽨𧽲𧽸𧾣𧾫𨁗𨃆𨇦𨉈𨍁𨑃𨕜𨖣𨖤𨘄𨙑𨢊𨣕𨣲𨤓𨤜𨤝𨯳𨳹𨴯𨴾𨸷𨽬𨽰𩀁𩁎𩄚𩈁𩉌𩎌𩎰𩎼𩘍𩛬𩞛𩠆𩤫𩪩𩯙𩰬𩱱𩱳𩴱𩴴𩼧𩿻𪀈𪂟𪃇𪅖𪅹𪆌𪆩𪇔𪈍𪈷𪈿𪉎𪊀𪊶𪋕𪋬𪋵𪋶𪋷𪍼𪎇𪎮𪑾𪓋𪔔𪛃𪛈𪛕
    - **ExtC**：𪜊𪜎𪜜𪜿𪝏𪢓𪤵𪦤𪼴𫄺𫆕𫊈𫍐𫍺𫑍𫓇𫖸𫛼𫜁𫜴
    - **ExtD**：𫞝𫟭
    - **ExtE**：𫡈𫡗𫢇𫣜𫣫𫣮𫤳𫧄𫧋𫧨𫧿𫨼𫩃𫬅𫯼𫰤𫳏𫴁𫴒𫵵𫵶𫵸𫵺𫷣𫸡𫼑𫿆𫿚𫿧𬀆𬀙𬃯𬄜𬅃𬅣𬅯𬆁𬍋𬎧𬏏𬏲𬓒𬛿𬜁𬟏𬡗𬢔𬦛𬧃𬪤𬭿𬮊𬮓𬯙𬯚𬯭𬰟𬱔𬱾𬲤𬴌𬴤𬴿𬸜𬸟𬸰𬹋𬹌𬹔𬹘𬹧𬹪𬹭𬹮𬺟
    - **ExtF**：𬻓𬼢𬿴𭁾𭂕𭅏𭆈𭒘𭖁𭙔𭛇𭠢𭠰𭥾𭩪𭭴𭱇𭺚𮑟𮚷
    - **ExtG**：𰀝𰀬𰁶𰂡𰂮𰃐𰃙𰃜𰄑𰄙𰅋𰅖𰆽𰇄𰇅𰈟𰈩𰉅𰊳𰋬𰋱𰎄𰏠𰘂𰘐𰘔𰙒𰚱𰚳𰛘𰥤𰫱𰫻𰳛𰳞𰴴𰺩𰻃𱀍𱆑𱌣
    - **ExtH**：𱏅𱏸𱛗𱛟𱝟𱞥𱤦𱸔𱺠𲆔𲇃𲉆𲉳𲎈
</details>

- 以下汉字与符号使用思源宋体样式（基于[綿雲飴里修改的版本](https://github.com/adobe-fonts/source-han-serif/files/14053443/SourceHanSerifSCVF%2B.zip)）：
    - **苏州码子**：〢〤〥〦〧〨〸〹〺
    - **ExtB**：𠆾𪛗𪛘𪛙𪛚𪛛𪛜𪛝
    - **ExtH**：𱝫𱝬
- 重制14,718个汉字（不含前文所述汉字，256ppem→1000ppem）。
- 优化兼容汉字扩展区的“冫、氵、艹”部件的显示。
- 修复了竖排宽度缺失（都是1000ppem）的问题。
#### 说明文件
- 更正了`README.md`的部分文字表述。
- 增加了`DONATE.md`中的“打赏捐助前的注意事项”一节及其英文版。
## 0.102(2024.7.5)
- 修正汉字“`U+440B`䐋”的缺失问题。
## 0.101(2024.7.5)
- 在GitHub、Gitee平台上首次发布技术预览版。