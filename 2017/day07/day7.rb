require "debug"

set = Set.new
data = DATA.readlines.map(&:chomp)
arrows = data.select { |row| row.include?("->") }
data = arrows.map { |row| row.split(" -> ") }
# populate set with all items from lhs
data.each do |(left, _right)|
  set << left.match(/([a-z]+)/)[0]
end

# remove items that appear on rhs
data.each do |(_left, right)|
  temp = right.split(", ")
  temp.each do |item|
    set.delete(item)
  end
end

# should only be one left
puts set.to_a.pop
__END__
cfkcj (74)
kmwhbm (32)
uuvdgc (58)
siyms (98)
jgtvhkv (1885) -> ykqcpiv, gvupyd, vuyxvq
ppdypq (86)
lovxjut (90) -> fmvna, ddneaes, sakwdmk, lqmoz
ijnvdm (98)
ibzlhq (86)
pabuo (81)
brexb (75) -> tbmiv, iwrph
uqiwwa (705) -> inriw, rnelci
psyroai (498) -> porhb, qinqu, esxiq
ldkxt (69)
mzfbeo (68)
spjtt (299) -> xfcxpkh, sizgye
dnjao (243)
rqwnb (9)
jfnfq (94)
giuonbb (68)
gbywwf (103) -> ugskjw, gelpv
fldjrj (52)
vuxzudl (31)
ewnboyh (38)
bolsi (11)
gbziz (33)
ytkppl (95)
rahuwnt (86)
toprb (282) -> dzyvcxt, xlyngh, tkhbr, avufn, uhhiz, tmtqgn
jadnvpr (13)
rnsotgi (47)
ovcgnvp (309) -> zlffm, iqwjlgh
xpbro (69)
tjulok (12)
pvylfqc (199) -> pzybx, nbdewmj
smwdyt (22)
oozzs (55) -> vrqgow, iynmj
qmzcp (89)
ssneqxd (22)
fqhdfwi (1041) -> ytjhh, rqpbxi, uvprg
bgsbjcq (81)
ilmvjcn (7)
adnrrap (69)
tspxgun (48)
tbmiv (77)
tceqj (58)
nlptf (157) -> vpvgnt, memsb, mcsoi, ctnckd
yzaveth (320) -> frfkpn, viockjp, cqzvhh
dgwely (74)
dpjpifo (47)
lncbnc (238) -> bmiqc, uvnmx
ppgvqkj (48)
fdbsgs (31)
usjpp (55) -> cxhms, niixavl, bspsg, htwyil, pyavtyz
ovhxqx (53)
vzyut (17)
pvxvvv (52)
gkouyvq (73)
ugjmo (86)
mblsyx (51158) -> vqpzey, bavhyuz, fqwyfso
vyrwv (99)
gdjawl (10)
vxcjbsi (56)
tiedml (44)
ihxixk (61) -> pduyk, betaiu
pvthg (41)
gehqj (77)
luxlkxu (1170) -> bzlttq, rowhly, nlptf
irckle (65) -> kuvzyp, nkotu, uqfiwz
fjwfhq (73)
drzukuh (55)
pzyxbdy (81)
brxrm (51)
dirdh (56)
ovujcr (13)
usfiw (7750) -> dtvjn, jektxhw, sfmvh
ytjhh (219) -> jcooqy, gvuvmfz
umnhed (1311) -> lefse, brexb, bexmjvo
vzvwks (52)
ydzdome (10)
iekhet (68)
jcooqy (5)
pcvok (38)
gqmqt (675) -> udebyn, agifkpl, gogsic
gkyvjtj (69)
uhhiz (88) -> bojcjr, krhtjha
jenzlcn (96)
mjntxj (48) -> mdhduoi, aztaw, tfkse
xgelkov (12)
rpadzt (24)
uoewbgw (54)
hmroizo (1564) -> hyjba, qetylot
qinqu (78) -> pabuo, bgsbjcq
cuikvge (150) -> vuxzudl, fdbsgs
jqjyspz (91)
dcaot (27) -> dnjao, bwbufij, mlzxc, auawgd, laxqy, awzuv, pvylfqc
yheomy (69)
kvspfv (81)
uoxqwap (161)
nfefd (82)
wfgammo (97)
mifrxb (158)
ihvae (5)
xfcxpkh (12)
pjegzrx (63) -> pgigk, zijedtv, ghdgob
xrxabjj (45)
fqmjnw (58)
pjgwz (99)
uxzazjg (64)
seeqovh (25)
eyxbeon (35)
umdhwh (27)
sesui (38)
nhnwqgh (59)
bnnfxqe (12)
blivyc (55)
ilrkhhd (84)
kzdxtck (37)
gfsmrr (172) -> xkuubv, eyxbeon
atwwiy (67)
rnelci (99)
hxlve (68)
pkwfv (32)
jnack (61)
pqqxhy (235) -> xsiklw, hmpcc
wcehmi (167) -> ygukv, upllk, kkdvdz, dqaum, synets
onwpfb (77)
zledwkk (7)
mjaqsj (78)
qsoybe (67)
eidhz (91)
blnsa (68) -> hftkbw, snllz, ddfnw, gefhbss
cswrj (176) -> laydujd, hpdegx
jtwckf (71)
lleyk (243) -> nyfnss, veujpah
synets (89) -> uuvdgc, vxqvj
swqrnfi (500) -> ivohs, zzqwyx, sxuafke
oyxlg (11)
zuruj (5)
loaex (63) -> jtwckf, enxsaag
mviybt (27)
qrxvlk (369) -> bpbfd, gdbapcx
yagjnwy (78)
ftlrjo (91)
zklwp (56555) -> kaursj, lahahn, ciwjgw
dehbyec (51)
udoabw (123) -> ewgjf, icdyrl
bojcjr (34)
dwmkyes (119) -> schbl, finmnfn, iiropvx
plhno (14)
bsfpjtc (42) -> zklwp, zoibnsq, mblsyx, vkkwtq, cwluofv
thfdorc (48) -> ieuus, resill, agiybx, lleyk, mqruxqs
hupbun (52)
nyfnss (14)
nkhiz (51)
gicaag (50)
kgsyd (92) -> pzyxbdy, uozna, bcxexao, kvspfv
fuopub (65) -> vqijdaj, mzfbeo
wekwg (51)
vuyxvq (55) -> rsaruxl, blukof
awzuv (133) -> kxbjrca, drzukuh
onrbqjg (314) -> qulqh, wekwg
gefhbss (171) -> rhfpsr, oziwk
gkcpihl (88)
nwbomv (87)
betaiu (82)
wuhui (66)
ocopf (53)
jjceeu (65)
gurmk (64)
ymrkr (77)
grupgc (24)
ucqgh (75)
ujdishy (60)
mrwgq (85)
buvuq (3294) -> usjpp, swqrnfi, oqdntf
cqzvhh (9)
ikhbgx (54)
ddfnw (77) -> blhurw, qdeybxh, dehbyec, hkhvjq
xnfjw (17)
nfrbj (25)
zdrbia (250) -> dpjpifo, rnsotgi
wkennss (43) -> xcobqnc, lpogx, jjceeu
njlyt (65)
thnxnda (66)
xkdua (12)
frfkpn (9)
uwlpeon (30)
gwuxmq (89) -> rladyxh, mjaqsj, ozkrca
lnxtx (91)
djpkm (75)
gbnmi (21) -> mviybt, umdhwh, nswhn
nswhn (27)
kkktvk (32)
rgzkfeq (275)
hcywt (26)
hbjiz (129) -> ldkxt, tvshylj
fkzwy (16)
aztaw (10) -> yfrcezm, kqglah, ytkppl, puxzdr
ocztn (95)
jbsdgwa (34)
fqwyfso (34) -> vuqlmx, hmroizo, fqhdfwi, ksvwst, hihvghh, dcaot
urnycch (8)
uyhqy (23)
resill (127) -> uvptuv, luzuu
udebyn (181)
qetylot (82)
hdjgig (51)
jntmriy (90)
rfvtvw (46)
lsfjnsb (186) -> azmknz, qrriz
vnantj (71) -> avxjqab, oxjor, dattu, nwbomv
epxtul (12) -> aiyvkt, yhmavn
ysqwf (161) -> mxumuj, zbjhd
jieqymv (77)
rqqirx (91)
xoqqhw (346) -> uigna, qfequa
qdrbdcf (59)
uufted (217) -> megix, vewew, ovujcr
frkzri (15)
ddjyphd (66)
modlepu (59)
ynbhq (17)
jsdqcw (7)
dpevfm (7)
tqmkur (63)
bzhnu (150) -> qcpdn, ymjhqjw
sbaeoqo (58)
vtprv (39)
cshts (7)
tlitf (70)
ynodbxy (58)
arfft (259) -> eebqhug, jggld
rxrayit (22)
vdymnhw (37)
uvptuv (72)
fjueeps (17)
tollmm (100) -> qjipfjv, glbhpwz, pkfyhk
emwqaz (5)
unehvbu (147) -> tjulok, fwapzg
wlqagku (34)
unikoz (47)
vizehnk (97)
lnotuxj (198) -> feyiw, vrcfi
tkneufh (51)
usfag (80)
lgwut (308) -> ohdwce, uoewbgw
hfpcxco (85)
qddkwld (233) -> fnzboe, lbrknfc, plhno
ksvwst (1053) -> gzwkbw, ihxixk, vxzowjy
camosg (85)
onbizml (64)
rrlifdx (21)
pzybx (22)
mhbhg (50)
upksvnf (8)
utxkvw (52)
mmhjhh (20)
gjqcj (64)
xljdooj (37)
aejrdpp (201) -> zopkd, beoww
fiutgke (17)
qnmuc (202) -> mmhjhh, sfyps
aqjrxbd (40) -> mrwgq, hfpcxco, kozlucm
imtxkez (94) -> cwthmnc, mzvyddo, rmvgczw, jgtvhkv, hejlvq, ihxivjd
daaexz (199)
ghdgob (86)
owqupte (43) -> vkuvc, ucwwc
eztix (16)
pudsuxc (20)
vlwnw (90)
nlotooe (89) -> azzfba, ghbfbn, ppdypq
xqdpgzt (66)
hzain (46)
tfjzhz (88) -> mhpsnlv, kpjzc
gihhi (20)
gvuvmfz (5)
hmpcc (38)
lotngsa (12)
rupou (1090) -> tcgqf, onbizml
xxjcew (40)
yxfyvw (26) -> nlotooe, kqcmyr, yzaveth, fsqkr, kryid
xlyngh (132) -> qznfyv, lotngsa
rjbaqwb (25)
ibhzmtf (10)
kqglah (95)
hwmegb (845) -> xmlzuy, nehvflm, rnpwyut
sfhrl (240)
fbxcht (284)
xmlzuy (90) -> tspxgun, ppgvqkj
npsgry (85) -> pdttnl, aqzkz, negvvn, blivyc
kxbjrca (55)
jrtqzng (12)
tcgqf (64)
rcmogxy (169) -> xbxnqfz, lkipow
gvfgvtd (124) -> vdymnhw, twyuae, fjhgrk
brzgxi (588) -> untbk, nawhukx, pelersw
cxfgjp (57)
xxqaj (250) -> irsxut, hmdmy
tldocc (42)
icdcn (73)
jtmhpm (44) -> cynginx, pjgwz
tdtiqm (135) -> hymwone, oejnh
qybpba (125) -> elknfln, ctmtk
sozke (24)
uvnmx (9)
hcovonm (56)
yzpxkx (62)
jyfkl (89)
kdhmnh (27) -> uljmqrb, ynxvst
dajvk (245) -> abjhq, qkdikgs
rwvvlbx (69) -> zligfrr, ttmotv
skrlqr (217) -> ibhzmtf, xodpco
ugpaod (27)
gxtabbr (85)
ipqome (26)
dattu (87)
zxozizh (96)
hgtwnxu (12) -> mtkquru, qdzefux, wccvu, qrnztia, etblz
zlkaugz (7) -> uyxisy, faifx, njiof, prkspdn, lovxjut, fatahc, kxxqxm
auawgd (153) -> vnuwn, hugzzwo
ehynzhf (99)
kvrbtlv (1024) -> wkennss, lnotuxj, wbzccs, hlijr, gkvdu
xyvst (196) -> upksvnf, rvdntii
okzaj (208) -> rgyofuq, bdzqyu
rsvtgxk (32)
thzgmn (33)
fxjooi (12)
extfuy (291) -> tnvblm, ljxeb
hazdl (58)
zisnz (66)
ukxuw (66)
mllmqhl (90)
hihvghh (48) -> kbyhru, xkyjdv, okzaj, dsqvto, sfhrl, trjerm, ocatfcc
xodpco (10)
fkqlr (94)
anhrt (14) -> jntmriy, mllmqhl, rmdui, tuorl
mytpi (432) -> inthrl, ffcivin, auijtpl
zvctpo (45)
ttmotv (84)
hftkbw (281)
zijedtv (86)
sksjqz (277) -> zghku, skykdl
vpvgnt (10)
odqxcfl (93)
qfequa (14)
tnvblm (7)
gkfxnzo (17)
pkfyhk (58)
kuypvuy (67)
uhavg (1034) -> aqjrxbd, aafpdpe, eoluf, opbjmvf
acxrgal (287) -> jholt, rqwnb
scengkj (97)
taausp (47)
rxfnzf (18)
uljmqrb (67)
zbvvekj (67)
zwzhv (270) -> yxpzp, pzwxz
gelpv (17)
kunxx (67)
etblz (273) -> dpevfm, kojrycd, lhbuca, jsdqcw
xqfwvbf (20)
ghiqkm (192) -> onwpfb, amqvafo
mfdhdz (99)
fdztdbr (1063) -> sqzdg, hlcre, uyiaqu, usttmag
opnqtf (10)
fsqkr (165) -> jggsgh, xwtls
qrriz (35)
dtvjn (1287) -> gvfgvtd, khajtz, hkyiv
xsyepmg (35) -> camosg, gxtabbr
khykj (37) -> jfnfq, fkqlr
pduyk (82)
aqzkz (55)
merswry (32)
wevnd (64)
blukof (37)
fzhncm (327) -> qybpba, pwtlh, gbywwf, ymbtxzb, dwmkyes
nbdewmj (22)
hmdmy (13)
slnbq (78)
ozkrca (78)
vnoztu (96)
eksshr (914) -> chcsjda, udoabw, fuopub
fnzboe (14)
irsxut (13)
qvyqnuk (132) -> wfmql, rxrayit
ewgjf (39)
kdcgzbw (75)
bbytzn (1597) -> lqwwuqk, shypdye, javnv
ljxeb (7)
vkuvc (78)
kbyhru (58) -> eidhz, lnxtx
cigbnvp (37)
nubyqxj (56)
mtlapd (73) -> veeinqe, nlbnj, jadnvpr
feiowiw (1956) -> zcibgd, chpsgen, slimx
pdfjuw (71) -> fllyd, ghdqy, vzcvxt, keesuec
vrcfi (20)
jggld (83)
wrsdsa (7)
kmzeahn (178) -> gkfxnzo, fiutgke
elknfln (6)
kxbclr (30)
wrrwam (180) -> scengkj, vizehnk
hlfgoa (111) -> wfgammo, rolegtf
uyxisy (566) -> vgicm, mnpow, urnnskw, rcmogxy
brtvs (188) -> ftumhcp, xkdua
jvyscs (126) -> smwdyt, ttegw
jwenagh (25)
hlijr (238)
zghku (22)
ykqcpiv (129)
dpmsnm (971) -> mifrxb, fdpsrru, mqvstxt, rxarqvt, vbypq
vgicm (113) -> rvwtrl, mhbhg
izjxyb (37)
bfanbgh (128) -> arfft, xfvfo, nitrl
hkykap (26)
cpbxfaf (11)
wrbqnx (39)
pwtlh (63) -> izjxyb, kzdxtck
tfpqwb (48)
htkhsaa (74)
fvdsi (40)
iwexk (50)
mtkquru (70) -> mdcnazp, ymrkr, gehqj
pxbjhvu (96) -> nubyqxj, bvxxoux, hcovonm, wxjuvo
jeopi (71)
oqdntf (335) -> ocwyg, afdox, axcgjhj
bveca (138)
bexmjvo (99) -> njlyt, uxupys
xteuk (74)
upllk (131) -> cigbnvp, pewlflc
lahahn (2750) -> bbytzn, fzvctf, utnrb
ycpff (564) -> qgyngw, hwhleil, obumrhe, rgzkfeq, qddkwld, nykzm
usttmag (266)
axcgjhj (291) -> ddroz, ilmvjcn
tdmpe (77) -> buxlsok, ufense, klkyckz
kchcxe (96)
fkksmck (11)
fzvctf (85) -> xgydg, hgyhzc, pqqxhy, qadkf, nsxfciq, gbuhi
mqwdr (2656) -> kvrbtlv, uhavg, tsndvs, ycpff, yadfos
pulsq (84)
giugg (141) -> fieeic, uocco, msjyqjc, xrvdagj
dgdeleb (35)
qyixlaf (25)
wrbrkm (193) -> hdjgig, brxrm, nkhiz
ddpua (95) -> fspnagx, tqmkur, xwfnl
eoluf (39) -> gjqcj, uxzazjg, wevnd, laepzgh
kgfeyyg (45)
ovqpta (602) -> hbjiz, wbrop, ihyawsa
kqkyaey (25)
uigna (14)
qulqh (51)
kdwsl (96)
fkurfvl (15)
auijtpl (44) -> kdtiuq, ijnvdm
wzdgidb (10270) -> xqqgyu, osydb, mytpi
ihyawsa (77) -> ocztn, eiacrfj
bmiqc (9)
urnnskw (5) -> zdsag, pntxt, hupbun, utxkvw
gbhssic (63) -> smguzlg, mfkfr
enxsaag (71)
ysuhs (82)
lxnqzpf (63)
mjwsaam (311) -> rxfnzf, qxgwwc, flxoy
ghbfbn (86)
iyhde (95)
clqri (96)
eoyji (17)
ciwjgw (95) -> fdztdbr, miymv, qwmvf, mzzmpgt
motddh (44) -> ilmqyc, nmfdw
glbhpwz (58)
lpuutn (161) -> mruemdv, chlofj
pcvfnve (58) -> ssneqxd, arizdt
ucefyhu (53)
hymwone (55)
peoneex (89)
mzzmpgt (1159) -> qnmuc, jtmhpm, gxrmso, gfsmrr
mpesve (308) -> ipbhoko, ddivge, ihvae
zwfoos (8)
pewlflc (37)
qxgwwc (18)
kjibzax (32) -> aejrdpp, qgaohbj, oozzs, tdtiqm
agifkpl (75) -> ucefyhu, jfccr
tkhbr (104) -> ipqome, ohwwaa
wcqwomp (34)
vvxmua (54)
zbcwm (124) -> dlsayg, wuhui
avrjyy (25)
hwhleil (86) -> lxnqzpf, nhgdduv, tpxrpfd
eiacrfj (95)
vdoqb (94)
paokema (52)
mhoofw (95)
diovwj (29) -> hwmegb, bfanbgh, tawdmir, ovqpta, thfdorc
inuxln (11)
snllz (103) -> ykztsh, qmzcp
kuvzyp (29)
ocdsfd (59)
qxwsk (320) -> kmwhbm, rsvtgxk, jkqnf
rmvgczw (1744) -> nuqlt, qvyqnuk, ttdeu
fdpsrru (24) -> ntzgern, kuypvuy
kdgcv (96)
iiropvx (6)
uocco (45)
prkspdn (380) -> lnpng, ghiqkm, wrbrkm
txmua (78) -> zisnz, xqdpgzt, ddjyphd
yswzfg (73)
biydd (170) -> modlepu, ocdsfd
clkduv (60)
zligfrr (84)
mdcnazp (77)
cwluofv (52565) -> feiowiw, zlkaugz, smamg
bavhyuz (7693) -> ijibo, ncpzhu, uqiwwa
zscii (59)
wtfjqnx (24)
ucorqrv (122) -> didkxzb, gozty, ezimk
yxpzp (73)
lqmoz (232) -> qyixlaf, jwenagh, nfrbj, twsvvzh
wqcpszg (99)
yyqvf (220) -> irjtkb, mzsoo, rjbaqwb, mxigb
dbtzr (34)
lshcpil (52)
bcxexao (81)
osydb (930) -> htkhsaa, cfkcj, xteuk
zskvah (84)
rvwaido (283) -> oyxlg, uhbka
wfoili (18)
ptzanxy (113) -> uymxxd, vxcjbsi
arizdt (22)
bbupp (71)
kkdvdz (97) -> baqqex, ikhbgx
jniuewa (39)
mdhduoi (262) -> zfnxo, mxaoa, zfrzbb, kkktvk
tmtqgn (108) -> eztix, gufoi, fkzwy
rsnptie (198) -> lausf, pcvok
htwyil (133) -> ocopf, eddcns
ttegw (22)
ayloijg (188) -> pkwfv, merswry, klrrpn
bylpn (93)
jektxhw (456) -> lsfjnsb, cryxpp, ffvtymw, lncbnc, zbcwm, uufted
hlcre (59) -> efszdn, adnrrap, koacic
rvwtrl (50)
lhbuca (7)
xgydg (163) -> jgvzkp, dgwely
ddivge (5)
xkqsn (29) -> umdspul, japznn
irjtkb (25)
bfhoskf (69)
ttdeu (88) -> hpovffo, ulzbyy
utnrb (538) -> jmrywkk, skrlqr, gbhssic, bxbaua, rwvvlbx, fftxfs
hkyiv (45) -> iyhde, mhoofw
itfjcv (85)
xfvfo (41) -> clqri, fdvpljm, kdgcv, kdwsl
jkqnf (32)
esxiq (174) -> gbziz, thzgmn
nazoxxl (61)
gkvdu (138) -> gicaag, iwexk
hejlvq (346) -> sksjqz, lnrnk, pjegzrx, ovcgnvp, zjiaam, giugg
azzfba (86)
kosdbim (21)
bjfmsgp (81)
cyizx (90) -> kiflapm, fjbvj
viockjp (9)
nsxfciq (215) -> wfekn, cdnagg
cxhms (103) -> iekhet, ljcnfds
nmfdw (47)
mxumuj (12)
tawdmir (32) -> gnamu, ppptkjy, qnsnqy
uhbka (11)
vxzowjy (9) -> gfrqgpm, vfsdg, ltfanj, vvxmua
rvdntii (8)
xoseld (44)
zjiaam (185) -> dbtzr, ortdyy, jbsdgwa, dtqejc
qffvjvy (20)
nhgdduv (63)
ddroz (7)
rghhbxs (58)
mhzvara (240) -> rrizdbi, ebjqfgp, zvdii, vrfkca
vnuwn (45)
cdnagg (48)
xbypzyz (354) -> wdvmq, bcqcl, biydd
flxoy (18)
miymv (47) -> qxwsk, onrbqjg, lgwut, zwzhv, kgsyd
onbize (62) -> djpkm, ucqgh
ymjhqjw (31)
zcibgd (41) -> wrrwam, xoqqhw, izcxju, vqtknqo, anhrt, cswrj, blfzhbb
rgyofuq (16)
zbuar (48)
amsxxe (220) -> plzvkk, ugpaod
blfzhbb (254) -> clkduv, ujdishy
vilcpj (17)
smguzlg (87)
qwmvf (870) -> vxzqqkt, vnantj, qrxvlk
ygqyizj (17)
aafpdpe (94) -> nbxepbg, atwwiy, pwzfoy
ykztsh (89)
bfrlxk (99)
iabco (207) -> fqmjnw, tqjoo
bktiekj (78)
kwkcos (62)
jggsgh (91)
xrvdagj (45)
bspsg (188) -> vzyut, fjueeps, vilcpj
dqaum (33) -> ugjmo, nhpvc
eujhcc (68)
tqfnnek (60) -> gwuxmq, spjtt, rysldfw, aqdba, mpesve, iabco
efszdn (69)
uqzisq (10150) -> emqcvc, blnsa, wcehmi
nynxxb (112)
bkpka (85)
sizgye (12)
wgtdln (35)
yzdou (21)
ortdyy (34)
gogsic (67) -> dfzlxba, gmrktc
fspnagx (63)
laxqy (45) -> nuoxnzw, ehynzhf
sfmvh (72) -> jeylva, uicohi, pxbjhvu, mhzvara, irmjpg, yyqvf
hlctdjw (53)
ynxvst (67)
aiyvkt (70)
rsaruxl (37)
mruemdv (14)
riqqep (21)
mnpow (162) -> eoyji, ayslth, ygqyizj
iclynp (706) -> pcvfnve, gbnmi, cyizx
tsndvs (79) -> rvwaido, npsgry, hlfgoa, criaedy, hohun, extfuy, acxrgal
gmyydys (69)
xbxnqfz (22)
ujudb (77)
vqpzey (1876) -> mjntxj, rupou, xbypzyz, brzgxi, toprb, gqmqt, psyroai
ivlxyu (68)
jeylva (148) -> ibzlhq, rahuwnt
xpormy (97)
zlffm (6)
ulzbyy (44)
trjerm (156) -> yzdou, riqqep, rrlifdx, kosdbim
wbzccs (70) -> pulsq, zskvah
xwfnl (63)
nbxepbg (67)
fatahc (851) -> lpuutn, aemnj, fpbxkb
dzyvcxt (142) -> wrsdsa, zledwkk
asafmi (51)
puxzdr (95)
skykdl (22)
avxjqab (87)
rowhly (47) -> kdcgzbw, fpzba
lqwwuqk (118)
rqpbxi (145) -> kmpdpy, kimfdue
ffcivin (170) -> tlzng, fwfbtcw
zoibnsq (8) -> wzdgidb, imtxkez, uqzisq, mqwdr, vcezyqj, usfiw
xsiklw (38)
ucwwc (78)
opbjmvf (63) -> dbkzlc, sbaeoqo, hazdl, rghhbxs
luzuu (72)
dbkzlc (58)
jgvzkp (74)
kryid (199) -> tenjus, gocurcy
hdahal (81)
fjbvj (6)
ajjyqz (14)
fftxfs (155) -> wqljugh, sjlwjcc
vkkwtq (61232) -> buvuq, diovwj, decklvy
xqqgyu (16) -> fbxcht, uyxpx, ddpua, ayloijg
hohun (305)
cwthmnc (82) -> wmciqdi, tdmpe, wiqjl, gnmudrh, mjwsaam, fgqxuig
veeinqe (13)
gocurcy (74)
uxupys (65)
qjipfjv (58)
wgarj (35)
mceul (202) -> wtfjqnx, rpadzt, grupgc
ohwwaa (26)
fieeic (45)
urawf (88)
fjhgrk (37)
axjaxn (78)
gunuriu (73)
uetcsjx (52)
bwbufij (35) -> lshcpil, vzvwks, paokema, uetcsjx
ppptkjy (97) -> vlwnw, ivksd, etzocl, akvov
agiybx (257) -> dmyxvek, cshts
oziwk (55)
yvedw (88)
gjlsrq (84)
nehvflm (98) -> bhezu, plcqz
rlvxk (53)
eiysj (69)
cynginx (99)
lefse (51) -> jyfkl, peoneex
qfabag (12)
ffvtymw (204) -> hcywt, ttvyvv
ayslth (17)
rladyxh (78)
rnpwyut (170) -> zwfoos, urnycch
mxaoa (32)
ufense (96)
atfrn (35)
qrmkrs (94)
javnv (48) -> atfrn, wgarj
inthrl (80) -> usfag, usvvacs
ljcnfds (68)
rmdui (90)
njiof (743) -> zhqnj, ptzanxy, khykj
zqqxw (17)
zbjhd (12)
kimfdue (42)
vqtknqo (192) -> jqjyspz, dkxedzu
gmrktc (57)
lbroca (46)
kdtiuq (98)
hkhvjq (51)
ohdwce (54)
deusrct (41)
urljsxt (64)
mjesxf (74) -> zbuar, tfpqwb
qdeybxh (51)
kxxqxm (1330) -> xoseld, xpxbgh
ivohs (91) -> hlctdjw, rlvxk, ovhxqx
izcxju (176) -> ybwjsz, bfrlxk
hdwpha (62)
lnrnk (321)
vybrd (42)
kiflapm (6)
icdyrl (39)
fpbxkb (53) -> hxlve, ivlxyu
qnsnqy (310) -> gddaubt, rnnmuk, kjauj
zazlcg (68) -> nkgayde, eiysj, yheomy, xpbro
inriw (99)
jpsejb (26)
gufoi (16)
uicohi (296) -> frqiho, bnnfxqe
rxarqvt (58) -> avrjyy, seeqovh, gmdwhcy, kqkyaey
yadfos (1659) -> ysqwf, zkfwc, bqusn
gozty (13)
ocatfcc (240)
vzcvxt (54)
xochi (195) -> xdohu, lbroca
lddqu (20)
dmyxvek (7)
didkxzb (13)
hpdegx (99)
tlbakdh (7) -> vnoztu, lkozg
vvsgr (332) -> pulpbaj, mjesxf, jvyscs, pctst
avufn (28) -> urljsxt, gurmk
faifx (1004) -> rpywck, bveca, motddh
chlofj (14)
zygpcpd (39)
msjyqjc (45)
dhdhlmq (1181) -> jelwm, mtlapd, nynxxb
knczsg (51)
tenjus (74)
ocwyg (217) -> cjgtcao, tiedml
zzqwyx (62) -> vdoqb, qrmkrs
zdsag (52)
rysldfw (26) -> vyrwv, wqcpszg, mfdhdz
vfsdg (54)
pgigk (86)
tytufo (67)
bqusn (15) -> itfjcv, bkpka
gmdwhcy (25)
wqgini (563) -> xochi, xdfyw, pdfjuw, ujtmmb, dajvk
iynmj (95)
umdspul (71)
qcpdn (31)
gddaubt (49)
colwnyd (141) -> fkurfvl, frkzri
nuqlt (64) -> rfzyvg, dirdh
qgaohbj (81) -> nfefd, ysuhs
sxuafke (250)
efvcgxy (51)
kmpdpy (42)
finmnfn (6)
ohcob (901) -> rggrduc, fbnmdsm, xljdooj
bxbaua (63) -> ynodbxy, tceqj, necuat
lkozg (96)
yzahca (62)
vbypq (88) -> dgdeleb, wgtdln
lkipow (22)
mqruxqs (135) -> eujhcc, giuonbb
nitrl (425)
lnpng (70) -> pkhkeva, lzdzs, bfhoskf, vcdrqps
nhuuo (70)
nkvxvrf (12)
beoww (22)
atnshbm (58) -> taausp, unikoz
ftumhcp (12)
kojrycd (7)
lyoaqtx (184) -> gbkfxbj, xxqaj, txmua
ojwlkyk (23)
untbk (28) -> rqqirx, ftlrjo
bcqcl (278) -> emwqaz, zuruj
tpxrpfd (63)
vxqvj (58)
zfnxo (32)
klrrpn (32)
mlzxc (51) -> qxqzzw, zxozizh
porhb (240)
pelersw (70) -> nhuuo, tlitf
fpzba (75)
qgyngw (121) -> jieqymv, ujudb
negvvn (55)
nhpvc (86)
wbrop (233) -> xnfjw, ynbhq
fgqxuig (275) -> qjknns, kxbclr, uwlpeon
wmciqdi (335) -> opnqtf, ydzdome, gdjawl
laydujd (99)
vuqlmx (932) -> tlbakdh, daaexz, maokl, owqupte
zopkd (22)
azsiin (69)
hgyhzc (311)
nlbnj (13)
ygukv (115) -> wacnhz, kgfeyyg
gxrmso (242)
jfccr (53)
sfyps (20)
deargsb (11)
dqxvm (67)
mqvstxt (134) -> jrtqzng, xgelkov
twsvvzh (25)
qrnztia (145) -> bktiekj, yagjnwy
rnnmuk (49)
qxqzzw (96)
nawhukx (188) -> fkksmck, deargsb
tiwaeim (98)
iwrph (77)
feyiw (20)
akvov (90)
wacnhz (45)
mhpsnlv (93)
yfrcezm (95)
dsqvto (207) -> cpbxfaf, inuxln, bolsi
rhfpsr (55)
gnamu (397) -> pudsuxc, lddqu, qffvjvy
buxlsok (96)
ebjqfgp (20)
vdabfab (73)
memsb (10)
nkotu (29)
rctutb (98)
dlsayg (66)
megix (13)
nkgayde (69)
zfrzbb (32)
whdgk (73)
gnmudrh (331) -> zqqxw, uagtb
chpsgen (2051) -> irckle, epxtul, atnshbm, ostpegy
hyjba (82)
mcsoi (10)
uyiaqu (98) -> gjlsrq, ilrkhhd
bdzqyu (16)
necuat (58)
uymxxd (56)
qdzefux (139) -> hdahal, bjfmsgp
zqega (18)
jelwm (60) -> hkykap, jpsejb
lcpbmc (212)
nuoxnzw (99)
lpogx (65)
maokl (171) -> xdxiemt, ajjyqz
fwfbtcw (35)
ostpegy (60) -> rfvtvw, hzain
uqfiwz (29)
fllyd (54)
ntzgern (67)
wfmql (22)
hugzzwo (45)
oxjor (87)
ncpzhu (83) -> loaex, qoamv, rnfox, xsyepmg
gzwkbw (123) -> efvcgxy, knczsg
usvvacs (80)
cptmwf (75)
xdfyw (104) -> yafzoj, nazoxxl, jnack
ijibo (390) -> xkqsn, colwnyd, unehvbu
nykzm (275)
wxjuvo (56)
obumrhe (275)
fwapzg (12)
uvprg (10) -> qhavltn, yswzfg, fjwfhq
klkyckz (96)
koacic (69)
ihxivjd (902) -> rsnptie, tollmm, mceul, tfjzhz, amsxxe
lausf (38)
sakilbi (57)
gdbapcx (25)
wqljugh (41)
zvdii (20)
wdvmq (81) -> gkyvjtj, azsiin, gmyydys
aemnj (107) -> pvthg, deusrct
smamg (5382) -> hgtwnxu, eksshr, dhdhlmq
tqjoo (58)
abkzl (24)
keesuec (54)
soguk (98)
rnfox (71) -> tytufo, qsoybe
xdohu (46)
bvxxoux (56)
decklvy (1050) -> umnhed, wqgini, tqfnnek
sakwdmk (138) -> xpormy, nhhvktp
ezimk (13)
bhezu (44)
dfzlxba (57)
xypefbg (73)
tfkse (189) -> zbvvekj, kunxx, dqxvm
vcdrqps (69)
fmvna (260) -> sozke, pgarna, abkzl
fyzadg (18)
blhurw (51)
rolegtf (97)
jmrywkk (237)
kqcmyr (301) -> uyhqy, ojwlkyk
hpovffo (44)
mzsoo (25)
tuorl (90)
bzlttq (73) -> hdwpha, yzpxkx
uozna (81)
qznfyv (12)
xpxbgh (44)
abjhq (21)
criaedy (179) -> vybrd, jprgu, tldocc
amqvafo (77)
vckadf (8)
schbl (6)
veujpah (14)
vrqgow (95)
qoamv (165) -> xqfwvbf, gihhi
tlzng (35)
dkxedzu (91)
vcezyqj (8443) -> luxlkxu, dpmsnm, yxfyvw
ipbhoko (5)
krhtjha (34)
xktot (268) -> ewnboyh, sesui
lscpgcs (296) -> fxjooi, qfabag, nkvxvrf, cjyrih
kaursj (1519) -> kjibzax, lyoaqtx, iclynp, jsgvv, fzhncm, vvsgr, ohcob
kswmjp (93)
rpywck (36) -> asafmi, tkneufh
wiqjl (209) -> zygpcpd, vtprv, wrbqnx, jniuewa
wfekn (48)
tvshylj (69)
qkdikgs (21)
plcqz (44)
wccvu (169) -> ukxuw, thnxnda
pdttnl (55)
xkuubv (35)
nhhvktp (97)
qjknns (30)
ltfanj (54)
pulpbaj (28) -> bbupp, jeopi
xcobqnc (65)
aqdba (167) -> slnbq, axjaxn
qadkf (32) -> odqxcfl, kswmjp, bylpn
vrfkca (20)
fdvpljm (96)
qhavltn (73)
niixavl (43) -> siyms, tiwaeim
ieuus (79) -> jenzlcn, kchcxe
mfkfr (87)
etzocl (90)
pgarna (24)
cjgtcao (44)
ctmtk (6)
rrizdbi (20)
bltjqky (8)
ilmqyc (47)
gfrqgpm (54)
titde (75)
jsgvv (368) -> btvxwyj, kdhmnh, ucorqrv, uoxqwap
afdox (41) -> gkcpihl, yvedw, urawf
pntxt (52)
pzwxz (73)
btvxwyj (81) -> xxjcew, fvdsi
frqiho (12)
xkyjdv (44) -> soguk, rctutb
sqzdg (176) -> xrxabjj, zvctpo
ymbtxzb (19) -> qdrbdcf, nhnwqgh
slimx (1283) -> xktot, zazlcg, lscpgcs, zdrbia
eebqhug (83)
azmknz (35)
fbnmdsm (37)
laepzgh (64)
yhmavn (70)
japznn (71)
xsjptl (75)
pctst (154) -> bltjqky, vckadf
khajtz (111) -> yzahca, kwkcos
gbkfxbj (276)
kozlucm (85)
jprgu (42)
rggrduc (37)
oejnh (55)
ugskjw (17)
baqqex (54)
vxzqqkt (419)
mzvyddo (788) -> brtvs, kmzeahn, onbize, cuikvge, lcpbmc, bzhnu, xyvst
eddcns (53)
rfzyvg (56)
ctnckd (10)
kjauj (49)
plzvkk (27)
irmjpg (206) -> cxfgjp, sakilbi
lozmiv (59)
shypdye (118)
pkhkeva (69)
lbrknfc (14)
dtqejc (34)
jholt (9)
kpjzc (93)
xwtls (91)
zhqnj (225)
cjyrih (12)
chcsjda (201)
uagtb (17)
uyxpx (166) -> zscii, lozmiv
vewew (13)
ivksd (90)
yafzoj (61)
ybwjsz (99)
pwzfoy (67)
ghdqy (54)
sjlwjcc (41)
iqwjlgh (6)
gbuhi (243) -> wlqagku, wcqwomp
bpbfd (25)
mxigb (25)
lzdzs (69)
pyavtyz (239)
xdxiemt (14)
cryxpp (31) -> cptmwf, xsjptl, titde
zkfwc (81) -> pvxvvv, fldjrj
ujtmmb (141) -> xypefbg, vdabfab
emqcvc (1138) -> wfoili, zqega, fyzadg
gvupyd (129)
twyuae (37)
ddneaes (40) -> icdcn, gunuriu, whdgk, gkouyvq
vqijdaj (68)
ttvyvv (26)
