require "debug"

data = DATA.read.split("\n\n").map { |str| str.split("\n") }

result = data.map do |group|
  set = Set.new
  group.each do |word|
    word.each_char do |char|
      set << char
    end
  end
  set.size
end

puts result.sum

# part 2
data = data.map { |row| row.map(&:chars) }

result = data.map do |group|
  group.map(&:to_set).inject(&:&).size
end

puts result.sum
__END__
f
v
ki

krlugwajesizdptcvqh
vwuzeicrdhpastknmo
zchstrwvaxkipeoud
hvwzoetbdisrakxcpu

amc
acm
cam

ldtzbxkgp
zpbkadlqxy
xyzdplkb

wopvsltibzh
vuirlfoqzhe
hzilqovmg

hilxpyvmugzbjotqsnda
vulgophjzidqtyasmn
voilzgnqmejswydaturph

x
x
x

xuhtlimyoksvqbjwz
xtjzibvksuwlyhoqm
vxuzsojybmhiltwkdq
qwtozjmbuvyiklshx
kxryhiwuvtmalbozqsj

iutvxp
ouix
ixuv
kipbxu

aqogtkx
otqgyivamb
ouygqaet
qgnjhrosdpac
vgqomtbfwa

bfomjtvacns
smjtnabfvop
mjsneafotbv
vsntjmobfa

lo
ol
ol
lo
ol

nqfkygu
gykuqf

zc
bcyg
c
itc

dcwmainsjvqkrgtbpl
dgmawcrnklsiqvpjbt
kngcwbidvjmplrtsaq
rbpvswldcanjkqitgm
vtglipnqsmjrbakdwc

nflmv
owixltsyqkr
clzphbj
lzn
ladeuhgj

qztporeaj
qeorlbghuavx

oarwuskqcvyxdjzfig
fqrhuzvjisgwlcykoda
pfuqytkdagoimjrwvscz
uvekgjaqsfrzcdowniy

iczbrqafnotspjluex
prqblfagxuhzejw

qbkdsg
dsgkbmq
dgsbqrkz
nsgkbwixpfqd
sgqkbcd

ahgjmxbkornzqvfe
bjpxziqfoymldhrncweta

eafmcto
qtbramfkio
mtgofas

gihwmotrbkc
ckrhbmoigwt
khofbirmwtcg
whkcbgmoitr
mwtogbhckir

lzqpsr
espqi

wnckgyjbt
tcromuywblj
dqawybsjt

kgtoc
gc
fmcuzpalgqvrd
gcj

hibxpevkgr
atekbvrpwx
zeoxkbpvr
xvkbepraz

elugojtykhd
fzrdkvhye
dkjiybeh

iyxbgatjveqopls
ilpstboqjvygxae
bptrzxygeaviojslq
bejliptxagvysqo

idvfoykrmc
qsbxjemtaulkfwpizgndh

qkegfzuljyniv
rpydfujqlkgivzen
glkzejqviuyfn
vyukqbneliogfjz
efgikqajuynclmvz

vrk
kor

twhlks
kth
kthe
thkq
htxk

zdveobcgplk
vzebkpdlcog
kbpdleovczg
viokeglfdzcpby
ocvlegpbdkz

n
n
n
n
n

nwaq
wa
wa
wa
wa

xkyhuetdjrbnqcgwspfl
wtpnucdhexjgkryfslq
egryjopufdwcshntqxkl
kugdyljhesxwrctpnqf

mich
iahecm
inhmuck

kgd
xdqbwyh
gmsd

c
vcd
ic

s
e
s

yekfdgcnts
orimxgh

ungma
ongmht
ndmg

paticu
etcrxmnu
wckyjdug

xz
tmzx
xzdofn
zbx
znbx

zhsp
retfi
skdjyphbr
omvgwqcxl

mojsgnelawucyifx
noycpzrmfweqgujvxlsia
alechfxjnomiugswy

nqvabm
vsx
vksdp

mk
mk
mk
km

bnqogpwchxjvmkeuzr
nkzwhuomqbcpagxe
nbgmozupwcekqxh
zbgewmpqxckohun
kzucnqowxmghebp

gwtxncpidsqjkamo
wjegiuscmnokdqtp
tewnigmrocdqjuspk

niebjdu
luehqscpt

