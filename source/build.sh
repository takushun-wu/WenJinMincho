#!/bin/bash
echo -e "\e[92m[1] Generating OTF file...\e[0m"
mkdir otf
for i in 0 2 3; do
    echo -e "\e[32m[1-] Generating P$i OTF file...\e[0m"
    makeotf -nshw -f P${i}_h.pfb -omitMacNames -ff feature$i.fea -mf FontMenuNameDB \
        -r -addn -ch UniWenJinMincho-P$i-UTF32-H -cs 25 -ci uvs$i.txt -fi cidfontinfo$i.txt -o ./otf/
    python androidheightfix.py ./otf/WenJinMinchoP$i-Regular.otf
done
echo -e "\e[92m[2] Generating TTF file...\e[0m"
mkdir ttf
for i in 0 2 3; do
    echo -e "\e[32m[2-] Generating P$i TTF file...\e[0m"
    otf2ttf -o ./ttf/WenJinMinchoP$i-Regular.ttf ./otf/WenJinMinchoP$i-Regular.otf
done
echo -e "\e[92m[3] Generating OTC&TTC file...\e[0m"
mkdir ttc
echo -e "\e[32m[3a] Generating OTC file...\e[0m"
otf2otc -o ./ttc/WenJinMincho-OTF.ttc ./otf/WenJinMinchoP0-Regular.otf ./otf/WenJinMinchoP2-Regular.otf ./otf/WenJinMinchoP3-Regular.otf
echo -e "\e[32m[3a] Generating TTC file...\e[0m"
otf2otc -o ./ttc/WenJinMincho-TTF.ttc ./ttf/WenJinMinchoP0-Regular.ttf ./ttf/WenJinMinchoP2-Regular.ttf ./ttf/WenJinMinchoP3-Regular.ttf