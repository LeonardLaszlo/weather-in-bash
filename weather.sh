#!/bin/bash

# Temperature map in Hungary.

# Weather informations provided by http://koponyeg.hu

# Map printing based on TCL script by lew046 (HUP).
# http://hup.hu/node/136351 ( lew046 | 2014. október 30., csütörtök - 22:39 )

match() {
	regexp='"text":"(\-?[0-9]+)\\u00b0"[0-9a-zA-Z@/,_:\.\+\\"\-]+"cityname":"'$2'"';
	[[ $1 =~ $regexp ]];
	echo ${BASH_REMATCH[1]}°C;
}

rawdata=$(curl -s "http://koponyeg.hu/index.php?m=weathermap&a=temperaturemap&_ajax=1");

bh=$(match "$rawdata" 'Budapest');
gh=$(match "$rawdata" 'Gy\\u0151r');
mh=$(match "$rawdata" 'Miskolc');
dh=$(match "$rawdata" 'Debrecen');
ph=$(match "$rawdata" 'P\\u00e9cs');
sh=$(match "$rawdata" 'Szeged');
zh=$(match "$rawdata" 'Si\\u00f3fok');

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