risdekvawtmofyjnhgzcbxp
yxqeavobjzstwnhrpugmcik

arlihzewukqpgftb
gtolifhaeszqrkdp
bteqlkgufzhirap
ieagztjqflnrkmchvpx
ypfqhdikgbztaerl

azsnduvwtxofqc
qtxwocmvp
eoxtgcbwvq
olcxwvqtk

ydpzkxialhwub
xviclpyhbdmwutz
rqepsbxwunoyghfijdlz

kwyztdvfahgl
mtakcpujrgq

lqcmey
ch
ic
cth

fhbcm
bhf
hmfb
kpfxrebdh
fbh

aehnmjrbvwscfzk
ehvjczwmnasbfk
mhjzinscwbkefav

ankegwhcj
wuodpgsmibz
wgye
gfqwtr

nmxetkjyawv
bsuvgiocrhlpdfazq

bupyxki
aixokljupb
ouxpkibzr
kxuypjbi
fqwnvukxithpb

bscvpfmhnti
aqjvxyzew

ghlpyjaz
pjnhz
npzjdh

yslmtadvrgp
agnlurt

yeclmqgnkp
zrinodcwths
lbgvnucp
bynapc
ncfj

bkyzqocdl
yldhqazrbkc
yzblpcdkq
dylqbzkcp

lxkhdtneyguj
kytqujghnxeds
cjyxhtouekdwpgmn
gtdbjxkznhuyel
dugqnajkeythx

jonkltyb
xnkltcybeo
ylokbtn
ontkbly
nojmykltb

juqkxvprfonhmasb
vkzrgdatcjlpxniub
bkprcvuxygnaj

p
z
r
z
z

pxqryf
tck

rjvlmudx
unsmxrzja
mruxjlt

yhrcbnuvdpt
ufhdrypvjn
gpdrvhnuyq
pnydrjvuh
yunhpdrv

pmohzjnbwrl
czeoyplmrbhwij
lgwbqjdsmfzvpart
zlwjnprbmk

tkljwpiho
ihjkfotlp

am
xahm
am
jma

kuwdhv
ykvhuwdmr

myhpqsvatfg
fyjtavmshpqg

fl
fl

tq
tq
uqc
kqw
kqw

x
dx
x
ml

jhcmxinpuezodalvbg
jmnyazhdvelioptsg

tzncvyqjibaf
zjvaqfnicytb

jadmbkr
dmrtlsih
drgnjxm
dmfrk

gfuaivl
erycvaso
wtpbxqzkmnhjd

e
e
e

pfawmqlvrj
hfv
fv
ohvf

xpygkrsnflzc
vkrcpgxlbzynsmwif
escpkxfazlrnyg
nyrsfgpltkzcx
fsrnpxlcykzg

cselqzvrfijuyw
yxcofwzku
zfydhcnuwp

lj
lj
lj

lrwskbqi

zbh
bzch
zbh

bfzdkepcjylq
cdepzqlybjfk

pr
c
q
e

ryjlfns
yrqlsn
nrlsy

tuwlz
tlwzu
ultwzm
luzwt
wuzltpx

maflwvsozx
qwmxeuofrvc

vlktpweyrbf
bzrelyhtwv
meljvwnyo
gqwcyldve

cgypxd
gtxfpcd
jxaph
xgtpkuf

twalnicrg
igtwrnlac

l
sl
ml
l
ml

lu
lqxd
ljmvn
lc
ldxt

dkjw
zwg
ihgw
owhg

mc
fwc
sc

skoap
gqmskncfto

wpmikqjz
zmwkjpiq
tqmjwpkiz
pwjmzisgkq
brjkqzimdpcf

wa
vxtja
at

xjlvaun
ajuvq
uohkjyeq
sprcu

jomzpauflsyndwkiqehgrxb
buwpsrehidgkjaymfzlonx
nfairoxhbvkszwepdjugmy
xhdnbkfrutjozaygwseipm

skqrhtiu
axutrdyg
zunxgrdt
rtulx
vtuglrx

fltwbmay
mtbflya

a
a
a
a
as

i
ni
i
i

kobslnqvd
ofqbpvkdig
vbolqdrjk

ctbinzxjlrmweyaqgupks
bvaxeuiqsyznwrjlgtmcpk
blcqinmegxsrzpwtukoajy

