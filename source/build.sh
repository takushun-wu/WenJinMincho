#!/bin/bash
echo -e "\e[92m[1] Generating OTF file...\e[0m"
mkdir otf
echo -e "\e[32m[1a] Generating P0 OTF file...\e[0m"
makeotf -nshw -f P0.ps -omitMacNames -ff feature0.fea -mf FontMenuNameDB \
    -r -addn -ch UniWenJinMincho-P0-UTF32-H -cs 25 -ci uvs0.txt -fi cidfontinfo0.txt -o ./otf/
echo -e "\e[32m[1b] Generating P2 OTF file...\e[0m"
makeotf -nshw -f P2.ps -omitMacNames -ff feature2.fea -mf FontMenuNameDB \
    -r -addn -ch UniWenJinMincho-P2-UTF32-H -cs 25 -ci uvs2.txt -fi cidfontinfo2.txt -o ./otf/
echo -e "\e[32m[1c] Generating P3 OTF file...\e[0m"
makeotf -nshw -f P3.ps -omitMacNames -ff feature3.fea -mf./data/FontMenuNameDB \
    -r -addn -ch UniWenJinMincho-P3-UTF32-H -cs 25 -ci uvs3.txt -fi cidfontinfo3.txt -o ./otf/
echo -e "\e[92m[2] Generating TTF file...\e[0m"
mkdir ttf
echo -e "\e[32m[2a] Generating P0 TTF file...\e[0m"
otf2ttf -o ./ttf/WenJinMinchoP0-Regular.ttf ./otf/WenJinMinchoP0-Regular.otf
echo -e "\e[32m[2b] Generating P2 TTF file...\e[0m"
otf2ttf -o ./ttf/WenJinMinchoP2-Regular.ttf ./otf/WenJinMinchoP2-Regular.otf
echo -e "\e[32m[2c] Generating P3 TTF file...\e[0m"
otf2ttf -o ./ttf/WenJinMinchoP3-Regular.ttf ./otf/WenJinMinchoP3-Regular.otf
echo -e "\e[92m[3] Generating OTC&TTC file...\e[0m"
mkdir ttc
echo -e "\e[32m[3a] Generating OTC file...\e[0m"
otf2otc -o ./ttc/WenJinMincho-OTF.ttc ./otf/WenJinMinchoP0-Regular.otf ./otf/WenJinMinchoP2-Regular.otf ./otf/WenJinMinchoP3-Regular.otf
echo -e "\e[32m[3a] Generating TTC file...\e[0m"
otf2otc -o ./ttc/WenJinMincho-TTF.ttc ./ttf/WenJinMinchoP0-Regular.ttf ./ttf/WenJinMinchoP2-Regular.ttf ./ttf/WenJinMinchoP3-Regular.ttf