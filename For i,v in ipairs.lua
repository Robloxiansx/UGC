

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v82=0;local v83;while true do if (v82==0) then v83=v2(v0(v30,16));if v19 then local v97=v5(v83,v19);v19=nil;return v97;else return v83;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v84=0 -0 ;local v85;while true do if (v84==((957 -(892 + 65)) -0)) then v85=(v31/(((7 -4) -1)^(v32-(2 -1))))%((1639 -(1523 + (210 -96)))^(((v33-1) -(v32-(620 -(555 + (117 -53))))) + (932 -(857 + 73 + 1)))) ;return v85-(v85%((127 + 442) -(367 + 201))) ;end end else local v86=2^(v32-(928 -(214 + 713))) ;return (((v31%(v86 + v86))>=v86) and (4 -3)) or (117 -(32 + 85)) ;end end local function v21() local v34=350 -(87 + (645 -382)) ;local v35;while true do if (v34==1) then return v35;end if (v34==0) then v35=v1(v16,v18,v18);v18=v18 + (181 -(67 + 113)) ;v34=1 + 0 ;end end end local function v22() local v36,v37=v1(v16,v18,v18 + 2 + 0 );v18=v18 + 2 ;return (v37 * (1017 -761)) + v36 ;end local function v23() local v38,v39,v40,v41=v1(v16,v18,v18 + (955 -(802 + (424 -274))) );v18=v18 + ((4 + 2) -2) ;return (v41 * (45169940 -28392724)) + (v40 * (47703 + 17833)) + (v39 * ((1647 -394) -(915 + (1269 -(1069 + 118))))) + v38 ;end local function v24() local v42=v23();local v43=v23();local v44=2 -1 ;local v45=(v20(v43,1 -0 ,4 + 16 ) * (2^(56 -24))) + v42 ;local v46=v20(v43,21 + 0 ,822 -((1140 -(201 + 571)) + 423) );local v47=((v20(v43,100 -68 )==(19 -(10 + 8))) and  -(3 -2)) or (443 -(416 + 26)) ;if (v46==0) then if (v45==0) then return v47 * ((1138 -(116 + 1022)) -0) ;else v46=(4 -3) + 0 ;v44=0 -(0 + 0) ;end elseif (v46==2047) then return ((v45==0) and (v47 * ((439 -(145 + 293))/(430 -(44 + 386))))) or (v47 * NaN) ;end return v8(v47,v46-(2509 -(998 + 488)) ) * (v44 + (v45/((1 + 1)^(43 + 9)))) ;end local function v25(v48) local v49;if  not v48 then v48=v23();if (v48==(0 -0)) then return "";end end v49=v3(v16,v18,(v18 + v48) -(3 -2) );v18=v18 + v48 ;local v50={};for v65=1, #v49 do v50[v65]=v2(v1(v3(v49,v65,v65)));end return v6(v50);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v51=(function() return 0;end)();local v52=(function() return;end)();local v53=(function() return;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();while true do local v67=(function() return 0;end)();while true do if (v67==(0 -0)) then if (v51~=1) then else local v95=(function() return 1824 -(1195 + 629) ;end)();while true do if (v95==(3 -2)) then v58=(function() return {};end)();for v110= #"!",v57 do local v111=(function() return 0 + 0 ;end)();local v112=(function() return;end)();local v113=(function() return;end)();while true do if (v111==(0 -0)) then local v116=(function() return 0 + 0 ;end)();while true do if (v116~=(651 -(494 + 157))) then else v112=(function() return v21();end)();v113=(function() return nil;end)();v116=(function() return 1 -0 ;end)();end if (v116==1) then v111=(function() return 1;end)();break;end end end if (1~=v111) then else if (v112== #"[") then v113=(function() return v21()~=0 ;end)();elseif (v112==(2 + 0)) then v113=(function() return v24();end)();elseif (v112== #"91(") then v113=(function() return v25();end)();end v58[v110]=(function() return v113;end)();break;end end end v95=(function() return 1 + 1 ;end)();end if ((1 + 1)==v95) then v51=(function() return 2;end)();break;end if (v95==(836 -(660 + 176))) then v56=(function() return {v53,v54,nil,v55};end)();v57=(function() return v23();end)();v95=(function() return 1 + 0 ;end)();end end end if (v51~=(1638 -(1373 + 263))) then else v56[ #"xxx"]=(function() return v21();end)();for v98= #"|",v23() do local v99=(function() return v21();end)();if (v20(v99, #"\\", #"\\")==(202 -(14 + 188))) then local v106=(function() return 675 -(534 + 141) ;end)();local v107=(function() return;end)();local v108=(function() return;end)();local v109=(function() return;end)();while true do if (v106==(2 + 1)) then if (v20(v108, #"19(", #"-19")~= #",") then else v109[ #"xnxx"]=(function() return v58[v109[ #"0836"]];end)();end v53[v98]=(function() return v109;end)();break;end if (v106~=(1 -0)) then else local v115=(function() return 0;end)();while true do if ((1 + 0)~=v115) then else v106=(function() return 2;end)();break;end if (v115==(0 + 0)) then local v122=(function() return 0 + 0 ;end)();while true do if (v122==(1 -0)) then v115=(function() return 1;end)();break;end if (v122~=(0 -0)) then else v109=(function() return {v22(),v22(),nil,nil};end)();if (v107==(0 -0)) then local v292=(function() return 0;end)();local v293=(function() return;end)();while true do if (v292~=0) then else v293=(function() return 0;end)();while true do if (v293~=(0 + 0)) then else v109[ #"gha"]=(function() return v22();end)();v109[ #".dev"]=(function() return v22();end)();break;end end break;end end elseif (v107== #"!") then v109[ #"xnx"]=(function() return v23();end)();elseif (v107==(2 + 0)) then v109[ #"-19"]=(function() return v23() -((398 -(115 + 281))^16) ;end)();elseif (v107~= #"asd") then else local v352=(function() return 0;end)();local v353=(function() return;end)();while true do if ((0 -0)==v352) then v353=(function() return 0 + 0 ;end)();while true do if (v353~=0) then else v109[ #"91("]=(function() return v23() -((4 -2)^(3 + 13)) ;end)();v109[ #"?id="]=(function() return v22();end)();break;end end break;end end end v122=(function() return 3 -2 ;end)();end end end end end if ((869 -(550 + 317))~=v106) then else if (v20(v108, #"[", #"{")~= #"<") then else v109[1 + 1 ]=(function() return v58[v109[2 -0 ]];end)();end if (v20(v108,2 -0 ,1469 -(899 + 568) )== #">") then v109[ #"-19"]=(function() return v58[v109[ #"19("]];end)();end v106=(function() return 8 -5 ;end)();end if (v106==(285 -(134 + 151))) then v107=(function() return v20(v99,2, #"asd");end)();v108=(function() return v20(v99, #"?id=",6);end)();v106=(function() return 1666 -(970 + 695) ;end)();end end end end for v100= #"]",v23() do v54,v100,v28=(function() return v52(v54,v100,v28);end)();end return v56;end v67=(function() return 1 -0 ;end)();end if (v67==(573 -(426 + 146))) then if ((0 + 0)~=v51) then else v52=(function() return function(v101,v102,v103) local v104=(function() return 1990 -(582 + 1408) ;end)();local v105=(function() return;end)();while true do if (v104~=0) then else v105=(function() return 0;end)();while true do if (v105~=(0 -0)) then else v101[v102-#"~" ]=(function() return v103();end)();return v101,v102,v103;end end break;end end end;end)();v53=(function() return {};end)();v54=(function() return {};end)();v55=(function() return {};end)();v51=(function() return 1 -0 ;end)();end break;end end end end local function v29(v59,v60,v61) local v62=v59[812 -(569 + 242) ];local v63=v59[2 + 0 ];local v64=v59[8 -5 ];return function(...) local v68=v62;local v69=v63;local v70=v64;local v71=v27;local v72=1 + 0 + 0 ;local v73= -(1025 -(706 + 318));local v74={};local v75={...};local v76=v12("#",...) -(1252 -(721 + 530)) ;local v77={};local v78={};for v87=1271 -(945 + 326) ,v76 do if (v87>=v70) then v74[v87-v70 ]=v75[v87 + ((810 -(329 + 479)) -1) ];else v78[v87]=v75[v87 + (506 -(351 + 154)) ];end end local v79=(v76-v70) + (1575 -(1281 + 293)) ;local v80;local v81;while true do local v88=0 + 0 ;while true do if (v88==(701 -(271 + 429))) then if ((v81<=(31 + 2)) or (248==2165)) then if (v81<=(1575 -(1381 + 178))) then if (v81<=(1507 -(1408 + (946 -(174 + 680))))) then if ((v81<=(1089 -(461 + 625))) or (3647<1569)) then if (v81<=(3 -2)) then if (v81>(0 + (0 -0))) then v78[v80[1 + 1 ]]=v80[(922 + 369) -((1732 -(396 + 343)) + 295) ]~=(0 + 0 + 0) ;v72=v72 + ((2649 -(29 + 1448)) -(418 + (2142 -(135 + 1254)))) ;else do return;end end elseif ((v81>(1 + 1)) or (4046>=4927)) then v78[v80[1 + 1 ]]=v80[1 + (7 -5) ];else local v126=0 + 0 ;local v127;while true do if ((0 -(0 -0))==v126) then v127=v80[531 -(406 + 123) ];v78[v127]=v78[v127](v13(v78,v127 + (1770 -(1749 + 20)) ,v80[1 + 2 ]));break;end end end elseif ((4623>=2787) and (v81<=(1327 -(1249 + 73)))) then if (v81==(2 + 2)) then local v128=v80[1147 -(466 + 679) ];local v129={v78[v128](v78[v128 + (2 -1) ])};local v130=1900 -(71 + 35 + 1794) ;for v230=v128,v80[4 + 0 ] do local v231=0 + 0 ;while true do if (v231==(0 + 0)) then v130=v130 + (627 -(512 + 114)) ;v78[v230]=v129[v130];break;end end end elseif (v80[5 -3 ]==v78[v80[8 -4 ]]) then v72=v72 + (2 -1) ;else v72=v80[3];end elseif (v81>(3 + 3)) then v78[v80[116 -(4 + 110) ]]=v78[v80[587 -(57 + 527) ]];elseif ((2234>=1230) and v78[v80[1429 -(41 + 1386) ]]) then v72=v72 + (104 -(17 + 86)) ;else v72=v80[3 + 0 ];end elseif (v81<=(24 -13)) then if ((v81<=(26 -(1544 -(389 + 1138)))) or (343==1786)) then if (v81==(174 -(122 + 44))) then local v133=v80[3 -(575 -(102 + 472)) ];local v134=v78[v80[3]];v78[v133 + (1 -0) ]=v134;v78[v133]=v134[v80[819 -(98 + 717) ]];else do return v78[v80[6 -4 ]];end end elseif ((2570>2409) and (v81>(9 + 1))) then local v138=0 + 0 ;local v139;local v140;local v141;local v142;while true do if (v138==(1 + 0)) then v73=(v141 + v139) -(1 + 0) ;v142=0 -0 ;v138=67 -(30 + 35) ;end if ((2 + 0)==v138) then for v310=v139,v73 do v142=v142 + (1258 -(1043 + 202 + 12)) ;v78[v310]=v140[v142];end break;end if ((v138==(0 -0)) or (2609>=3234)) then v139=v80[(674 + 540) -(323 + 889) ];v140,v141=v71(v78[v139](v78[v139 + (2 -1) ]));v138=581 -(361 + 219) ;end end else v78[v80[322 -(53 + 267) ]][v80[1 + 2 ]]=v78[v80[417 -(15 + 398) ]];end elseif (v81<=(7 + 6)) then if ((v81>(1445 -(797 + 636))) or (3033>=4031)) then local v145=v80[(9 + 0) -7 ];local v146={};for v232=983 -(18 + 964) , #v77 do local v233=v77[v232];for v269=0 -0 , #v233 do local v270=v233[v269];local v271=v270[1 + 0 ];local v272=v270[2 + 0 ];if ((v271==v78) and (v272>=v145)) then local v313=850 -(20 + 830) ;while true do if ((v313==(0 + (1545 -(320 + 1225)))) or (1401==4668)) then v146[v272]=v271[v272];v270[327 -(192 + 134) ]=v146;break;end end end end end else v78[v80[128 -(116 + 10) ]][v80[1 + (2 -0) ]]=v80[742 -(542 + 196) ];end elseif ((2776>=1321) and (v81<=(13 + 1))) then if (v80[3 -1 ]==v78[v80[2 + 2 ]]) then v72=v72 + 1 + 0 ;else v72=v80[3];end elseif (v81==15) then if v78[v80[1 + 1 ]] then v72=v72 + (2 -1) ;else v72=v80[7 -4 ];end else v78[v80[1553 -(1126 + 425) ]]=v60[v80[408 -(118 + 176 + 111) ]];end elseif (v81<=(93 -69)) then if ((v81<=20) or (487>2303)) then if (v81<=(1139 -(118 + 1003))) then if ((v81>(49 -32)) or (4503==3462)) then if (v78[v80[379 -(142 + 235) ]]~=v78[v80[(1482 -(157 + 1307)) -14 ]]) then v72=v72 + 1 + 0 ;else v72=v80[980 -(553 + 424) ];end else local v149=v80[3 -1 ];v78[v149]=v78[v149](v78[v149 + 1 ]);end elseif (v81>(17 + 2)) then v78[v80[2 + 0 ]]=v80[2 + 1 ];else v78[v80[1 + 1 ]]=v29(v69[v80[3]],nil,v61);end elseif (v81<=22) then if ((553<=1543) and (v81>(12 + 9))) then local v154=v80[4 -2 ];local v155,v156=v71(v78[v154]());v73=(v156 + v154) -1 ;local v157=1948 -(1096 + 852) ;for v234=v154,v73 do v157=v157 + (2 -1) ;v78[v234]=v155[v157];end else v78[v80[4 -2 ]][v80[1 + (1861 -(821 + 1038)) ]]=v78[v80[19 -15 ]];end elseif ((2015==2015) and (v81>(259 -(46 + 190)))) then v78[v80[97 -(51 + (109 -65)) ]]=v61[v80[756 -(239 + 514) ]];else v72=v80[2 + 1 ];end elseif ((v81<=((149 + 1208) -(797 + 532))) or (4241<=2332)) then if (v81<=(19 + 7)) then if (v81>(9 + 16)) then local v163=(0 -0) -0 ;local v164;local v165;local v166;while true do if ((v163==(1 + 0)) or (2364<1157)) then v166={};v165=v10({},{__index=function(v315,v316) local v317=v166[v316];return v317[1203 -(373 + 829) ][v317[733 -(476 + 255) ]];end,__newindex=function(v318,v319,v320) local v321=v166[v319];v321[1131 -(369 + 761) ][v321[2]]=v320;end});v163=1907 -(830 + 1075) ;end if (v163==(0 + 0)) then v164=v69[v80[5 -2 ]];v165=nil;v163=1 -0 ;end if (v163==(240 -(64 + 174))) then for v323=1 + 0 ,v80[5 -(2 -1) ] do v72=v72 + ((1363 -(834 + 192)) -(144 + 192)) ;local v324=v68[v72];if (v324[1 + 0 ]==(223 -(42 + 174))) then v166[v323-(1 + 0) ]={v78,v324[1507 -(363 + 1141) ]};else v166[v323-(1581 -(1183 + 397)) ]={v60,v324[3 + 0 ]};end v77[ #v77 + 1 ]=v166;end v78[v80[2]]=v29(v164,v165,v61);break;end end else v78[v80[1 + 0 + 1 ]]=v78[v80[3 + 0 ]][v80[1979 -(1913 + 62) ]];end elseif ((v81==(18 + 9)) or (1167>1278)) then v78[v80[5 -3 ]]=v78[v80[2 + 1 ]];else local v171=v80[773 -(84 + 242 + 445) ];v78[v171](v78[v171 + (4 -(1 + 2)) ]);end elseif (v81<=(1963 -(565 + (2119 -751)))) then if (v81==(108 -79)) then local v172=v80[(1967 -(300 + 4)) -(1477 + 184) ];do return v13(v78,v172,v172 + v80[884 -(614 + 267) ] );end else local v173=v80[2 -0 ];v78[v173]=v78[v173]();end elseif ((v81<=(29 + 2)) or (1145<=1082)) then for v237=v80[858 -(564 + 292) ],v80[4 -1 ] do v78[v237]=nil;end elseif ((v81>(3 + 6 + 23)) or (3105==4881)) then v78[v80[3 -(2 -1) ]][v80[8 -5 ]]=v80[1816 -(1293 + 519) ];else local v279=v80[3 -1 ];v78[v279](v78[v279 + ((667 -(112 + 250)) -(244 + 24 + 36)) ]);end elseif ((v81<=(39 + 11)) or (1887>4878)) then if ((v81<=((1294 -777) -(41 + 435))) or (4087>4116)) then if (v81<=(1038 -(938 + 63))) then if ((1106<=1266) and (v81<=(19 + 16))) then if (v81>(27 + 5 + 2)) then v78[v80[(583 + 544) -(936 + 189) ]]=v80[1 + 2 ]~=(0 + 0) ;else local v176=v80[1615 -(1565 + 48) ];local v177=v80[3 + 1 ];local v178=v176 + 1 + 0 + 1 ;local v179={v78[v176](v78[v176 + (1139 -(782 + 356)) ],v78[v178])};for v239=268 -(176 + 91) ,v177 do v78[v178 + v239 ]=v179[v239];end local v180=v179[1];if v180 then local v280=0 -0 ;while true do if ((3155<4650) and (v280==(0 -0))) then v78[v178]=v180;v72=v80[4 -1 ];break;end end else v72=v72 + (1 -0) ;end end elseif (v81>(26 + 10)) then v78[v80[2 + 0 ]]={};else local v182=v80[1094 -(975 + 117) ];v78[v182]=v78[v182](v13(v78,v182 + (1876 -(157 + (3132 -(1001 + 413)))) ,v80[5 -2 ]));end elseif (v81<=((71 -39) + 7)) then if (v81>(134 -96)) then v78[v80[6 -4 ]]=v60[v80[1021 -(697 + (1203 -(244 + 638))) ]];else v78[v80[5 -3 ]]=v80[5 -2 ]~=0 ;end elseif (v81==(92 -52)) then if (v78[v80[1 + 1 ]]~=v78[v80[458 -(13 + 441) ]]) then v72=v72 + ((694 -(627 + 66)) -0) ;else v72=v80[3];end else local v187=v80[5 -(8 -5) ];local v188=v78[v80[(1832 -(512 + 90)) -(322 + 905) ]];v78[v187 + (612 -(602 + 9)) ]=v188;v78[v187]=v188[v80[4]];end elseif ((3774>=1839) and (v81<=(1234 -((2355 -(1665 + 241)) + (1457 -(373 + 344)))))) then if ((2811==2811) and (v81<=(915 -(373 + 453 + 46)))) then if (v81>(152 -110)) then local v192=v80[949 -(245 + 702) ];local v193={v78[v192](v13(v78,v192 + 1 + 0 ,v73))};local v194=1898 -(260 + 1638) ;for v242=v192,v80[444 -((1007 -625) + 58) ] do v194=v194 + (3 -2) ;v78[v242]=v193[v194];end else do return;end end elseif (v81==(37 + 7)) then v78[v80[3 -1 ]]();else v78[v80[5 -3 ]]=v61[v80[1208 -(902 + 303) ]];end elseif ((2146>1122) and (v81<=(103 -56))) then if ((v81>((186 -76) -(1163 -(35 + 1064)))) or (56==3616)) then v72=v80[1 + 2 ];else local v198=1690 -(1121 + 569) ;local v199;local v200;while true do if ((v198==(214 -(22 + 192))) or (2421<622)) then v199=v80[685 -(483 + 200) ];v200={};v198=1464 -(1022 + 382 + 59) ;end if (v198==(2 -1)) then for v326=1 -0 , #v77 do local v327=765 -(468 + (635 -338)) ;local v328;while true do if (v327==(562 -(334 + 228))) then v328=v77[v326];for v346=0 + 0 , #v328 do local v347=v328[v346];local v348=v347[3 -2 ];local v349=v347[(1 + 3) -2 ];if ((v348==v78) and (v349>=v199)) then v200[v349]=v348[v349];v347[1 -0 ]=v200;end end break;end end end break;end end end elseif ((1009<=1130) and (v81<=(14 + 34))) then local v201=(2285 -(298 + 938)) -(572 + 477) ;local v202;while true do if (v201==(236 -(141 + 95))) then v202=v80[2 + 0 ];v78[v202]=v78[v202]();break;end end elseif ((2758<2980) and (v81==(125 -(1335 -(233 + 1026))))) then v78[v80[4 -2 ]]={};else local v283=(1666 -(636 + 1030)) + 0 + 0 ;local v284;while true do if (v283==(0 -0)) then v284=v80[5 -3 ];v78[v284](v13(v78,v284 + 1 + 0 ,v80[1 + 2 ]));break;end end end elseif (v81<=(31 + 28)) then if ((v81<=(75 -21)) or (86>=3626)) then if (v81<=(31 + 21)) then if (v81>(214 -(92 + 71))) then local v203=v80[1 + 1 ];local v204={v78[v203](v13(v78,v203 + (766 -(574 + 191)) ,v73))};local v205=0 + 0 ;for v245=v203,v80[4 + 0 ] do v205=v205 + (1 -0) ;v78[v245]=v204[v205];end else local v206=v80[4 -2 ];v78[v206](v13(v78,v206 + (3 -2) ,v80[3]));end elseif (v81==(48 + 5)) then for v248=v80[2 + 0 ],v80[852 -(254 + 595) ] do v78[v248]=nil;end else local v207=v80[128 -(55 + 71) ];v78[v207]=v78[v207](v78[v207 + (1 -0) ]);end elseif ((2395==2395) and (v81<=((1804 + 42) -(573 + 1217)))) then if ((3780>2709) and (v81>(152 -(29 + 68)))) then if (v78[v80[1 + 1 ]]==v80[2 + 2 ]) then v72=v72 + (1 -0) ;else v72=v80[942 -(714 + 225) ];end else local v209=v69[v80[8 -5 ]];local v210;local v211={};v210=v10({},{__index=function(v250,v251) local v252=v211[v251];return v252[2 -1 ][v252[2 -0 ]];end,__newindex=function(v253,v254,v255) local v256=v211[v254];v256[1][v256[1 + 1 ]]=v255;end});for v258=1 -0 ,v80[(1031 -(55 + 166)) -(23 + 95 + 688) ] do v72=v72 + (49 -(25 + 23)) ;local v259=v68[v72];if (v259[1 + 0 ]==(1 + 6)) then v211[v258-(1890 -(1569 + (1222 -902))) ]={v78,v259[9 -6 ]};else v211[v258-((1030 -(36 + 261)) -(16 + 716)) ]={v60,v259[3]};end v77[ #v77 + 1 + (0 -0) ]=v211;end v78[v80[2]]=v29(v209,v210,v61);end elseif (v81<=(138 -81)) then v78[v80[287 -(175 + 110) ]]=v80[3 + 0 ]~=(254 -(79 + 175)) ;v72=v72 + (2 -(1369 -(34 + 1334))) ;elseif (v81==((110 + 176) -(178 + 50))) then local v286=v80[1798 -(503 + 1293) ];local v287=v80[4];local v288=v286 + 2 ;local v289={v78[v286](v78[v286 + (2 -1) ],v78[v288])};for v304=(22 -(20 + 1)) + 0 ,v287 do v78[v288 + v304 ]=v289[v304];end local v290=v289[900 -(503 + 396) ];if (v290 or (237>=2273)) then v78[v288]=v290;v72=v80[1064 -(810 + 251) ];else v72=v72 + 1 + 0 ;end elseif (v78[v80[1 + 0 + 1 ]]==v80[3 + 1 ]) then v72=v72 + 1 + 0 ;else v72=v80[3];end elseif (v81<=(596 -(43 + 490))) then if (v81<=(794 -((1030 -(134 + 185)) + 22))) then if (v81>(232 -172)) then local v214=859 -(240 + 619) ;local v215;local v216;local v217;while true do if ((v214==(0 + 0)) or (2040<=703)) then v215=v80[(1134 -(549 + 584)) + 1 ];v216={v78[v215](v78[v215 + 1 + 0 ])};v214=1745 -(1344 + 400) ;end if (v214==((1393 -987) -((1223 -(478 + 490)) + 150))) then v217=0;for v332=v215,v80[4 + 0 ] do v217=v217 + 1 + 0 ;v78[v332]=v216[v217];end break;end end else local v218=v80[8 -6 ];v78[v218](v13(v78,v218 + (3 -2) ,v73));end elseif (v81==(1801 -(404 + 1335))) then local v219=v80[408 -(183 + 223) ];local v220,v221=v71(v78[v219](v78[v219 + (1 -(0 + 0)) ]));v73=(v221 + v219) -(1 + 0) ;local v222=0 + 0 ;for v261=v219,v73 do v222=v222 + (338 -(10 + 327)) ;v78[v261]=v220[v222];end else local v223=v80[2 + 0 ];local v224,v225=v71(v78[v223]());v73=(v225 + v223) -(339 -(118 + 220)) ;local v226=0 + 0 ;for v264=v223,v73 do v226=v226 + (450 -((1280 -(786 + 386)) + 341)) ;v78[v264]=v224[v226];end end elseif (v81<=(30 + 35)) then if (v81>(270 -206)) then v78[v80[1495 -(711 + 782) ]]=v78[v80[5 -(6 -4) ]][v80[(1852 -(1055 + 324)) -(270 + 199) ]];else v78[v80[1 + 1 ]]=v29(v69[v80[1822 -(580 + 1239) ]],nil,v61);end elseif (v81<=(52 + 14)) then v78[v80[5 -3 ]]();elseif (v81==(65 + (1342 -(1093 + 247)))) then local v291=v80[1 + 1 ];v78[v291](v13(v78,v291 + 1 + 0 + 0 ,v73));else do return v78[v80[(1 + 3) -2 ]];end end v72=v72 + 1 + 0 ;break;end if (v88==(1684 -((5820 -4354) + 218))) then v80=v68[v72];v81=v80[1168 -(645 + 522) ];v88=1149 -((1886 -1330) + 592) ;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!213O0003043O0067616D6503073O00506C6163654964022O00BCF9D22A1142028O00027O0040026O00F03F03053O0049646C656403073O00436F2O6E656374026O000840030A3O0047657453657276696365030B3O005669727475616C5573657203073O00506C6179657273030B3O004C6F63616C506C61796572026O00144003073O0067657467656E7603043O004661726D2O0103053O00706169727303093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D6503043O007461736B03043O007761697403053O00737061776E026O001040030A3O005374617274657247756903073O00536574436F726503103O0053656E644E6F74696669636174696F6E03053O005469746C6503113O00666F7220692C7620696E2069706169727303043O0054657874030A3O00496E2044657374726F7903083O004475726174696F6E00963O00122D3O00013O0020415O00020026383O00950001000300042F3O009500010012143O00044O001F000100073O0026383O001E0001000500042F3O001E0001001214000800043O002638000800120001000600042F3O00120001002041000900050007002008000900090008000637000B3O000100012O00073O00044O00330009000B00010012143O00093O00042F3O001E0001002O0E000400090001000800042F3O0009000100122D000900013O00200800090009000A001214000B000B4O00020009000B00022O001B000400093O00122D000900013O00204100090009000C00204100050009000D001214000800063O00042F3O000900010026383O002C0001000600042F3O002C0001001214000800043O002638000800260001000400042F3O00260001000240000200014O001F000300033O001214000800063O002638000800210001000600042F3O00210001000240000300023O0012143O00053O00042F3O002C000100042F3O002100010026383O005F0001000E00042F3O005F000100122D0008000F4O001E00080001000200302100080010001100122D0008000F4O001E000800010002002041000800080010002O060008009400013O00042F3O00940001001214000800044O001F000900093O0026380008004C0001000600042F3O004C000100122D000A00124O001B000B00094O0004000A0002000C00042F3O004700012O001B000F00014O001B0010000E4O0011000F00020002002O06000F004700013O00042F3O00470001002041000F00050013002041000F000F00140020410010000E0015001015000F0015001000063A000A003E0001000200042F3O003E00012O001B000A00064O002C000A00010001001214000800053O002638000800520001000500042F3O0052000100122D000A00163O002041000A000A00172O002C000A0001000100042F3O00310001002638000800380001000400042F3O0038000100122D000A00183O000637000B0003000100012O00073O00074O0020000A000200012O001B000A00024O001E000A000100022O001B0009000A3O001214000800063O00042F3O0038000100042F3O0031000100042F3O009400010026383O006D0001000400042F3O006D0001001214000800043O002638000800670001000600042F3O006700012O001F000200023O0012143O00063O00042F3O006D0001002638000800620001000400042F3O006200012O001F000100013O000240000100043O001214000800063O00042F3O006200010026383O007C0001000900042F3O007C0001001214000800043O002638000800760001000400042F3O007600012O001F000600063O00063700060005000100012O00073O00053O001214000800063O002638000800700001000600042F3O007000012O001F000700073O0012143O00193O00042F3O007C000100042F3O007000010026383O00060001001900042F3O00060001001214000800043O0026380008008C0001000400042F3O008C0001000240000700063O00122D000900013O00204100090009001A00200800090009001B001214000B001C4O0031000C3O0003003021000C001D001E003021000C001F0020003021000C0021000E2O00330009000C0001001214000800063O002O0E0006007F0001000800042F3O007F00012O001B000900034O002C0009000100010012143O000E3O00042F3O0006000100042F3O007F000100042F3O000600012O002E8O002A3O00013O00073O00053O00028O0003113O0043617074757265436F6E74726F2O6C6572030C3O00436C69636B42752O746F6E3203073O00566563746F72322O033O006E6577000F3O0012143O00013O0026383O00010001000100042F3O000100012O002700015O0020080001000100022O00200001000200012O002700015O00200800010001000300122D000300043O0020410003000300052O0016000300014O004300013O000100042F3O000E000100042F3O000100012O002A3O00017O00073O0003053O00706169727303093O00776F726B7370616365030E3O0047657444657363656E64616E74732O033O0049734103083O00426173655061727403053O007461626C6503063O00696E7365727400154O00317O00122D000100013O00122D000200023O0020080002000200032O003E000200034O002B00013O000300042F3O00110001002008000600050004001214000800054O0002000600080002002O060006001100013O00042F3O0011000100122D000600063O0020410006000600072O001B00076O001B000800054O003300060008000100063A000100070001000200042F3O000700012O00443O00024O002A3O00017O00083O0003063O0069706169727303093O00776F726B7370616365030E3O0047657444657363656E64616E74732O033O0049734103083O00426173655061727403043O004E616D6503063O0048616E646C6503073O0044657374726F7900133O00122D3O00013O00122D000100023O0020080001000100032O003E000100024O002B5O000200042F3O00100001002008000500040004001214000700054O0002000500070002002O060005001000013O00042F3O00100001002041000500040006002638000500100001000700042F3O001000010020080005000400082O002000050002000100063A3O00060001000200042F3O000600012O002A3O00019O003O00034O00278O002C3O000100012O002A3O00017O00033O0003153O0046696E6446697273744368696C644F66436C612O73030F3O0050726F78696D69747950726F6D70740001093O00200800013O0001001214000300024O0002000100030002002638000100060001000300042F3O000600012O000100016O0026000100014O0044000100024O002A3O00017O00093O0003053O00706169727303043O0067616D6503073O00506C6179657273030A3O00476574506C617965727303043O004E616D6503093O0043686172616374657203153O0046696E6446697273744368696C644F66436C612O7303083O0048756D616E6F696403073O0044657374726F79001B3O00122D3O00013O00122D000100023O0020410001000100030020080001000100042O003E000100024O002B5O000200042F3O001800010020410005000400052O002700065O002041000600060005000612000500180001000600042F3O00180001002041000500040006002O060005001800013O00042F3O00180001002041000500040006002008000500050007001214000700084O0002000500070002002O060005001800013O00042F3O001800010020410005000400060020080005000500092O002000050002000100063A3O00070001000200042F3O000700012O002A3O00017O00063O0003063O0069706169727303093O00776F726B7370616365030E3O0047657444657363656E64616E74732O033O00497341030F3O0050726F78696D69747950726F6D707403133O006669726570726F78696D69747970726F6D707400113O00122D3O00013O00122D000100023O0020080001000100032O003E000100024O002B5O000200042F3O000E0001002008000500040004001214000700054O0002000500070002002O060005000E00013O00042F3O000E000100122D000500064O001B000600044O002000050002000100063A3O00060001000200042F3O000600012O002A3O00017O00",v9(),...);