mqeuarkotb
mruxotsewk
kmrwegiobut
kneumcjdlvort

qf
fq
fq

radclnjixto
tuigaldzrxo
tvabplfheoyrix
lxoarijktw

vyhaco
aycovh
oyvhac
vcaohy

af
af
af
af

nrocs
rdypjefcx
frajcd

ezgjnudoblch
rgtnuedjlzvc
nlidzswmjcfekagxu
lnjduzqyceg
gebdluzjnrc

ohstpqcmjewk
eodshjutmn

jobvc
cifonekz

fc
fc
mkc

xep
ge

a
a
a
p

jnuzmkv
bnum
ajnsmu
knmuq
nimuywp

djfl
lfdj
dlfj
ldfj

qxdefoawjbcltz
jqlebatdnfowxzc
yizactgspvqeduljrmkbhof

p
u

hg
bghdkupm
gh
gh
gvfh

tczbmignve
gtzncvmebi
zmcvteingb
nizbmgcvet

mpl
mlp
lpm
ldmjp
epml

slmfr
urlm
lmr
rlqegimjk
plmtr

avdysumewt
tyvwemsdau
yuwmsetdva

eokxsimwqbjfzrtygpadl
dimgsbprohwzlfjet
tqrvibsawfpojlmdezg

nlbwtev
syvbntd
tbmvn

fgthm
thfgm
gfhtm
thmfgxz
tghmf

gcdal
lgvachdu
lbcagvdx
ycgdljswmqa
olragcd

fmghvbcl
hmpfovcbsyi
djlfcsmbhi
nrbuefmkcqahtwz

plbgwxzndeufjo
lhwdoxgufejbnpz
ufoxwlngebjpdvz
uezonlbfjgxwdp
kldzgfoenubwpjx

ebqpacdxm
lobyxurpe

iafnzmpdhsbvq
dhisamvqbzgnf
suivfzdbhoqanmpl
dszqbilhomanvf
qbmdsxiczvfjnha

bmxtzvunojdwy
wbvxjyztumo
jvmywoutzbx
tvzoxmygbwju
guobtymjzwvx

obfdeual
obedalcf
fldoeba
elkdbafog

huziqdycmaknstrbjwp
zpiuqnhcskarjvbydewt
kpczadnqwtrjiyvusbh
cytzsidqjwapbnkurh
qglkibzhxfajpdswuycnrt

ch
hx
hr
xh
h

vpxdhecsz
efvodzc
mvbzwedq
vrexozd

sonyemfcila
yckafemou

gyuvq
uqyzgdv

w
k
x
w

ptmuaewfqo
ivfpeqaso
taqrsepfo
qydxplfgnoae

vd
vd
vd
dv

mrly
lyurm
mxorly
elymjr

nkzdrgvw
dwzvgknr
nzkvwdr
znrkvwuld

bjgsupezhrfkciqlax
brjgckvlfsxaeuqpiz
srbxfzgpjkuqlcaie
ueapzixfbsclkrqjvg
dofbyxrlagipqsecujzk

sc
c
c
c

faeyhclsdnq
achyqsnelf
lfqmsycnahe
qnhaselfcdy

hwtbmuriagejspdc
chewjispudtrgmab
egcrhipautjsdmb
fczsirmkejxdgltuabvqhp
ntohrasmjicupbegd

ofuzxdvbw
rmptsjlnzba
zeb
ebziy

resicqjluzn
wgdyalncs

usbhypxw
wumhpxsby
hpwysxbu

djrzg
bvysdwhgz

xfjzgylensdcpt
rytgpxzjnfsdlc

pqwn
npqw
pqnw
qpnw

pe
zpweb

zp
zpo
pz
pz

pctyum
ptuhmyc
pdymtzfruc
puyctm
tupcymas

ordjynitsvcuzel
tlrnuqd
ldrxbtnfu
luwrtnkd
tndfhlrub

kduwpcyejqzf
jtchayqweizxsupkbm
pweuvyzqjrkoc

oxkmpbgwszny
oghymwnkpsbzux
bpoxngwyszmk

lgs
hg
gb

dleamc
ctlheyk
ixzjngwufco
rdcvaste

eoxkgs
segkx
akvugsxe
xsgek
kxzseg

