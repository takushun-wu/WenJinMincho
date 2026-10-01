[点击查看中文版更新日志](./CHANGELOG.md)

# Changelog
## 2.100(2026.10.2)
### Adapted to Unicode 18.0
- Added 1 Han ideograph from Extension D: `U+2B81E` “𫠞” (⿰日欠);
- Followed the [G-source Horizontal Extension](https://www.unicode.org/irg/docs/n2877r3-ChinaHorizontalExtension.pdf) for 178 Han ideographs, updating their forms to the G-source:
<details>
<summary>Click to view</summary>

-   - **URO**：鿌\*
    - **ExtA**：㐪\*㸃\*䓁\*
    - **ExtB**：𠃔𠓼𠝹\*𠮓𠱁𠱾𠳕\*𠵈𠸊𠸎\*𠸐𠹳\*𠹸𠺶𠼮\*𠿬𠿺𡀎𡀟𡁜\*𡂈𡂺𡃇𡛓𡨐𢇢𢊢𢌜𢰸𢱕\*𢲅𢴈\*𢴕𢵞𢽴𣁽𣑽𣵚𣷷𤊒𤍨𤓓\*𤨄𥊙𥋘𥘿𥙩𥝝𦔳𦕎𦖳𦢂𦢓𦭘𦮦𧘸𧞄𨓒𨢄𩜙𩣔𩬎
    - **ExtC**：𪢚𪲄𪸘𫆀𫉗𫐠𫓚𫕌
    - **ExtD**：𫞏𫞕𫞤𫟎𫟖𫟜𫠚
    - **ExtE**：𫣹𫤰𫥧𫫐𫬵𫬶𫯊𫯠𫷜𫼰𬂠𬐕𬖂𬖲𬞏𬢩𬦌𬧦𬧴𬨦𬫆
    - **ExtF**：𬻅𬾗𬿌𭃡𭅼𭆪𭈤𭈬𭈹𭋎𭐏𭒡𭓇𭓘𭔥𭔦𭔨𭔿𭖵𭣋𭭅𭭕𭰏𭲞𭴣𭷸𮀨𮆴𮉐𮌐𮎆𮎰𮏀𮒛𮔉𮕤𮕩𮖷𮗻𮝾𮞢𮟃𮟗𮡶𮣐𮪍𮭑𮭲
    - **ExtG**：𰔺𰚾𰥍\*𰽆
    - **ExtH**：𱰺𱵓𲀖
    - **ExtJ**：𲓦𲖜𲟁𲢶𲲴𲺤𳃕𳉣
    - **Comp**：益靖諸禍贈難
    - **CompSup**：備像周滇瑱築蜨
    - \* is only code chart glyph.
</details>

- 126 Han ideographs have been modified in their forms following other sources of horizontal extension or Unicode upgrades:
<details>
<summary>Click to view</summary>

-   - **URO**：偼\*姉\*媫\*抇\*濲\*膥\*虩\*
    - **ExtA**：㨗\*䘠\*
    - **ExtB**：𠆢𠑗𠓲𡆮𡙟𢂷𢡃𢪏𣌦𣖑𣟥𤛉𤧩𦚜𦥺𦩿𧾷\*𨩼𨭈𩅧𩝮
    - **ExtC**：𪜵𪞐𪞫𪡓𪢽𪣏𪣘𪤆𪤌𪤗\*𪤚𪥂𪥅𪥏𪥦𪥧𪥬𪥰\*𪦤𪧘𪧞𪧧𪨦𪨰\*𪩖𪪐𪪸𪮾𪯨𪱾𪲛\*𪳐𪴕𪴸𪵑𪵳𪶁𪶢𪶸𪷤𪸍𪸒𪹇𪹮𪹳𪺛𪿨𪿴𫁍𫁷𫃕𫄺𫅐𫅼𫇜𫈐𫈮𫉯𫊠𫋻𫍺𫎒𫐖\*𫐭𫑫𫔶\*𫗗𫚼
    - **ExtE**：𫡶𫢠𫾰𬛶𬹋𬹌𬹎
    - **ExtF**：𭭼𮨇
    - **ExtG**：𰚳𰟝𰮮𰲎𰳛𰳞𰳩𰴍𰴒𰶩𰸖𰺩𱁁𱁨𱋧𱋽
    - **ExtH**：𱘭
    - **CompSup**：㡢䯎
    - \* is only code chart glyph.
</details>

- Added support for VS1, VS2 `U+FE00, FE01` variation selectors for CJK Strokes.

### Other Changes
#### New Additions
- Added two horizontally skewed greater-than/less-than or equal-to signs: ⩽⩾
#### Improvements & Bug Fixes
- From this version, the condensed-spacing version (C version) will resume updates;
- Modified 4 UTC-source Han ideographs to other sources: 𠼻𢇆𪷼𭏒;
- Corrected 6 Han ideographs: 㾩\*𦘝𩌦𪙒𬗜𮉪\* (\* is only code chart glyph);
- Improved 11 Han ideographs: 𣢣𤎋𤎑𤤘𥾲𥿽𦁁𦃀𦄠𫅮𦬖;
- All Han ideographs in BMP, portion of Extension B-J, and all of MSARG IVD set have been synchronized with [WenYuan Serif SC v1.100 (in Chinese)](https://github.com/takushun-wu/WenYuanFonts/releases/tag/v1.100);
- Remade 1,390 SAT-source and 1 UTC-source (bold) Han ideographs:
<details>
<summary>Click to view</summary>

-   - **ExtF**：𬼃𬼨𭀂𭀪𭀸𭃞𭅗𭆿𭇟𭇧𭇼𭉮𭊺𭋑𭋝𭋼𭌸𭐆𭓺𭔉𭕛𭕩𭖋𭖦𭖴𭘰𭙷𭚫𭛆𭜉𭜏𭜖𭜞𭜟𭜨𭜷𭝂𭝃𭝇𭝈𭝕𭝟𭝣𭝯𭝱𭝵𭝸𭝹𭝽𭞂𭞃𭞇𭞎𭞓𭞚𭞜𭞟𭞠𭞧𭞨𭞩𭞪𭞱𭞲𭞶𭞽𭟃𭟆𭟈𭟏𭟑𭟓𭟔𭟡𭟤𭟥𭟦𭟧𭟨𭟪𭟫𭟭𭠆𭠐𭠜𭠦𭠧𭠨𭠭𭠮𭡀𭡉𭡋𭡒𭡛𭡢𭡧𭡺𭢂𭢈𭢉𭢌𭢍𭢎𭢖𭢤𭢪𭢬𭢱𭢵𭢼𭣕𭣘𭣙𭣛𭣞𭣠𭣨𭣪𭤇𭤍𭤒𭤤𭤭𭤳𭤶𭤷𭤸𭤻𭤼𭥂𭥃𭥇𭦒𭦖𭦢𭦪𭦫𭦲𭦸𭦺𭦿𭧀𭧁𭧅𭧆𭧔𭧕𭧜𭧞𭧢𭧤𭧦𭧲𭧷𭧹𭧿𭨂𭨇𭨕𭨜𭨝𭨾𭩍𭩑𭩖𭩬𭪏𭪷𭪺𭪽𭫁𭫉𭫔𭫥𭫴𭫵𭫷𭬔𭬗𭬘𭬠𭬢𭬥𭬦𭬧𭬪𭬬𭬸𭬼𭭇𭭉𭭍𭭗𭭣𭭥𭭨𭭫𭭬𭭮𭭲𭭷𭭸𭭹𭮂𭮄𭮆𭮇𭮊𭮍𭮐𭮓𭮔𭮞𭮥𭮦𭮮𭮸𭯖𭯭𭯯𭰤𭰲𭰾𭱐𭱖𭱠𭱧𭱨𭱫𭲆𭲈𭲐𭲕𭲖𭲡𭲩𭲫𭲴𭲸𭳉𭳔𭳙𭳮𭳱𭳴𭴄𭴅𭴔𭴥𭴨𭴯𭴲𭴶𭴹𭵂𭵆𭵉𭵏𭵔𭵞𭵪𭵫𭵬𭵵𭵾𭶎𭶏𭶑𭶘𭶛𭶜𭶝𭶬𭶶𭶷𭷗𭷡𭷢𭷥𭷫𭷷𭷻𭷿𭸀𭸌𭸎𭸕𭸥𭸧𭸪𭸬𭸯𭸴𭸷𭹚𭹝𭹟𭹠𭹥𭹧𭹨𭹪𭹰𭹳𭹴𭹵𭹿𭺀𭺇𭺈𭺊𭺋𭺔𭺙𭺢𭺦𭺬𭺭𭺰𭺹𭺽𭻀𭻁𭻇𭻏𭻜𭻦𭻬𭻱𭻶𭼀𭼌𭼗𭼘𭼙𭼚𭼟𭼣𭼧𭼫𭼯𭼱𭼴𭼷𭼹𭽀𭽄𭽊𭽎𭽐𭽓𭽕𭽖𭽗𭽘𭽛𭽡𭽤𭽬𭽭𭽯𭽴𭽷𭽹𭽺𭽻𭽽𭽾𭾀𭾃𭾄𭾍𭾿𮀏𮀑𮀕𮀚𮀫𮀰𮀼𮀽𮁄𮁐𮁑𮁭𮂥𮂨𮂫𮂸𮃅𮃌𮃏𮃘𮃙𮃱𮃵𮃹𮃿𮄆𮄇𮄊𮄌𮄎𮄘𮄚𮄛𮄠𮄢𮄥𮅂𮅇𮅊𮅜𮅟𮅥𮅨𮅬𮅴𮅵𮅿𮆄𮆋𮆎𮆑𮆕𮆣𮆥𮆫𮆱𮆹𮇆𮇏𮇚𮇝𮇲𮇷𮇸𮇼𮈲𮈽𮉅𮉒𮉘𮉿𮊇𮊋𮊑𮊕𮊙𮊝𮊠𮊡𮊣𮊧𮊯𮊱𮋅𮋉𮋔𮋖𮋙𮋟𮋭𮋲𮋳𮋵𮋽𮋾𮌑𮌧𮌪𮌬𮌭𮌮𮌰𮌲𮌳𮌶𮌸𮌹𮍂𮍆𮍊𮍋𮍑𮍗𮍘𮍙𮍚𮍜𮍟𮍳𮍼𮍿𮎀𮎌𮎐𮎡𮎤𮎨𮎬𮎼𮎽𮏂𮏈𮏎𮏏𮏛𮏜𮏟𮏠𮏡𮏨𮏮𮏯𮏸𮐈𮐕𮐘𮐜𮐡𮐢𮐬𮐯𮐰𮐱𮐲𮐳𮐷𮐺𮐾𮑂𮑄𮑍𮑒𮑔𮑕𮑖𮑡𮑢𮑣𮑫𮑯𮑸𮒄𮒅𮒈𮒡𮒦𮒼𮒽𮓁𮓍𮓏𮓒𮓓𮓕𮔋𮔞𮔨𮔳𮔴𮕀𮕇𮕖𮕟𮕢𮖖𮖙𮖜𮖝𮖡𮖰𮗉𮗋𮗎𮗕𮗝𮗢𮗤𮗧𮗼𮗿𮘉𮘋𮘍𮘓𮘗𮘬𮘰𮘵𮘻𮘿𮙏𮙨𮙫𮙰𮙷𮚂𮚏𮚒𮚘𮚞𮚟𮚺𮚿𮛭𮛳𮜁𮜊𮜍𮜔𮜖𮜛𮜢𮝈𮝖𮝜𮝟𮝠𮝣𮝦𮝪𮝮𮝱𮠂𮠆𮠉𮠋𮠌𮠒𮠔𮠜𮠡𮡆𮡎𮡑𮡔𮡕𮡘𮡞𮡽𮢘𮢥𮢦𮢫𮢮𮢱𮢵𮢶𮣂𮣊𮣋𮣓𮣘𮣢𮣣𮣥𮣧𮣨𮤗𮤼𮨗𮨜𮨞𮩈𮩊𮩍𮩙𮩡𮩤𮩮𮩲𮩸𮩽𮪄𮪋𮪌𮪎𮪏𮪓𮪕𮪖𮪘𮪚𮪝𮪞𮪭𮪮𮪯𮪱𮪶𮪷𮫜𮫝𮫣𮫦𮫨𮫪𮫫𮬫𮬳𮬶𮭃𮭄𮭉𮭌𮭍𮭔𮭕𮭖𮭗𮭙𮭚𮭫𮭮𮭽𮮀𮮂𮮅𮮞𮮩𮮿𮯁𮯆𮯉𮯊𮯍𮯑𮯒𮯓𮯔𮯖
    - **ExtG**：𰀄𰀊𰁞𰁿𰂘𰂙𰂚𰂢𰃏𰃞𰃦𰄡𰄾𰅛𰅢𰅩𰅭𰅲𰅳𰆎𰆓𰆘𰆪𰆭𰆰𰇌𰇪𰇫𰇺𰈈𰈎𰈔𰈬𰈭𰈺𰉒𰉨𰉳𰉵𰊀𰊋𰊷𰋌𰋔𰋤𰋲𰌚𰌡𰌸𰌿𰍈𰍉𰍋𰍍𰍏𰍔𰍪𰍭𰍮𰍸𰍹𰍿𰎁𰎆𰎗𰎵𰎶𰏄𰏏𰏒𰏔𰏘𰏙𰏤𰏮𰏳𰏴𰐌𰐗𰐜𰐞𰐟𰐤𰐨𰐩𰐪𰐯𰐲𰑂𰑓𰒢𰒩𰒸𰓀𰓞𰓾𰔕𰔨𰔬𰕀𰕂𰕃𰕆𰕋𰕱𰕼𰕿𰖄𰖉𰖣𰗎𰗒𰗲𰘴𰙀𰙣𰙧𰚀𰚆𰚖𰚗𰚞𰚫𰚯𰜷𰝚𰝼𰞎𰞧𰞵𰟚𰟳𰠎𰠧𰡌𰡕𰡙𰢐𰢱𰣉𰣕𰤣𰥘𰥬𰦁𰦇𰦤𰧭𰧳𰧷𰨹𰩑𰩯𰩶𰩼𰩿𰪐𰪡𰪵𰫚𰫪𰭊𰭏𰭓𰭕𰭙𰭬𰭭𰭮𰭵𰭻𰭾𰮀𰮂𰮄𰮆𰮈𰮉𰮍𰮎𰮏𰮑𰮕𰮘𰮛𰮜𰮞𰮟𰮠𰮢𰮣𰮫𰯃𰯄𰯆𰯣𰯦𰯾𰯿𰰐𰰘𰰜𰱢𰱬𰱳𰱵𰱹𰳉𰳋𰴁𰴄𰴎𰴟𰴩𰴫𰵆𰵉𰶣𰶧𰶻𰷳𰷻𰷿𰸅𰸌𰸍𰸟𰸡𰸴𰸼𰹉𰹫𰺮𰺯𰺱𰻑𰻭𰼗𰼝𰼺𰽂𰽄𰿕𰿚𱀊𱀚𱀩𱁈𱂗𱃀𱄍𱆏
    - **ExtH**：𱎘𱎦𱎮𱎷𱏻𱏽𱐑𱐘𱐞𱑄𱑅𱑊𱑋𱑔𱑸𱒅𱒙𱒿𱓀𱔈𱔞𱕘𱕻𱗶𱘳𱙶𱙼𱚚𱚞𱚢𱚰𱚻𱛲𱜊𱜑𱜶𱝆𱝍𱝔𱝕𱝠𱝪𱝽𱞀𱞏𱞑𱞒𱞖𱞜𱞽𱞿𱟈𱟉𱟋𱟗𱟰𱠐𱡧𱡪𱡮𱡰𱢳𱢸𱣛𱣫𱣲𱤄𱤅𱤟𱤳𱤶𱤻𱥀𱥃𱥋𱥌𱥍𱥖𱥙𱥥𱥦𱦗𱦬𱧲𱩕𱩹𱪀𱪑𱪰𱫀𱫎𱬅𱬞𱬽𱭐𱭓𱭬𱮃𱮇𱮊𱰖𱰘𱱈𱱌𱱖𱱯𱲓𱲔𱲵𱳜𱴓𱴭𱵃𱵅𱵎𱵰𱵻𱶁𱶊𱶑𱶷𱷎𱷒𱷶𱷹𱹖𱹛𱹧𱹫𱹭𱹹𱹽𱺁𱺆𱺊𱺍𱻅𱻆𱻈𱻘𱻪𱻿**𱼀**𱼈𱼛𱼡𱼧𱼶𱼻𱽧𱽹𱾉𱾊𱾙𱾭𱾴𱾶𱿝𱿟𱿺𲀋𲁌𲁟𲁻𲂁𲂭𲃌𲃒𲃘𲄈𲄦𲄯𲅅𲅡𲅤𲆛𲇢𲈰𲉗𲉼𲉾𲊌𲊞𲊬𲊮𲋗𲋭𲌝𲌨𲌫𲌶𲌿𲎋𲎍𲎏𲎥
    - **ExtJ**：𲏇𲏘𲐎𲐛𲐢𲐱𲑘𲑙𲑹𲑻𲒄𲒉𲓉𲓪𲓷𲓻𲓽𲔂𲔭𲕟𲖅𲖷𲗞𲗡𲘞𲘟𲙳𲙵𲚋𲚌𲚜𲚢𲚣𲚲𲜍𲜏𲜠𲜣𲜲𲜷𲜸𲜼𲝟𲞜𲞴𲞹𲟄𲟇𲟑𲟠𲟥𲟭𲟯𲠦𲡋𲡪𲡱𲡲𲢀𲢁𲢄𲢘𲢯𲣂𲣆𲣩𲣿𲤼𲥌𲥬𲥳𲦁𲦂𲦍𲦛𲦜𲦤𲦥𲦪𲦲𲧓𲧧𲧫𲧮𲧳𲧶𲨀𲨂𲨃𲨍𲨓𲪋𲪎𲪩𲪭𲬆𲬜𲬨𲬩𲬹𲭅𲭈𲭋𲭠𲭩𲭴𲯖𲰘𲰟𲰳𲱐𲱞𲱯𲱹𲲌𲲑𲲣𲲤𲲻𲳀𲴢𲵝𲶁𲶊𲶙𲶡𲶦𲶩𲷉𲷒𲷗𲷫𲷺𲷻𲸃𲸋𲸛𲸣𲸶𲸾𲹀𲹏𲹔𲹹𲺅𲺡𲻋𲻌𲻓𲼂𲼖𲼘𲼛𲼪𲼬𲼭𲼮𲼷𲽠𲾁𲾘𲿇𲿋𲿱𲿿𳁈𳁝𳁬𳁮𳁱𳁲𳂊𳂐𳂪𳂶𳃑𳃥𳃰𳄋𳄞𳄡𳄦𳄨𳄫𳅅𳇌𳇐𳇕𳈁𳈇𳈚𳈢𳈦𳈮𳈳𳊠𳊥𳊸𳋂𳌉𳌧𳌱𳌲𳏩𳐳𳑈𳑪𳑬𳑭
</details>

## 2.020(2026.8.21)
#### New Additions
- Added 7 IVD variant ideographs from the Japanese Moji_Joho project, [details can be found here](https://www.unicode.org/ivd/pri/pri546/).
- Added the following 9 non-Han characters: ⁺⁻₊₋⚠￩￪￫￬
- Added 1/3, 1/4, 1/6em width, digit width, ultra-thin (1/8em width), and fine (1/16em width) spaces;
- Added vertical forms of 〝〞〟.
#### Improvements & Bug Fixes
- Corrected 26 Han ideographs: 𠴍𨥖\*𪠰𪦘𪧵𪭖𪿫†𫁯𫇢𫕿𫧼𫯉𫲱𫳶𫵓𬀠𬌢𬟟𬢓𬩣𬪜𬭞𬸢𬻼𭄔𰍺 (\* is default and GB/T 22321.1-2025 glyph, † is only code chart and GB/T 22321.1-2025 glyph);
- Optimized 4 Han ideographs: 𪤵𫑞𬔠𬩑.

## 2.012(2026.7.3)
#### New Additions
- Added 2 pseudo G-source glyphs for Han ideographs: 𠹳𱉻;
- Added character `U+A792` "Ꞓ" (Cambrian symbol);
- Added the following 37 non-Han characters: ˍ‾␀␁␂␃␄␅␆␇␈␉␊␋␌␍␎␏␐␑␒␓␔␕␖␗␘␙␚␛␜␝␞␟␡♁￭
#### Improvements & Bug Fixes
- Modified the default glyph of 1 Han ideograph: 𮹝;
- Modified some Han ideographs to match the style of Source Han Serif.

## 2.011(2026.5.22)
#### Improvements & Bug Fixes
- Modified the default glyphs of 11 Han ideographs: 㓰㢜㽕䁞䘠䜌䢈壻壿𠹸𡠨;
- Optimized 2 GB-stype Han ideograph glyphs (`cv02`): 䁞壻;
- Mapped 1 pair of mergeable IVS Han ideographs to the same glyph: 澎澎󠄀（`6F8E/6F8E E0100`）;
- Added composite character `U+0331` "◌̱", corrected the glyph decomposition/composition of "Ṟṟ";
- Added character `U+2303` "⌃", mapped to "^";
- Corrected the descriptive text for the `cv02` (GB glyph) feature in the font (*GB 18030-2022 defined glyph*→***GB/T 22321.1-2025*** *defined glyph*);
- Modified some Han ideographs to match the style of Source Han Serif;
- Lowered the height of the upper half of the "讠" radical, improving the visual effect (modified 197 ideographs).
<details>
<summary>Click to view</summary>

㺆䜣䜤䜥䜦䜧䜨䜩储槠讠计订讣认讥讦讧讨让讪讫讬训议讯记讱讲讳讴讵讶讷许讹论讻讼讽设访诀证诂诃评诅识诇诈诉诊诋诌词诎诏诐译诒诓诔试诖诗诘诙诚诛诜话诞诟诠诡询诣诤该详诧诨诩诪诫诬语诮误诰诱诲诳说诵诶请诸诹诺读诼诽课诿谀谁谂调谄谅谆谇谈谉谊谋谌谍谎谏谐谑谒谓谔谕谖谗谘谙谚谛谜谝谞谟谠谡谢谣谤谥谦谧谨谩谪谫谬谭谮谯谰谱谲谳谴谵谶辩霭𧮪𫍙𫍟𫍡𫍢𫍣𫍯𫍲𫍻𫍽𫍾𬣙𬣞𬣡𬣳𬣽𬤇𬤊𬤐𬤝𬤥𬤨𬤮𬤰𮙊𮙋𰵝𰵞𰵧𰵮𰵴𰵼𰶊𲂎
</details>

## 2.010(2026.4.3)
#### New Additions
- Added the _Alternate Annotation Forms_ (`nalt`) feature for numbering characters, allowing substitution of numbers, letters, and ordinal Han ideographs;
#### Improvements & Bug Fixes
- Improved the design of the retroflex nasal sound (Erhua) symbols "𖿲𖿳";
- Corrected 3 Han ideograph glyphs: 𬹶𮲿𮵪;
- Modified the default glyphs of 8 Han ideographs: 䬒䱁帯裦褏褎襃鿮;
- Fixed the issue where CJK Compatibility Ideographs in SIP were displayed as their basic glyphs in the browser, i.e., cross-plane glyphs included in plane 0/2 fonts but not mapped to Unicode code points.

## 2.003(2026.2.20)
#### Improvements & Bug Fixes
- Corrected 7 Han ideograph glyphs in code chart (`cv01`): 厶夂彐愼攵虍鹱.
#### Documentation
- Fixed the LaTeX example for calling italics in the User Manual.

> [!CAUTION]
>
> Compact-spacing version (C version) and Windows GDI compatible version (W version) will no longer be updated starting from this version.

## 2.002(2026.1.2)
#### New Additions
- Added 4 pseudo G-source glyphs for Han ideographs: 𨯌𪦪𪸛𫲇;
#### Improvements & Bug Fixes
- Modified 1 Han ideograph to a code chart glyph: 欥;
- Corrected 11 Han ideograph glyphs: 𠌥𠥔𡒳𣵔𣵕𪡓𫁷𫉯𫝴𮎷𮞖;
- Fixed the issue where the Plane 0 font could not pass [OTS](https://github.com/khaledhosny/ots) validation and could not be called by Firefox;
- Modified some Han ideographs to match the style of Source Han Serif;
- Removed the `vrtr` and `vrt2` 90° rotated forms of "✓✗" (to keep them upright in vertical writing);
- Adjusted the design style of Tai Xuan Jing symbols "𝌀𝌁𝌂𝌃𝌄𝌅" to match the style of Yijing digrams and bigrams "⚊⚋⚌⚍⚎⚏".
#### Documentation
- Most explanatory texts have been added in English:
    - Changelog from v2.000 to present;
    - Frequently Asked Questions;
    - Font User Manual PDF version;
    - Pseudo G-source Character Table.

## 2.001(2025.10.3)
#### New Additions
- Added 1 pseudo G-source glyph for Han ideograph: 𲷇 (`32DC7`);
#### Improvements & Bug Fixes
- Modified 1 Han ideograph to G-source glyph, consistent with the code chart glyph (default glyph only): 鿄;
- Modified 3 Han ideographs to code chart glyphs (default glyph only): 㫚䝈曶;
- Corrected 12 Han ideograph glyphs: 𦯵𪪿𪽺𫃇𫉻𫓊𫙼𫚄𫚇𬶘𱤏 (`cv02` analogous to GB glyphs) 芝󠄁 (`829D E0101`);
- Optimized 7 Han ideograph glyphs: 𥆒𥋉𨰼𨰽𪾞𫅪𫖈;
- Fixed the issue where some strokes of 31 Han ideographs were thinned when bolded: 㮧䃖䡧嵨些梼龮龳龼鿅鿆鿊鿌鿐鿧鿪𠁨𠑥𡷊𤅄𤅕𤜥𦆮𨬫𪇟𬆮𬺭𲘿𲰹 (default and code chart glyphs) 𲾝.

## 2.000(2025.9.13)
### 🎉Major Updates
#### Adapted to Unicode 17.0, with the following changes:
- Added 4,316 Han ideographs [**6** (Ext C) + **12** (Ext E) + **4,298 (Ext J)**], total supported Unicode Han ideographs exceeded 100,000;
- Following [G (Mainland China) Source Han Horizontal Extension](https://www.unicode.org/irg/docs/n2729r3-ChinaHorizontalExtension.pdf), over 1,100 Han ideograph glyphs modified to G-source;
- Added small-sized rhotacization(erhua) symbols `U+16FF2,16FF3` "𖿲𖿳" (small versions of "儿", "兒");
- Added IPA superscript characters added in Unicode 17.0 `U+1AE0..1AE5` "◌᫠◌᫡◌᫢◌᫣◌᫤◌᫥" (superscript versions of "◌̘◌̙◌̠◌̺◌̻◌̼");
- Added Saudi Riyal currency symbol `U+20C1` "⃁" (using glyph from Saudi Riyal Font by Emran Alhaddad);
- A small number of other Han ideographs modified following Unicode updates.
#### Other Major Updates
- V (Vietnam) source Han ideograph style significantly improved, modifying about 2,900 Han ideographs (excluding Ext J);
- The standard glyph order for characters without G-source and not supporting pseudo G-source has changed, KP (DPRK) source is now before H (Hong Kong) source, resulting in modification of 41 Han ideograph glyphs (another 14 Han ideographs only modified code chart glyphs);
- OpenType `cv02` tag glyphs now follow [GB/T 22321.1-2025 *Information technology—Chinese coded character set—48 dot matrix font of Chinese ideogram—Part 1: Song ti*](https://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=421B9135604C56A2EA1C4396A941CFB4) national standard (a few Han ideographs not in the standard are analogous), and on this basis, added glyph display for Kangxi Radicals (`U+2F00..2FD5`).

### Other Changes
#### New Additions
- Added 7 old IPA characters: ƈƙƥƭʞʠ◌̢
- Added support for Tai Chi, Bagua Trigram (including 1-3 line hexagrams), I Ching 64 hexagrams, and Tai Xuan Jing hexagram symbols.
#### Improvements & Bug Fixes
- All Han ideographs in URO/Ext A are now G-standard glyphs by default, modified 23 Han ideographs: 䶺䶼䶽䶿龦龨龩龬龮龳龼鿀鿁鿅鿆鿈鿊鿌鿐鿧鿪鿮鿯;
- Modified glyphs for 5 Han ideographs: 𦉪𤰉𬆮𭣧𱤏
- Corrected 55 Han ideograph glyphs;
<details>
<summary>Click to view</summary>

-   - **URO**: 丗乆嵨慂樷橜†欎羀邳黴†齂
    - **ExtA**: 㒶†㮧䃖䄼䖚䡧
    - **ExtB**: 𠁨𠑥𠳖𡌅𡞵𡷊𣤶𤅄𤅕𤜥𦆮𦬨𨬫𪇟
    - **ExtC**: 𪜖𪲓𫔙
    - **ExtF**: 𭼿
    - **Comp**: 凞
    - **CompSup**: 書
    - **IVS**: 王󠄁`738B E0101`, 瞻󠄀`77BB E0100`, 訁󠄀`8A01 E0100`, 阢󠄀`9622 E0100`, 雨󠄁`96E8 E0101`, 飠󠄀`98E0 E0100`, 𩵋󠄁`29D4B E0101`
    - **Standard Glyph for Ancient Books (GB/Z 40637-2021) (`ss12`)**: 橜猒蕪郾顄鶠𣎗
    - **Code chart glyphs only (`cv01`), default glyphs unchanged**: 甒顄饜黶
    - Han ideographs marked with † have unchanged Unicode code chart glyphs (`cv01`).
</details>

- Optimized 17 Han ideograph glyphs.
<details>
<summary>Click to view</summary>

-   - **URO**: 些僁嗻宮梼獡獰
    - **ExtB**: 𤟧𥅡𧜋
    - **ExtC**: 𫋜
    - **ExtF**: 𭁀
    - **ExtG**: 𰏂𰪢𱅘𱅄
    - **ExtH**: 𲆛
</details>

- *Fu Lu Shou Xi Xi Cai* symbols "🉠🉡🉢🉣🉤🉥" are now taken from [CJK Symbols](https://github.com/unicode-org/cjk-symbols) font;
- Fixed the issue where some CJK Compatibility Ideographs were replaced along with the glyph when calling code chart/GB glyphs (`cv01`/`cv02`);
- Separators "/／" can now participate in punctuation compression.

### Documentation
- Redesigned layout style of the user manual(Chinese version), making content clearer;
- Added Chapter 1 "Quick Installation Guide" to the user manual for easier onboarding;
- Optimized some HTML/CSS example code;
- Glyph standard switching table is now released as a separate PDF file;
- Added English explanations to the Glyph Standard Switching Table and Variant Character Sequence List.

---
[Click to read changelog of pre-v2.000 (Chinese version)](CHANGELOG.md)

[Click to read changelog of beta version (Chinese version, in GitHub)](https://github.com/takushun-wu/WenJinMincho/blob/main/CHANGELOG-BETA.md)