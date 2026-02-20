[点击查看中文版更新日志](./CHANGELOG.md)

# Changelog
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

[Click to read changelog of beta version (Chinese version)](CHANGELOG-BETA.md)