ftinexgmraqojwszcyuhblv
lzpjktvxdgcbhqawmefysoinr

jn
ojvy
e
hksfzgtibaxc
jduq

bqgfvmzp
mxvg
ekvmgh
vtamg
matgv

e
q
q
q
q

txjoum
umkxjto
xjmtou
tuxmoj
xoujmt

s
qcsdbt
zfvsyr
tes
sm

rljihdcnaqutf
jaicdntbfhrqlou
fariqhutcnljd
frjchiaqplndutw

xrnqaho
qonxhar
nxahqro
qrnhoax

uk
ckg

bxgqc
xbceq
qbcx
qbxc

vqb
bejxq

w
wydo
ucw
wu

edtb
btdgeq
ebdt
detb

ebm
ebm
meb

uekbtqpzwhnvj
zewbpmqujrhxvdnkof
bqpjyhuevzknw
ntevbpujzhwqky

vfldtsrqapgujinoz
utiqlgsjnda
qisgaudtlkjn
aqwsdujniltg
sundgilqtaj

mxkdirtf
yfuokztxjgci
kqnfexariphbt

s
s
s
s
s

adg
dkwu
gdmk
qbdai
vorsdypn

ulz
zlu
uzl
lzu
uzl

eopktrshjvlzi
hdugpkjoia
oapkhij
biokjpmh
jokhip

mf
f
fl

yisk
kvcuz
wxtiqasko

nec
cne
nec

txzgpdojrbwkqefvh
bqwjdypxevozgfr

fihxcgw
fixhwgc
gfchiwx
cfxgwih

wigvpdnlkme
pixjcvyruheg

jvlqsdyxf
xsqfjdyle

bscgoeum
gom
qpornymgwxzdt

gtnomjcfl
nptmfhrlbo
zexilfvdymquswktaon

rwy
wrjtp
pjrx
zrag

uamtwrbkoylfe
tmuheykwrfoa
uaroktyemfw
furemtwkyoa

h
pdy
lqst
w
h

gnycb
ycang

hglvjfbkdoszupaq
vumel
cvnyxlu
wetlivnru
lecvu

hnxyebuas
tgxbhiy
wqyxhmb
jflxwbyicvh

vrxtjipzyqedl
aejplzdyqt
pljedtyqz

maerbcw
snatizdkxv
frlwauhbm

kuazhr
tahrzuk
uarkhz

mznhw
wzamfhgr
uhvwgjzqm
eidbchpmklwsto

qolj
ots

m
j
s

tydncfqwgmepx
ymfpdqxwecnt
nxecwpdfqtmy
cdnxqpfetwmy

khaoxnuweymfqrl
uvfrjlxkwnhmeaoq
rotwfqcenlxhmaubk
mflhkanowxqeur

mk
mlz

kghnsx
xsnhgk
gxnshk

grmfuzxapqtl
chyvmtzkulb

s
s
s
s

zcsa
z
zutkx
z
cz

ntpv
rnjevq
lzsuhdkco
ge

pktzy
zykq
zyk
yzk
ykqz

qnre
rdgnaswj
qrn

gylpqcro
byqehivlzuro
wrcqsoyndlf
orwpylmq

jbkwvgotfinhm
otkfjviwnbhg
gsobfhykivwjn
oiwnmfghbvkj

tlnmpbaoq
mviklan
ianml
lmajn
lkamn

skmgdvqrchelzf
vhrszlkfcmgedq

faxnsmzvirlkh
eahmlnrusxizf
qsxiglphmznarf

gzmcbsh
gcshmbz
zmbhscg
zshmcgb
zfmsbvhgc

qfalhdgcsn
nqgdhfcasl
gqhalsndcf
ncghdsaqfl
ngcsfldqah

teqr
rqezt
qtre
etrq
qrte

kcyhbfxi
ckixthb
kpbhixtc

ge
eg
ge
dyeg
eg

cwmo
cmwo
mowc
cowm
omwc

e
b
b

jvmzniyusgc
vdukmepyczl
mzucvby
ukvyzcm
dckuxzvmy

lto
ltnbke
ylugto
luzt
ltv

savfmzhpyid
aszvmhpdfy
ybapjsxmdvfnzh

tpjvwlqiko
hpqvcoamtbd

qiesufrhb
iqbzrhsuef
usbieqhfrg
hebiuqsfr

