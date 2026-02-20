[点击查看中文版常见问题](./FAQ.md)

# FAQ
The content of this article is basically all taken from users' private messages and questions in the comment sections of relevant Zhihu articles. If you do not wish to have one or more of **your questions** displayed on this page, please contact the author to have them removed.

---
#### :question:Are there any plans to develop bold or italic versions in the future? Are there any plans to release Sans-serif (Heiti) / Imitation Song (Fangsong) / Regular Script (Kaiti) fonts in the future?
There are no plans to release the above-mentioned derivative products. Developing other large character set fonts requires a huge amount of time and energy. Among them, there are already many free commercial/open-source fonts available for Sans-serif (Heiti) large character sets, and Regular Script (Kaiti) / Imitation Song (Fangsong) large character sets are also developed by manufacturers.

For bold, it is recommended to choose [WenYuan Serif SC](https://github.com/takushun-wu/WenYuanFonts), which supports some extended Han ideographs (about 2,700). Creating bold Han ideographs through the Kage engine requires a lot of manual adjustment to reduce the phenomenon of strokes sticking together. WenJin Mincho already has built-in italics for Latin letters, which can be called via the OpenType `ital` feature. There is almost no need to develop italics for Han ideographs (if developed, they would also be oblique).

#### :question:Why does the font fallback still fail in some interfaces (Han ideographs are not displayed or cannot fallback to WenJin Mincho) after installing the registry file for setting fallback fonts?
The registry-based font fallback method is only effective for the Windows GDI environment, and is invalid for DirectWrite-based environments (such as Chromium, Firefox, WPF, UWP and other Direct2D-based frameworks or application software). There is currently no way to modify the global configuration of font fallback for this environment. If there is a relevant need, users can look for font fallback related configurations in the application software (such as text editors) themselves, or temporarily modify it to GDI rendering (rendering effect may become worse). At the same time, developers with relevant needs are requested to configure font fallback parameters specifically for their applications.

#### :question:Why do some punctuation marks (such as quotation marks “”‘’, some mathematical symbols ±×÷, em dashes ——) appear in English mode (variable width) in some application software? In software such as Word 2010 (or Word 2003, 2007), the left quotation mark leans against the left side of the Han ideograph frame, and there is a gap with the following Han ideograph?
Because the Uniscribe shaping engine equipped with the Windows GDI interface defaults to setting a piece of text (even if the text is all Chinese paragraphs) as Latin script, and WenJin Mincho supports the automatic conversion function of punctuation forms in the Western environment (default applies to Chinese full-width forms → **applies to Western variable-width forms**), so in this environment, some punctuation marks will automatically convert to Western styles.

Some applications (such as Word 2010, BabelStone Pad) use the GDI interface, so in the GDI environment, quotation marks will be displayed in Western forms. In Word 2010, this will cause the left quotation mark to be located on the left side, leaving a gap.

Text based on [DirectWrite](https://learn.microsoft.com/en-us/windows/win32/directwrite/introducing-directwrite), HarfBuzz environments does not have this problem (such as Word 2013 and later versions, Google Chrome, Linux graphical interfaces).

#### :question:Why does the condensed line-spacing version have severe clipping in some interfaces? Some lowercase letters (g, j, p, q, y) are not fully displayed at the bottom?
The condensed line-spacing version itself is a special design for applications like Word. The line spacing parameters of the original version appear too large in Word, so special settings were made. Due to parameter reasons, this version will appear clipped on some interfaces. Users are advised to use the standard version on these interfaces, or modify the line spacing parameters themselves.

The author has calculated the top and bottom positions of some letters and found that: if the line spacing parameters are set to include the top and bottom content of the letters, the line spacing in Word will be expanded (in some font sizes, the behavior is different from Zhongyi Song / SimSun), which will lose the meaning of the condensed line-spacing version.

#### :question:The Bopomofo symbols in Mainland China follow the old standard, for example "ㄧ", vertical for horizontal writing, horizontal for vertical writing. Can this be considered? I see the font example above uses horizontal for horizontal writing.
The default form of the Bopomofo symbol "i" in WenJin Mincho is a horizontal stroke. Most UI fonts (Microsoft YaHei, PingFang SC, Harmony OS Sans SC, MiSans, vivo Sans) are a horizontal stroke. You can enable the form of a vertical stroke for horizontal writing through the OpenType `hist`/`ss04` features.

#### :question:Why do the strokes of some extended characters still look very much like Hanazono Mincho?
Because most extended characters are generated using a modified Kage engine, the strokes of the Han ideographs generated by that engine are somewhat similar to the original Kage engine (the engine that generates Hanazono Mincho), but not exactly the same. The more significant changes include the use of Bézier curves for curved strokes (the original version uses straight lines to form polygons) and the strengthening of the serif effect of some strokes.

For specific changes, see: [Group:turgenev_KAGEエンジンの変更-技術的詳細](https://en.glyphwiki.org/wiki/Group:turgenev_KAGE%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3%E3%81%AE%E5%A4%89%E6%9B%B4-%E6%8A%80%E8%A1%93%E7%9A%84%E8%A9%B3%E7%B4%B0)
#### :question:Why does WenJin Mincho appear to have excessive line spacing in Word (under default settings)?
This is determined by the font's own line spacing parameters. The line spacing parameters of the original font follow the parameter settings of Source Han Sans. The line spacing parameters of most Chinese fonts are greater than 1 times the height of the Han ideograph, which makes the line spacing appear larger in software like Word.

#### :question:Why is WenJin Mincho divided into three fonts by plane? Why not put all fonts in the same ttf/otf file? What does "Plane 0/2/3" in the font name mean?
Today's **single** otf/ttf format font (non-ttc collection) can only hold 65,535 glyphs, while WenJin Mincho supports over 110,000 Unicode Han ideographs and IVD variant characters. Therefore, a single ttf format file cannot hold all Han ideographs, so it must be divided into multiple fonts. We apologize for the inconvenience caused by technical limitations.

The "**Plane 0/2/3**" in the font name represents the characters of the corresponding Unicode plane supported by each font. Simply put, a Unicode plane represents a collection of characters whose Unicode values are within a certain range.

PS: There is now a concept of a single otf/ttf format font with more than 65,535 glyphs, but it has received almost no software support. For details, please refer to: https://github.com/harfbuzz/boring-expansion-spec/blob/main/beyond-64k.md
#### :question:Why is WenJin Mincho an integrated version of Source Han Serif and Kage generated Han ideographs (GlyphWiki)?
Creating a font set with full Han ideograph collection requires a huge amount of time and energy. Even if it is based on relatively mature open-source body text fonts (such as Source Han Sans, Source Han Serif), it still requires making about 70,000 Han ideographs by oneself. To keep the style of extended Han ideographs consistent with existing ones is inevitably a huge project. Taking the extended Han ideograph font set based on Source Han Sans—[Plangothic](https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project) as an example, the project has continued from 2020 to the present, and under the collaborative production of multiple volunteers, it was not announced to be completed until 2025. Due to the author's limited energy, the method of integrating Source Han Serif and Kage generated Han ideographs was chosen.

At the same time, the G-source extension area Han ideographs in the GlyphWiki database are also incomplete, and the quality of existing G-source Han ideographs varies. Through component replacement, manual adjustment and other means, the author spent many days to make the Han ideographs generated by Kage meet the quantity requirements. Due to reasons of energy and level, the author did not make a large number of pseudo G-source Han ideographs for Han ideographs that do not have a G-source.

To this day, there are relatively few free commercial or even open-source large character set Han ideograph font libraries. If you find a large character set Songti style font set other than WenJin Mincho that **simultaneously meets** the following conditions (at least the first three), please tell the author as soon as possible, thank you.
- OFL or similar font licenses that allow free commercial use and modification (such as IPA, CC0 agreement)
- Extended Han ideographs (Extension B-J) glyphs are mainly G-source (at least according to Unicode submission source information, should be G as much as possible)
- Comprehensive support for Unicode collected Han ideographs and IVD variant characters, and all are Songti style
- Support for multiple Pinyin and Zhuyin systems
- Existence of PostScript (Bézier cubic) curve version

PS: If you intend to participate in the development of WenJin Mincho, please contact the author.
#### :question:Some glyphs in this font use GlyphWiki data, so how are the glyphs generated?
Glyphs generated using GlyphWiki data are generated using a [modified version of the Kage engine](https://github.com/ge9/kage-engine-2/). The general steps are as follows:
1. Download [GlyphWiki glyph database](http://glyphwiki.org/dump.tar.gz) and unzip;
2. Use local Node.js to run the Kage engine (written in JavaScript) to generate vector images of glyphs (SVG format);
3. Use font editing software to batch import SVG vector images of glyphs.
#### :question:Has this font corrected glyphs according to future Unicode versions?
After the new version of Unicode is **officially released (not Alpha/Beta Review stage)**, the author will modify the glyphs according to the latest version of the Unicode standard character table and release an updated version of this font.
#### :question:Is it suggested that this font include Suzhou numerals, circular *Fu Lu Shou Xi* symbols, Chinese chess and other symbols related to the Pan-Han character culture category?
Whether to add these symbols to this font (WenJin Mincho) is open to discussion. Personally, I think these are non-Han character symbols, and adding them is of little significance. If there is indeed a need in these aspects, you can contact the author separately for further discussion.

Note: WenJin Mincho already includes Suzhou numerals and circular *Fu Lu Shou Xi* symbols, while the SuperHan series does not include the above symbols.
