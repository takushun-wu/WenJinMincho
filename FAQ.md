# 常见问题
#### :question:本字体的有些字形是使用GlyphWiki数据，那么是如何生成字形的？
使用GlyphWiki数据生成的字形是使用[修改版的Kage引擎](https://github.com/ge9/kage-engine-2/)来生成，大致步骤如下：
1. 下载[GlyphWiki字形数据库](http://glyphwiki.org/dump.tar.gz)并解压；
2. 使用本地nodejs运行Kage引擎（JavaScript编写），生成字形的矢量图（SVG格式）；
3. 使用字体编辑软件批量导入字形的SVG矢量图。
#### :question:本字体是否已按照将来发布的Unicode版本去修正字形？
待Unicode新版本 **正式发布（不是Alpha/Beta Review阶段）** 后，作者会根据最新版的Unicode标准字符表去修改字形，并发布本字体的更新版本。
#### :question:建议本字体包含苏州码子、圆形福禄寿喜符号、象棋等泛汉字文化范畴相关符号？
关于本字体（文津宋体）是否加入这些符号有待商榷。个人认为这些都是非汉字符号，加入这些意义不大。若确有这些方面的必要，可与作者单独联系，进行进一步的探讨。

另：文津宋体已包含苏州码子，SuperHan系列上述符号均未包含。