achgivjylqtsen
ijlnetryhgc

equgysxn
hadozb

ubdfvrkseaijlyonmtzcx
okbdmerusycjvfitlxanz
rijnyzlxafvudmcksebto
wsujvnkmoayclqfzbetxidr

remvgdwalqyhcjpzo
ejaczhvpgwlyrqdo
gqpwchryejaozdlv
ovgdzqpywjhlrcxae
wojhlyevgcpaqrzd

hasivzcfepyxbrwqj
btypvgxwecnmzlaqi

buvxhewzd
frhmdxbesu

sadcyb
dbys
shdrvbf

qaf
fqa
aqjf
qagfw

yw
yw
pyw
yw
yw

omwpxa
wapoxm
mxoapfbw
mpaoxw
wpmxoa

hsnypozurjbt
kmcnbuyrposhj

lvwjezmsac
wezlmajys
lmaeszjw

kxtwmrc
jkfytbcwq

orxdwh
wxetro
txrowp
efrxwo

adxtgurfel
hmvczxaokqsj

bytcwakhujns
leuthfgq
hiodgmvtu
tulrxphfz

ujbonmlqhwaprvcsitegdfkx
fvcdnozjkbugxatwshmriqepl
xisvpekqawnrlgocdftuhbjm
ulpqsjcgwhkbrftvenoidamx

azj
zadj
jaz
jza

lrqaouvdmizsybtcxj
mvhuxrsoyjli

daxg
ayudzkbge
dcgfhanlp
dqcsghwar

vacreqdl
alcedqr
lcaodqer
lecdarq

mxkzonlajhisegvrbpctyu
aigbxvdmekolptshzn
zpxmglvkbitoashne

gmxolsvyure
xjepmlgizsfbcqho

uhjvgfxrwmbolk
csityednaz

jzig
zpigjv

weixfdptkcz
fydcwxerzmkipt
cfdekwzxipvt
fzpwxteikdc

vsewfkyl
chtxidjprobn
xaqgp
rmtaqhz

vxkwjodpscmtlguaq
msugwvqpxeljyo
gifjbmpwuvoshlyzqx

vcgmuisfjnehdozxtp
muxsdnoiefcjhptvg
txuojwhpimdcfvgsen
oltnmsbfagvphiejkyuxdcr

mcdpv
dcmz
nfmdjcwsa

rcnyoxmqztghljpe
znebjrgxlyqvcshtm
ulcryhxzqntjmeg
morhwzjqcyxglten
rfzxhjniqytgceml

zavrpdbugqjk
cudkqrvpfyswm
qkupvdrtoi
uqvkldpxr

knoex
exnk
neklx

ywvntofgpjm
thwmnj
tmnshejxw
minabwxtj

nkdwr
ndruk
ndkr
rdkn
rnkdu

tixalqjdrvmoh
rigohvmjldqtxa
jqtvhmxdaliro
jimxdrqvohlta
bvlraqhdxjiotm

nsvazbjxkipo
vnzcohpfmsjigtkab
siobvzkpjan
oszbkepuvanij

nux
xn
nx
nxv

xenrcvihm
ziykhodmq
igbmfwexhuj

ktbghvudixa
vhgbcxruia
aguxbvhicr

lse
eljvs
sel

ehrygnzaxf
zlskujqycx

glof
bim
t
um

zgaehwxytro
xwgeyzcrht
ryexgwthza
rwxgyebzth
wyrzxhtaeg

nqejopzctdugmriwh
pwhtoumjrdgkezcaqn
odwymunjqepchztg
xjduamnhzoqecptwg

ejihvqaycznfdbtrpgumko
vtrjibznghamkwyqeduflop
osdmeiqranfbgythkzxvcjpu

nkaxqydlsmvz
vbjyi
bityv
rtpbvyo

qsfnjdhcobtzg
sedqjgoznwtkb
zdubspqojgnt
bwgntzjosqedl

gkoqsirndwvyuzthamfjblc
haqsvbcyumnfpgtdokjlrwzi
idvyqehnamfwoxutzkgsjrcbl
scjlmugtwhdnazbqkroiyvf
qrozykbhugviptwamnlfsdcj

