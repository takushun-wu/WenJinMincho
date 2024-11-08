import sys
from fontTools.ttLib.ttFont import TTFont

print("Modifying yMin/yMax data in 'head' table...")
fontPath = sys.argv[1]
font = TTFont(fontPath, recalcBBoxes=False)
font["head"].yMax = font["hhea"].ascender
font["head"].yMin = font["hhea"].descender
font.save(fontPath, reorderTables=False)