#!/bin/bash

# Current temperature in Hungary
# Based on TCL script by lew046 (HUP). All credits for lew046.

measureTemperature() {
	if [ -z "$1" ]; then
		return 0;
	else
		# Get temperature from koponyeg.hu
		result=$(curl -s $1);
		regexp='\s*([0-9]+)&deg;C\s*';
		[[ $result =~ $regexp ]];
		echo ${BASH_REMATCH[1]}°C;
	fi
}

bh=$(measureTemperature "http://koponyeg.hu/t/Budapest")
gh=$(measureTemperature "http://koponyeg.hu/t/Gy%C5%91r")
mh=$(measureTemperature "http://koponyeg.hu/t/Miskolc")
dh=$(measureTemperature "http://koponyeg.hu/t/Debrecen")
ph=$(measureTemperature "http://koponyeg.hu/t/P%C3%A9cs")
sh=$(measureTemperature "http://koponyeg.hu/t/Szeged")
zh=$(measureTemperature "http://koponyeg.hu/t/Si%C3%B3fok")

printf "\n"
printf "\033[0;32m                                                       .oydmmo:''.ohdo- \033[0m\n"
printf "\033[0;32m                                                      -mN+-'.+shhy+./dM:  .-/o/ \033[0m\n"
printf "\033[0;32m                                                    .:NN.            'hMNMmmMmMy \033[0m\n"
printf "\033[0;32m                                           :yNds/-+NMmh.               '-'    sMMN/ \033[0m\n"
printf "\033[0;32m                                   .-////osNN-+dNMMm'                           'dMhdy' \033[0m\n"
printf "\033[0;32m             :hmds.              'yMh+osyo++.    +/                              '::sM- \033[0m\n"
printf "\033[0;32m            :mM/:hMs-            .Md                \033[1;33m$mh\033[0;32m                            +mM/ \033[0m\n"
printf "\033[0;32m      .oo/../Md   :hNm+++oo+//ossyM/                                         .oyNmdMh- \033[0m\n"
printf "\033[0;32m     hMMmMMMNmh      /osy++oss+///.                                        /sNmo+--' \033[0m\n"
printf "\033[0;32m     .+sMN-    \033[1;33m$gh\033[0;32m                                                        -mMd. \033[0m\n"
printf "\033[0;32m     -/oMN'                        \033[1;33m$bh\033[0;32m                                    dM: \033[0m\n"
printf "\033[0;32m     dMh+/                                                    \033[1;33m$dh\033[0;32m       'mNd. \033[0m\n"
printf "\033[0;32m     mM/                                                                hM/ \033[0m\n"
printf "\033[0;32m     hMm                                                              .yMy \033[0m\n"
printf "\033[0;32m   ohmMm                                                             +MN: \033[0m\n"
printf "\033[0;32m :NMm/:.                \033[1;33m$zh\033[0;32m                                         .NMo \033[0m\n"
printf "\033[0;32m /syMN'                                                            'NN/ \033[0m\n"
printf "\033[0;32m   .dMy                                                           -dMd \033[0m\n"
printf "\033[0;32m    -dNo                                                         yMm+ \033[0m\n"
printf "\033[0;32m      sMd+                                                      'MM- \033[0m\n"
printf "\033[0;32m       '+mMh-                                    \033[1;33m$sh\033[0;32m     -   'mMh' \033[0m\n"
printf "\033[0;32m          :NMo.           \033[1;33m$ph\033[0;32m                       . oMMMmMm+ \033[0m\n"
printf "\033[0;32m           '+hMd-                          yMNNmmMMMmdNNMNNm-'.- \033[0m\n"
printf "\033[0;32m              /NN/                 so'sh+hNNo ':- -.:/.-'-- \033[0m\n"
printf "\033[0;32m               -dMNdmm+         .syMNNMyoo: \033[0m\n"
printf "\033[0;32m                 ...dMMs++//:.-+mNsy/-. \033[0m\n"
printf "\033[0;32m                     ./ysshydmNd+' \033[0m\n"
printf "\n"