kbzpdujqvtxesnhgr
wsnqjhbrdgxkvueptz
gdbukvtznpehqxjrs
rpxsehnjtgfukvzbqd
jdrkzhegbnxasvitupq

wozpasi
aoizsgpw
aojzisw
zosaiw
ioaswz

ashtecdbifwyzroqgkl
ozyrsefqhwbkcagltdi
qzocylgriwfhtbkase
oagfczsekiqbwthrly
vysribwkuagfolctqzhe

sgbvexlhokctn
cktljevhubp
iebtdxlakgcvhmzy

ropsxbqdyhzuntmekj
hgrneqzkmdotuypxb
ukxztpqwyrimdnohbe
ctvrzonqpybxmekludh
uthrpyodmwzxfeqkbn

eqig
bad

swaephtuvizdbqg
dewstalgqipvubz
zepbtmiguadsqwv
pmqdgwtayevbszui
apeuzysivbqtgdw

dstkjxubpfv
zdntjkfrbypuihq
okubftpdzjmiwhq

epbfzaygk
mpkz
kwszpi

wbhvifor
bvrhfwk
rhbwfv

ibtlvzkdpwgcu
zkvdaitqbfwgcu

mujwybpkqlv
cgqjnlhtsaxiwrmkyv

cf
c
c
c
c

irch
tfrzxku

c
c

zfeyrtlha
om

e
h
oh
pu

xtqypjhm
hmxypqjt
pztjmysxhd
xmhpoyjt
tomjphyx

nohjcgzxiswbmetrdyqvpalkfu
htgqvwsojniyrkxcmpbzlefuad

pu
up
pu
up

vdahlxznij
xakidhnl

xdyuikfgc
gyczqafpd
temcylgsd

nrfme
mnfrel

ifhpcr
cbhri
hcir
chir
crbhi

nfxemqah
xfunrhem

dgstmwf
fdkmsl

sjvrfqdxklyzucbgwmehiap
jlugpkiqhosrnbzevfmaycwd

fczn
zcnf

efsntzoldb
holnrbfesztu
zesoltfbn
ceonfzlsbt
blfkpozntse

ecuhijwsrdgptafqv
rnxcbvpkqzouiyl

vnkzqhedbaljx
ixenzovyla
lawczgvxntdfmue
jzaepnlvx

ewdcailnjhgrvx
dhjeragncxiylwv
hjxewdcgaivnlr

pw
w
w

em
q

sqbu
ipugz
cekbumy

r
r
jc
e

mh
hm
hm
mh
mh

cfpgkrnwmliohqzt
ifwhrktopnqgcml
rmogfcliqwkthnp
ickhqpwrtmfngol
nflkwqcphriogmt

ktglnawhydqbcrvizmf
kfhigbancduezmrlvy
hgdbfvyikacrlnzm
kmgczvnahriyfdljb

pagvqydfmecxjbzswhn
rzohnqtdckmsup

oc
oc
co
oc
oc

umjkfeytvzpsb
spuyeztvfk
kfzetypvus
fustzkvpye
retuikyflvnazcsp

nfqz
nzfq
qzfn
qnzf

i
i
s
i

tchebzypafxgdirlmj
bzupasgntxqfdirje

xpzrmeisqnbdhjl
qhjdmseilprbnz
nqlsipkjmhrzebd
yrjlwmensbapivqhzgd
hdrzqnsomjbplie

lfwd
cmfvrlwp
klfw
fwl
dqfwlbhg

v
d
q
fw

gbuzrneplha
euzprnqadlgh
ealguphznrf
nhabzlxrcgpue

vfpnqghusmkde
ldotwpsy

fwpvbymnzgdjro
whjepnofbdymvzr

mlg
lmg
fmgl
gml
glm

cug
dj
s

jv
tvi
eijda
hlkpnrsum

jawgleqs
cduziypmhrxfonl

edmuictzolbqvnk
vlkzngqtiuaebpcwdm
ivjumdnlqtkcezb
kemvtisdqbcuznrl

enqpkozxbmfrj
bwnqmpzkhejfg
foqpunmyckzjxbte
fjypekqbmzn
qdvpinbamskzfjle

t
t
c
t
t

fspwjzylebimvkdtrcung
zvnodtbprjfcywsexkiul
wjslpekbizadtuyvcfhrnq

zuocidaysqh
puagdlnwrqscoiy

zstfuhbocpi
btmcupshozf
zcesufhoptbrm

yjzmq
omwj

bmxdychwi
yxdriwc

yzs
yzs
zyatsq
yszc

ujmefqzrds
jusmfreqzd
edufrszjmq
esjzmqufdr
jfdziruqmtes

mdryvueb
rbyvemud
bhdyexvumr
udevyrbm
reduymvb

rolwbjs
rlnwosb

togdqxs
sxdqbtmug
pfgaqsdiety

lrfophzwysukgxm
knhuszxfcgvdmobwp

eb
e
e
epz

lxstfqrgd
xdlqfrgst
tfxgrdqsl
stgxdrflq

vyqli
fz
jkf

hg
h
h
h
h

fojxgyqhbdts
ogjbhqtfsyx
foqxgbushyj
htbqjofyxgs

nzhrvtspfomyaxkuqceil
zygjmnixvscdbuqa

d
g

nhxcvump
edzcwfsqorkb

evhncroiwxgk
cwonkxrisehv
rihwcgkvnxeo
vnehicwkxor

wfvynd
ywfmvdn
wfdvny

gnyvafikxolcprwzqs
aisnceyjqktofgrxzw

pznetaolmxgwvhsdqkrbyc
ybalreuhsnmfgkvzwpdcx
hzwmvgnpsbeckayxdlrf
epbhnkdxcjzwsagvrmuyl
drawvnebzsykgjhclmxp

ezy
zye
yez

wgdxsvhafpcjko
vxjpfkghdsolca
cohsbgpkjadvfx
hyvogcxdkjafps
avkfdcjpogxhs

eomalpgqsjnf
omqpvlejna
dvelmpquojan

wfmvjonsz
dlzfhnpsgwvcm
msnezwfv
vjbfnmswze
zfsvqmnjw

kypraeoszfbv
xiwfbtkhzvyqrno
mzdfkcvbrywo

cgibxfytavo
exyvnumapstzghkldw
vtbgqxjyfra

kywqtenrs
ryqnesktw
sntewrbkyq
qnyrwkets
ksrytneqw

bwx
bxw
bxw
wbx
dwbx

dzfhuysotiljk
rzyipfxkqjltdbsn
ysctgzeijfaldvk

gchblktyvamensjzrxdpoifw
jikpvlydfourtmcabxzwghe
clitbevyxrwkfgmajzphdo

rfjxt
rjtfx
xhtprjf
txfrgj
ntfjrx

buf
ugbf
ftu

wmly
wylmi
lwym

yihgtzf
tfszyg

p
p
p
p
p

jt
p
os
kirnmeavhd

vceby
vyebpc
bcepyv
beicvy
bcyevp

noxurmlfzqejahctpbygs
uhzrlfaqtgjecmpoxbysn

maki
ik
ixk
kei

loadfkj
ucforvjdgh
dmjtnipxsb

xedyq
yeqxd
yeqxd

ptkuhyvnegowrjxmlba
wmoreltvphkaujybxn
reqbvnlmtoxwphyjuzka

qgef
egq
heqgwsuz
geq

bkdyhs
ytexipko
kydfhqjl
wklhyf

fprgenljakhovbxsyziuqtdmwc
ckrvfhtwqslypbzdgneiuxamj
tiyzmgqdscelhujvxkrawpfbn

sbcxi
csxib
xscqbi

fcejtsavprn
tnfacejvpusr
qoscznfjlyxtampredv
vfejscptarn

bwe
bew
bew
web
bew

drikb
nkbriqd
dzikrb
kdbir
bdvlirk

ozmw
wuzr
ausw
tywci

czjyoptfnsvmqurekwix
refjtpmqvckonyxzwuis
qpixwtnfjrcymvoseuzk
vkwotrmcneujfpzsixyq
jqfopnetwcvukxzsyrmi

vaweukirgx
uagkirwefvx
wikyexdpgztsvoar
rvwxeajckimg
irwgxkheav

wkazrq
r
myr
r
hrv

iufbyeqtxnvprkcm
ryfmjtdzqxulhkgewo

kwzvfeocqdlytn
dznhcloqye
lcegqzybndujo

vxlopgns
mtk

tkdcaxf
tgkdcf
fcked
kdorspcf

hp
rhazky
qhpx

unysbohr
pukogixhmyfqb

mhpwz
zwmp

xulrhwvn
wrvghn
nhciwjorv
nwrhgv

jdkbotqayzv
lrkesigodpjvuqw
rqksolvfmidjuc

zvpbtxmnaelkfco
oavfnlmpetzxbk
lnfzkxeoamtbpv

r
nb
n
f
aok

emkwvbdfj
fjkbnveo
jkvobe
kqehbwvj
lebkvjgcxt

wsalguinytzrc
aucqgms
dacusg
uhefcgas

bhrxjvpcqwfzan
bgaxorivnszqh
ruamglqxhtsnvzb
bvhrxzqnya

raeskxt
aestk
kstgae
setka
atsek

fipmtwojskaqyxnvdche
hxzcibuolysjr

keguid
ugmkewi
xgerkhipu

ytmxvfruoabcqejidkzsgph
bokqdimgatzpcerjsyfvxu
yszvmdptexbiqcjrouagkf
fvoyekijqsxtazbudgcmpr
xamcgftivdejzqrbpokuys

uqadcpibf
bcqupa
luabcqprk
apucbqm
uocsqabp

cyhlfeqoupbdmwvzni
qwimvjuzepanflbcd

mex
a
i

odajq
qxovi
vlhoq

nmiw
wi
oiw
woyi

wxzfidlqmptsvnygeoauchj
pvyxgncdewizlstojqhmua
mtinhuavzljgpqyskoewcxd
qsphxrjgmuyaiwcznlvdteo

heqcjz
qeczhj
hejcqz
jhzqec
ezhqjwc

vjqt
tqj
tjq
tqj

prqfadzewtu
zrwadyu

lk
kl
kl

guxtnkzjalim
lzaxmikgjtnv
mgajdnlpfkxiqht

zwi
i

eygsiomnwdf
untsygjf

vq
v
tv

ngoqhlwje
jchldgqnpe
qjngrsizleh

bwlkyfdp
gbmflwhp

coiy
il
i
i

rmgloqzsfyvdjnexac
aopdyvqgsmclrxetfjn
lxnyasqodrgvmcfje

zigobnu
znkrbgpoiu
hbovinzugw
ginozubj

ljyrhtkpsnwcfbmax
bdljpxaikhrcgzeutywqvs

x
ak
gds

ytusv
syvut
ysutv
yoxgvuds
syuv

lixawndvumgojez
hmrpwfzdncyvbsqki

onqjv
vloxkhnj
ovnjd
ojnv
vojdin

rjepfiwskovacybhgnzx
dlekbnocyutvahrmzsjxwg
kgyqnwaehfxvprjzscob

vbrdic
ufwyqex

vedln
ven

msckyitxdjvauqofhrnl
dauptjysmhfxngzcvirboqkl
qlnumovjkwfdxhaiycsrte

w
xw

rxfdlwchmybezpqgntus
yqmpibrahtoxuc
yubxhcpqkitmr

xwpdj
cwjpxd
pdwxj
yjxpdw

avdxkzpobusrtymgih
fwnelcq
ncjfq

rzhbvoplisfgdknujacxq
pcbuifnsdgqaxlhvjo
gjbcpfnhovusxlatdqim

nvrozpjuaxhwdkes
wafvhsrokendxju

zdqbxmgnpcfivr
vyprdqszfubcw
cbarfuywqpdvzhsl

z
z
z
zoj
z

rglswbymhpao
abmgyslhwop
syglhmaopwb

bvaiwtlgqykcsmnjdzo
ytosacmfnhwl
antyleomuscpw
afylcnostmwp

mtgjr
gnlwt
tfhdouqpisyg
tlgew
gmvt

tungmazdvsrwhoceqpkj
fzkrhyjcsueowadmxtnp
jhrkwoescaldmtpzuxny

gctqxhvku
cqtxglhsvu
zuvgtbhcxwqr
jcquhtxgsv
uvqhytkcxg

duqaiktehfxb
extbizfudpa
tasjedcvwmgxrbfliu
inahpdxteubf

xmqga
doain
cazfrh
wptusa
jpa

okztgcxwfnbpuv
akqyzviohlfrdmbtpjsn

gq
jgqs
gq
qg

fxkws
btxfw
xewfs
ofxw
