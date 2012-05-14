package Acme::MetaSyntactic::donmartin;
use strict;
use Acme::MetaSyntactic::List;
our @ISA = qw( Acme::MetaSyntactic::List );
our $VERSION = '1.001';
__PACKAGE__->init();

our %Remote = (
    source  => 'http://www.collectmad.com/madcoversite/dmd-alphabetical.html',
    extract => sub {
        return map {
            s/\s+/ /g;

            # do the "n times" math, but shorten items that are too long
            s/nine times/9 times/;
            s/52 times/24 times/;
            s/FOOM FWEE BOOM DOOM DING \(12 times\)/FOOM FWEE BOOM DOOM DING \(10 times\)/;
            s/(.*?)\([^\)\d]*?(\d+) times[^\)]*\)/$1x$2/eg;

            # remove HTML
            s/<[^>]+>//g;

            # remove unsightly characters
            y/- !'.,��/_/s;
            s/^_+|_+$//g;

            # send the final result
            $_;
            } $_[0]
            =~ m!<tr[^<]+<td[^<]+<font[^<]+size=4>\s*(.*?)\s*</font>!igs;
    },
);

1;

=encoding iso-8859-1

=head1 NAME

Acme::MetaSyntactic::donmartin - The Don Martin theme

=head1 DESCRIPTION

The sound effects from Don Martin's comics.
The comprehensive list is found here:
L<http://www.collectmad.com/madcoversite/index-dmd.html>.

=head1 CONTRIBUTOR

Vahe Sarkissian.

Introduced in Acme-MetaSyntactic version 0.03, published on January 14, 2005.

Duplicates removed in version 0.15, published on March 28, 2005.

List entirely updated in version 0.59, published on January 30, 2006.
(Flavio Poletti told me that a few onomatopoeias were missing. I didn't
add them, but made the list updatable from the original list URL.
I had to cut two items that were more than 251 character long, so that
list items are still valid Perl identifiers.)

Updated from the online list in version 0.84, published on July 24, 2006.

Received its own version number for Acme-MetaSyntactic-Themes version 1.000,
published on May 7, 2012.

Updated with an C<=encoding> pod command in version 1.001,
published on May 14,2012

=head1 SEE ALSO

L<Acme::MetaSyntactic>, L<Acme::MetaSyntactic::List>.

=cut

__DATA__
# names
AAAAGH_EEEEEOOOW_ACK_UGH_UGH_MMP_AGH_AEEK
AAAK_AAK
AAEEFWOFAAEE
AAGH
AAHT_AAHHT_BLOOOOT
ACK
ACK_GAK_GARK
AGH_UGH_ARG
AHH_AHH_Ahh_THOONOONN
AHHHHHHHHHH
AHWEEEEEE_AK
AK
aling
aling_aling
AOOGA_AOOOGA_AOOOGA_AOOGA
APPLAUD_YEA
ARARAGH
ARARGH
ARGLE_GLARGLE_GLORGLE_GLUK
ARRARGH_WAMP_BLAMP_OOF_YUG
ARRARGH_YAK_FITZROWER_RIP
ARRARGH
ARRARGH_RIP_TEAR
ARRARGHNNARRGH
ARRARGLE
ARRGH
AWK
AWK_GAK_ARGH_GASP
BAHOO_BAHOO_BAHOO
BAM_BAM_BOOM_BOOM
BAM
BAM_BAM_BAM_BAM_BAM
BAP
BAP_KRAK_KIK_HIT
BARF_BARF
B_B_B_BORFFT
BBBLPLAST
BBFRPRAFPGHPP
BBLLBBLLBBLLBBLLBBLL
BEAUGH
BEEDOOP
BEEYOOP
BING_BING_BING_BING_BING
BING_BING_BING_BING_BING_BING_BING_BING_BING_BING_BING_BING
BING_BONG
BIZZZT
BLAM
BLAM_BAM_BAM_BLAM
BLAM_BLAM
BLAM_BLAM_BLAM
BLAM_BLAM_PoiT
BLAM_BLOOM_BLAM_BLOOM
BLAMP_BLAMP
BLAP_BLAP
BLEEGH
BLEEP
BLIB_BLIB_BLIB_BLIB
BLIDIT
BLINK_BLINK
BLiNK_BLiNK
BLINK_BLONK_BLINK_BLONK
BLIOMP
BLIT
BLOBBLE
BLOIT
BLOOM_BLOOM
BLOOP
BLORF_BREEDEET
BLORP
BLUB_BLUB_BLUB_BLUB
BLUB_BLUB_BLUB_BLUB_BLUB
BONG
BONG_BONG_BONG_BONG_BONG_BONG_BONG_BONG
BONG_FLADIP_FLUK
BOOM
BOOMA_DOOMA_BOOMA_DOOMA_BOOMA_DOOMA_BOOMA_DOOMA
BOOMER_ROOM
BPLFLT
BRAGHK
BRAK_GRAK
BRAP
BRAVO_BRAVO
BRAVO_BRAVO_BRAVO
BRAVO_BRAVO_HOORAY_BRAVO_YIPPEE
BREEBEEP
BREEDEET
BREEP_BREEP
BREET_BREET
BREET_BROOT
BREET_BREET_TOOD_TOOD
BRING
BRNNGT_BRNNGT
BROODOOT
BROOM
BROOM_GROOM_BROOM
BROOM_PUCKA_PUCKA_PUCKA_BROOM_PUCKA_PUCKA
BRRRAPP
BRRRNNG_BRRRNNG
BUKKIDA_BUKKIDA_BAKKIDA_BAKKIDA_BUKKIDA_BUKKIDA_BAKKIDA_BAKKIDA
BUR_RP
BWAUGHK
BWEEP
BZOWNT
BZZNNT
BZZOWNT
BZZT_BZZT
BZZZ_BZZT
BZZZT_CHUNKA_CHUNKA_ZIKKIK_ZIKKIK_FWEEN_ZOOKA_ZOOKA
BZZZT_KLIK_KLIK_KLIK_KLIK_KLIK_KLIK_GAZOWNT_GAZIKKA
BZZZT_WHiR_SCREEEEZT
CAW_CAW_CAW
CHAKA_CHAKA_CHAKA_CHAKA
CHAKUNK_DING_RIP
CHEEOMP_CHOMP_CHOMP_CHOMP
CHEEP
CHIKA_CHUNK
CHIMP_CHIMP
CHIP_CHIP_CHIP_CHIP
CHIRP
CHK_CHK_CHA_GONK_BRBBRBBRING
CHOMP
CHOMP_CHOMP
CHOMP_CHOMP_CHOMP
CHOMP_CHOMP_GLUK_CLOMP
CHOMP_CHOMP_URP_SLURP_GLURK
CHOMP_CHOMPLE_SLURP_GLUP
CHOMP_GLORK_GLURKLE_CHOMP
CHOMP_GLORT_CHONK_SHLURP
CHOMP_CHOMP_CHOMP_CHOMP
CHONK
CHONK_CHONK_CHONK
CHONK_KRAKLE_GLUK
CHOOK_CHOOK_CHOOK_CHOOK
CHOP_CHOP_CHOP_CHOP
CHOP_CHOP
CHUCKLE
CHUGA_CHUGA_CHUGA_CHUGA
CHUNK
CHUNK_KASHINK
CLACK_CLACK_CLATTER_CLATTER
CLANG
CLANG_CLANG_CLANG
CLAP_CLAP_CLAP_CLAP_CLAP
CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP
CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP_CLAP
CLAP_CLAP
CLAP_CLAP_CLAP_CLAP
CLATTA_CAK_CLAKA
CLATTER
CLICK
CLIK_CLIK
Clik_Clik
CLiK_KLAK
CLIK_RRROOOOM
CLIK_CLIK_CLIK_CLIK
CLINK
CLINK_CLOINK_BZZT
CLIP_CLAP_CLIP_CLAP_CLIP_CLAP
CLOMP_CLOMP_CLOMP_CLOMP
CLONK
CRASH
CRASH_BASH_RIP_GAZAP
CRUGAZUNCH
CRUNCH
CRUNCHLE
DANG
DANG_DANG_DANG_DANG_DANG_DANG_DANG_DANG_DANG
DIG_DIG_DIG_DIG_DIG
DIG_DIG_DIG_DIG_DIG_DIG
DIK_DIK_DIK_DAKDIK_DAKKADAK_DIKKA_DAKKA
DIKKA_DIK_DEEP_DABWAK_DOOTBWEET_DAKKITYDAK_OONT_GIKKADIK_DIK_DOKKA_DAK_DEEP
DING
DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING
DING_DING_DING_DING_DING
DING_DING_DING_DING_DING_DING_DING_DING
DING_DING_DING_DING_DING_DING_DING_DING_DING
DING_DING_DING_DING_DING_DING_DING_DING_DING_DING
DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING_DING
DING_DING_DING_DING_DING_DING_DING_GLUK
DINGALINA_DINGALINGA
DINGALINGA
DINK_DINK_DINK_DINK
DIT
DIT_DIT
DIT_DIT_DIT_DIT_DIT
DIT_CLUNK
DOINK_DOINK_DOINK_DOINK
DOIP
DOiP
DOMP_DOMP_DOMP
DONG
DON_T_WALK
DOOBA_DOOBA_DEEBE_DEEBE_DOOBA_DOOBA_DEEBE_DEEBE_DOOBA_DOOBA_DEEBE_DEEBE_DOOBA_DOOBA_DEEBE_DEEBE
DOOBADOOBADOOBA
DOODLE
DOONT
doont
DOOOT
doop
DOOT
DRIPPLE_BLIT
DUBBA_DUBBA_DUBBA
ECCH_YAACH_BARF_GAHORK
ECK
ECKECK
EEAHEEAHEEAHEEAHEEAH
EECH
EEEAAAGH
EEEEEEEEEEEEEEEEE
FABA_DABA_ZAP
FABADAP
FAGROON_KLUMBLE_KLUMBLE
FAGROOOSH_SHUSSHH_SHPISHLE_FROOM
FAGWOOSH_SHOSSH_GOOGLOOOM_FUSH
FAP
FAROOLANA_FASHUNK
FARRAPPGHT_FPFWORPFT_FFFPFWRAP
FASHKLORK
FERRAP
FERRIP
FFFFOOOOOOOO
FFFRRRAAPFT
FFPGHFTP
FIDIP_FIDIP
FIFF_FRREP
FINK
FIP_FOP_FIDDIT_FAP
FIP_FIP
FIT
FITZ_ROWR
FIZZAZZIT
FLABADAP
FLADAT
FLAFFLIFF
FLAK_FLOK_SWIT_GLAP
FLAP_FLAP
FLEEDLE
FLIBADIP
FLIF_FLAF_FLIZAFF
FLIFF_FLIFF
fliff_fliffle_florf_sworf
FLIFFLAFF
FLIFFLE_FLIF
FLIK
FLiK
FLING
FLIP
FLIP_BLAP_BLAP
FLIT
FLOBA_DAP
FLOIDOIP
floof
FLOOF
FLOOF_FLOOF
floof_floofiTy_flif_flif_flof_da_flaf
FLOON
FLOOT_THWIP_THOP_KLOP
FLOP
FLOPLOPLOPLOP
FLORK
FLOT
FLUK_GROON_GROON_GROON_GROON_SPLAZITCH_SPLAZATCH
FOINSAPP
FOOF
FOOM
FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING_FOOM_FWEE_BOOM_DOOM_DING
FOOMP
FOOSH
FOOSH_FWIZZISH
FOOSHT
FOOWOOM
FOWM
FROOM
FRUGGA_DUGGA_DUGGA_DUGGA
FUMP
FUNK
FUNKADA_WUNKADA_FUNKADA_WUNKADA
FURSH_GLURGLE_GLUG_GLUG_GLUG
FURSHGLURK
FUSH
FUT
FWABADAP
FWADDAPP
FWAK
FWAM
FWAP
FWAPADA_DAPADA_FWAPADA_DAPADA
FWEE
FWEEE
FWEEEEE
FWEEP
FWiP
FWIP
fwip
FWIP_FWAP_FWIZZAP_ZIP
FWIPADA_DIPADA_FWIPADA_DIPADA
FWiSK
FWISK
FWISK_FWISK
FWISK_FWISK_FWISKITTY_FWASK
FWISK_FWISK_FWIZZACH_FWACH_ZACHITTY_ZICH_SHAZZATZ_FWISK
FWISK_FWISKITTY_FWASK
FWISK_GLURK
FWIT_FWAP_ZOT_SWIT_FOOP
FWIT_THHAT_FIP_THWAT_FAP_SIT_THUMP
FWIZZ
FWOF
FWOOF
FWOOSH
FWOOSH_SPASHLE
FWOOSHSH_SPLOSH_GALOOOM_FSSSH
FWOP
FWUMP
Fxlgxtlkfxg
GAAH
GACK
GAK
GAPLONK
GARRARGH
GARUNK_GASPLOOSH_GARUNK_GASPLOOSH
GASHKLITZ
GASHKLITZKA
GA_SHKLURTZ
GASHKUTZGA
GASHOOK_GRUNCH
GA_SHPLUCT
GASHPLUTZGA
GASKROOCH
GA_SPLORTCH
GASPLUSH
GEEEN
GIGAZING
GING
GING_GEEEN
GING_GING
GiNG_GiNG
GING_GING_THWAT
GING_GOYNG
GING_POING_SWAP_ZIT_SHTIK_FLIK_GLUT
GISHKLORK
GISHKLURK
GLADINK_BZZZT_KLADWAK_SPROINK_FWAK_KAZIK
GLANGADANG_GALOON_GLONG_GADONG
GLANK
GLAWK
GLEET_GLEET
GLIK_GLIK_GLIK_GLIK
GLIKA_GLIKA
GLiNK
GLINK
glinK
GLINK_PLINK_GLUNK_DINK
GLIP_SHPIKKLE_GLUP_GAPLORK_SHLIPP_SPLOP_GLIT_PLOBBLE_SHLORP_GLOOP_BLOP_SKLOP_SHLURP_PLiPPLE_SLOTCH_SHLOOP
GLISH_GLUTCH_YAK_AWK_GAROOF_WEEOOOEEEOOO_BLOOMBLOOM_YAGGAK_WHAP_ROWR_GROWR_GURGLE_GLUK
GLIT
GLITCH
GLIT_GLIT_GLIT
GLIT_GLIT_GLIT_GLIT
GLIT_GLIT_GLIT_GLIT_GLOYDOIP_GLIT_GLIKITY_GLIT_GLONT
GLIT_GLORT_BLEEBLE_DURP
GLIT_GLORT_BLEEBLE_DURP_GLIT_GLORT_BLEEBLE_DURP
GLOMP_GLUKKLE_SHLIK_SHLORP_GHOMP_GLUNK_GLIK_SHTORK
GLOOCHLE_GLOOCHLE_GLUTCH
GLOODLE
GLOOK
GLOOP
GLOOP_GLOOP_GLOOP_GLOOP_GLOOP_GLOOP_GLOOP_GLUT
GLOOP_GLOOP_GLOOP_GLOIP
GLOOT_GLOOT
GLORP
GLUG_GLUG_GLUG_GLUG
GLUK
GLUK_GLUK_GLOOPLE_SPLORT
GLUK_GLUK_GLUK_GLUK
GLUKKLE
GLUNK_GLUNK_GLUNK
GLURKLE_GLOOK_GLORKLE_GLUT
GLUT
GOING
GOING_GADOING_GADANG_GLOING
GOOMA_DOOM
GORSHLE_GUSH
GRAWK
GREEDLE_GREEDLE
GRING
GROINK
GROWWWWMMM
GRRM
GRROWN
GRRR
GRRRRRR
GRUNCH_GRUNCH_GASHLIKT
GUKGUK
GURN_GURN_GURN_GURN_GURN_GURN_GURN_GURN
GUWK
GWAP
GYAAUGHT
HAKKLE_SLiCE_SHLURP_BOiL_RIP_HAC_CHOMP_COOK_EAT_TEAR_CHOMPiTY_CHOMP_ETC
HAR_HAR
HEE_DE_HEE_HEE
HEH_HEH
HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC_HIC
HiC
Hm_m_m_m_m_m_m_m_m_m_m_m_m_m_m
HO_HA
HO_HUM
HONK
HOOT
Huff_puff_Hmmmm_Ahhh_Mmmmmm_Huffa_puffa_gasp
HUFFLE_PUFFLE
HUSH
HUSHLE
ING_DING_DING_DING_DIN
INKLE_KLINK
JUGARUM
KABOOMM
KACHOO_KACHAAH_KASH_SLAPTH
KACHUGH_CHUH
KACHUNK
KACHUNK_GING_PSSSSH
KACHUNK_KKKSH
KACHUNK_SHOOK_SHOOK_SHOOK_SHOOK
KACHUNKA
KACHUNK_KACHUNKA_KACHUNK_KACHUNK_KA_BONG
KAHEEEE
KAKKAKKAKAK
KAKROOSH
KALLOON
KAPF_KAPF_KAHIKF_KOFF_KAHAK_KAPF_GAK_GAHAK
KAPLAK_KAK_PLOOF_BARRAMM_SPA_DOW_BLUKA_BLUKA_KAKA_SPLAK_BLORT_SPAP_PLORF_GADOON_BLUT_BLUT_BLUT
KAPOOOSHSHISH
KARRAK_FIZZITZ_POW
KASHOOK_KASHOOK_KASHOOK
KASHPRITZA
KATOOF
KATOONG
KATOONK
KATY_DID
KATY_DIDN_T
KAWK
KAZASH
KAZOP
KCHGGHCK
K_CHOOK
KERACKK
KIKATIK
KING_DING_PLINK
KIPF_KAPF_KOFF_KOFF
KIPF_KIPF
KISS_KISS_KISS_KISS
KITTOONG_SHKLUNK
KKCHK_CRACKLE_CRUNCH
KKCHK_FEW
KKKKKKKKKKKK
KKKSH
KKKSSH
KLAK
KLAK_KLAK_KLAK_KLAK
KLAK_KLAK_CLATTER_CLATTER_GLIKLE_KLIK_KLAK_GLAKKLE
KLAKKLE
KLANG
KLANG_BANG_KALOONG_KLONG
KLANG_KLANG_KLANG
KLANK
KLANK_FUSHSHKLORK
KLIK
KLiK
KLIK_KLAK
KLIK_KLAK_GRAK_THAK
KLIK_KLAK_KLIK_KLAK
KLIK_KLAK_ZIK_KAZAK_PLOIP
KLIK_KLIK
KLIK_KLIK_CHAKLAK
KLIK_KLIK_KLIK
KLIK_KLIK_KLIK_KLIK
KLIK_PLUF_KLIK_PLUF
KLIK_VROOM_SPOOSH
KLIK_CHIKAKLAK_CHAKLAK
KLIK_KLIK_CHAKLIK
KLIKRUNK_GLINK_CHAKUNK
KLiK_SPROiNG
KLINGDINGGOON
KLINK
KLINK_GALINK
KLINK_GLINK
KLINK_GLINK_GLUNK
KLINK_KLINK_KLINK_KLINK
KLINK_KLUNK_GADINK
KLiNK_KLiNK_KLiNK
KLINKADINK
KLOINK
KLOMP
KLONK
KLOOBADA_DOOBADA_KLOOBADA_DOOBADA
KLOON
KLOONK_KA_DOONK
KLOOONN
KLUK_GAZOONT_BLAM_BLAM
KLUK_KLUK_KLUK_KLUK
KLUMP
KLUMP_KLUMP_KLUMP_KLUMP_KLUMP_KLUMP_KLUMP_KLUMP
KLUNK
KLUPADA_KLUPADA
KNOCK_KNOCK_KNOCK
KooKooK_KooKooK
KOONG
KOPF_GAHOFF_PUFF_KAPF
KRAK
KRAKKLE_KRAK
KRAKLE
KRASH
KREEK_KREEK
KREEK_KREEK_CLANK_CLANK
KRIDIT_KRIDIT
KRIK
KRIK_KRIKIT
KRUGAZUNCH
KRUNCH
KRUNCH_KRAK_KRARKLE_CHOMP
KRUNCHLE_KRAKLE_SHKLINK_SKROTCH
KSSHFWOOM
KSSSH
KUK
KWAPP
KWEEE
KWEEK_KWEEK
KWOIP
KWONG
KWONK
KWOP
LAFLATCH
LEDDLE
MAMP_SPWAT_TOK
MAP_MAP
McPWAF
MMMMM_SMACK
MMMMMMMM
MMMP_AARH_GA_SHLOIP
MMP_ARG_ECK
MMP
MMPH
MOWM
MUFFLE
NNYEEOWNNT
NOK_NOK_NOK_NOK
NOT_A_SOUND
OGGOCK
OGH
ONNNNNGHK_FWEEEEEEEEE
OOF
OOGA
OOH
OOMP_DOOMP
OONK_OONK_BLEEP
OOOH
OOOKK_AWK
OOOOOOiiiiiiYYYYY
OOT
PADAP_PADAP_PADAP_KADOONK
PAF
PAF_TOOONG
PAK_POW
PAM
PAT_PAT_PAT_PAT
PATWANG_FWEEEE
PATWEEEE
PBLRBLPSFT
PFFFT_FRACK
PFLAP
PHLAKFFA
PHOOM
PHOON
PHOOO_PHOOO
PHWAM
PIK_PIK_PIK
PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING_PING
PiNG_THWAP
PINK
PITOOIE
PiTTOO_TFFP_THOOO_THAFF_PiTTOOiE
PITTOOIE
PITTWEEN_SPLATCH_THORK_BLOOF_THLIK_GLITCH_GLUTCH_PITTWOON_PLAF_PLOOF_SPLITCH_THUK_THAP_PLOOP
PLABLABLABLAB
PLABLABLABLABL
PLAK
PLAK_DAK_THUK_FRIT
PLAM
PLAM_PLAM
PLAP
PLAP_PLAP_PLAP_PLAP
PLAPF
PLINK_PLINK_PLINK_PLINK_PLINK_PLINK_PLINK_PLINK
PLINK_PLINK
PLINK_PLINK_PLONK
PLOIP
PLOiP
PLOOM
PLOOMPLOOMPLOOM
PLOOSH_FLAPF
PLOP
PLOP_PHELOP
PLORK
PLORK_BLUT
PLORTCH
PLUNK
PLUNK_PLUNK_PLUNK_PLUNK
PLUNK_SPLOOSH_SPLASH
PLURP
POFFISSS
Poing
POING
POING_GEEN_GEEN
POING_POING_POING
POiNG_THUK
POiNG_THUK_PINK
POiNG
POINK
Poink
POiNK
POiT
POIT
PoiT
POIT_DOIT_DIT
POP
POP_SPROiNG_GiNG
POW
PRAWK
PSSSH
PUTT
PWADAK
PWAM
PWANG
PWEEN
PWOF
PWOiNG
PWOK
PWOMPF
QUACK_QUACK_QUACK_QUACK
QUIET
QWACK_WAAK_WAAK
RAH_OOOM
RATTLE
RAWGH
RIP
RIP_RIP
RIP_SLICE_SHNIKKLE_HAK
RIP_TEAR
RIP_TEAR_ARRGH_GARRGH
RiPF
ROWM
RRIP
RRRRR
RRRRREERRR
RRRRRR
RUMBLE_ROR_FAGLORK_SWOOSH
RUMBLE_RUMBLE
RUMBLE_UMBLE_RUMBLE
RUMBOOM_BLOOMA_DOOM_BOOMA_ROOMBA
SAZZIKK
SCHKLURT
SCHLAP
SCHLEP
SCHLIP
SCHLIT
SCHLOOP
SCHLOOT
SCRAPE_SCRAPE_SCRAPE
SHHH
SHIF_SHAF_SHABAMP_MAMP_SHOMPAH_BOMBAH_DIMPAH_MIMPAH_FOMP_DABOMP_GADIFF_GADIFF_GADAFF_GADAFF_GASMITCH_GASMATCH_KABOFF_FAPADDA_DAPADDA_SWIPADDA_DIPADDA_FAP_SPMAP_GAMOP
SHIK_SHIK
SHIKA_SHIKA_SHIKA
SHIKA_SHIKA_SHIKA_SHIKA
SHKALINK_SHKALOINK_SHKALINK_SHKALOINK
SHKLAZITCH_yarg
SHKLiK
SHKLIK
SHKLIK_SHKLIK_SHKLIK_SHLIKLE_SHLAK_SKLIK_SKLUSH_SHKLAKLE_SPLAK
SHKLIKSA
SHKLITZA
SHKLiTZA
SHKLIZICH
SHKLIZORTCH
SHKLIZZITZ
SHKLIZZORTCH
SHKLOORT_THURCH
SHKLOP
SHKLORBBADORP
SHKLORP
SHKLURCH
SHKLURK
SHKWITZ_SHKWITZ
SHLOOK
SHLORP
SHLURK_SHLORK_MMM_SHLURK_GURGLE_AHHH_GLUKLE_GLIK
SHMUZORFT
SHNIP_SHNIP_SHNIP_SHNIP
SHNORKLE
SHOOGA_SHIK
SHOOK
SHOOK_SHOOK
SHOOK_SHOOK_SHOOK_SHOOK_SHOOK
SHOOK_SHOOK_SHOOK_SHOOK_SHOOK_SHOOK_SHOOK
SHOOKA_SHOOKA_SHOOKA
SHOOO
SHPLEP
SHPLIPLE_DROOT_GLORT
SHPLOIP
SHPOOOSH_HELP_FAGWASSHHHH_HELP_HELP_GLUKKLE_GLUK
SHPORK
SHTIK_SHTIK_SHTIK
SHTOINK
SHTOINK_SHTOINK_SHTOINK_SHTOINK
SHUFFLE_SHIFFLE
SHUKA_SHUKA_SHUKA
SHWIK_SHWIKA_SHK_SHHHSK_SHASHWIK_SHWIKA_SHWIK_SHASH_SHAK
SILENCE
SIT_SIT_SIT
SITZ_SITTZLE_SIZZOTZ_KRAKLE
SIZAFITZ
SIZZLE_SITZ
SKAPASCH
SKAPLUNCH
SKAPROING
SKAZEECH_SKAZOOCH_SKAZEECH_SKAZOOCH
SKLAZONCHO
SKLERCH
SKLISHITTY_SKLOSHITTY_SKLISHITTY_SKLOSHITTY
SKLiSHK
SKLITCH
SKLIZZORCH
SKLOOSH
SKLORK
SKLORSH
SKLORTCH_SKLITCH_SKLITCH
SKLUK
SKLUKLE
SKLURK
SKNIFFLE
SKNIKLE
SKNITCH
SKNOSH
SKRAK
SKRAKIT_SKRAKIT
SKRAWK
SKREECH
SKREEE
SKREEEE
SKREEEEE
SKREEEEEE
SKREEEEEEEK
SKREEEEEK
SKREEEEK
SKREEEK
SKREEK
SKREEK_SKREEK
SKREEK_SKREEK_SKREEK
SKREEKLE_GLEEP_SKRONK
SKREEYEEEK
SKREEYEEYEEYEEYEEK
SKRIBBLE_SKRAZITZ_SKRAZATZ
SKRICH_SKRICHA_SKRINK
SKRITCH_SKRITCH_SHOOKA_SHOOKA
SKROIK
SKROINCH
SKRONCH
SKROOM
SKROOOK
SKRUNCH_SKRUNCH_SKRUNCH_SKRICHA_SKRICHA_SKRICHA
SKRUNCHA_SKRUNCHA_WIZ_GA_WIZ
SKWA_BA_DAP
SKWAKO
SKWAPPO
SKWEEK_SKWEEK
SKWIK_SKWIK_SKWIK
SKWONK
SLOBBLE
SLOOPLE_GLIK_SPLORP
SLURK_GLURKLE_GLUP
SMAK
SMASH
SMEK
SNAP
SNAP_GRASP_ZIP_PULL
SNAP_KRAK
SNAP_PLOOBADOOF
SNAP_SNAP
SNAP_SNAP_SNAP
SNIF
SNIFF
SNIFF_SNIFF_SNIFF_SNIFF
SNIFFLE
SNIKKER
SNIP
SNIP_SNIP
SNIP_SNIP_SNIP_SNIP
SNiP
SNUFFLE
SOB
SPA_ZUNCH
SPALOOSH
SPAMAMP_MABBIT_FLABADAP_GONK
SPAMP
SPASH
SPAZAT
SPAZOOSH_SSSSSSSST
SPITZ_SPOPPLE_SPATZ
SPLADAP
SPLADUNK
SPLAK
SPLAP
SPLAPPLE_PLAP
SPLASH_SPLISHLE_SPLISH_SPLOSH_SPASHLE_GLISH_SPLESH
SPLAT
SPLAZOOSH
SPLISH
SPLISHIDY_SPLASH_SPLADISH_SPLADISH_SPLISHIDY_SPLASHIDY_SPLAPIDY_SPLIP
SPLITCH
SPLOIT
SPLOOSH
SPLOP
SPLORK
SPLORP_BLATCH_THWIP_BLIF_PLORF_BLAP
SPLORPLE_BLAPPLE
SPLOYDOING
SPLURP
SPMAMP
SPMAP
SPOOF
SPOOSHT
SPOP
SPRAZOT_SPRAT
SPRITSITS
SPRITZ
SPRIZAWITZ
SPRIZZITZ
SPROiNG
SPROING
SPROING_GING
SPROINGACHONK
SPROiNGDOiNK
SPROP_BLOP_BLOP
SPROWMMM
SPUKKONK
SPUSH
SPUTZ
SPUTZ_SPITZA_CHUKKUNK_CLUNK
SPWAKO
SPWAP
SPWAPPO
SPWATCH
SSAT
SSLiT
SSSSSSSS
SSSST
STAMP_STAMP_STAMP_STAMP_STAMP_STAMP_STAMP_STAMP_STAMP_STAMP
STAMP_STAMP
STEALTH
STOINK_PING
STOOF
STOONG
STOOPFT
STROINGGOINK
SUT_FLUT_FLIT_FLOT
SWAP
SWIF
SWISH_FLIBADIP
SWIT
SWIT_FLIP_SNAT_GAFLOR_ZINGO_PLOOF_ZIZ_KLAK_FAZZAT_TWOP_TONK_PLIF_FLINK_FAK_POK_ETC_ETC_ETC
SWiT_PLOP
SWIT_PLOP
SWIT_SWIT
SWIZZAK
SWIZZAT_SWAT
TAP_BAP_SHA_PAP
tap_tap_tap
TAP_TAP_TAP
TAP_TAP_TAP_TAP
TAP_TAP_TAP_TAP_TAP_TAP_TAP_TAP_TAP
TATTATATTAT
THAP
THAP_THAP_THAP
THAP_THAP_THAP_THAP_THAP_THAP
THAPLOOF
THHHUT_THHHHT
THHLORP
THIKOOSH
ThiZ_ZiZ_ZiZ_Ziz
THLBBADUP
THLIP
THLOOP
THLUCK
THLUP
THOiP
THOIPOING
THOMP_SKLUK_SPLATCH_GOOSH
THOO
THOO_DINK
THOO_DOINK
THOO_DOOMP
THOOF_FOING
THOOM_THOOM
THOOMP
THOO_PAF
thort
THOT
THUBALUP_THUBALUP_THUBALUP
THUD
THUGAWUNK
thuk
THUMP
THUMP_THUMP_THUMP_THUMP_THUMP_THUMP
THUMP_BUMP
THUMP_BUMP_KLUMP_TRUMP
THUMP_THUMP_THUMP_THUMP
THUNCK
THUTHHHH
THWA_DAP_SPLA_MAP
THWAK
THWAK_BAK_PWADAK_KLAK
THWAK_THWAK_THWAK_THWAK
THWAP
THWAT
THWiP
THWIT
THWOCK
THWOK
THWOP
THWUK
TIK_TIK_SKREEE
TIK_TIK_TIK_TIK
TIK_TIKKA_TIKKAK_TA_TAGAK_TAK_TIKKA_TAKKA
TIKA_TIKA_TIKA_TIKA
TIKA_TIKA
TIKATIK_CHIRP
TIK_TIK
TIK_TIKA
TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_TIK_TIKA_BING_CHIKA_CHUNK_THWIZZIK_ZAK_BING
TING
Ting_aling_aling
Ting_aling
TINGALINGA
TIP_TIPPITY_TAP
TOING
TOK
TOK_TOK_TOK_TOK
TONG
TONK
TOOD_TOOD
TOODLE
TOOF_THAFF_FAK
TOOMP_FWOP_FWIFFFFFF
TOON
TOONG
TOONK
TOOOOO
TOOWIT
TOOWOO
TROMP_TROMP_TROMP
TROMP_TROMP_TEEOO_TEEOO
TUBBA_TUBBA_TUBBA_TUBBA
TWEEDLE
TWEEN_SPWANG
TWOK
TWONG
TWOYYOYYOING_THUK_UGH
TZING
TZING_TZONG_TZOONG_TZWANG
UK
ULP
UMPF
UMPH
UNKLIK
URRSSSH_URSSHHH
UUUUURP
VAROOM_ROWM
VAROOM_VROOM_SPAK_BROOM_SPUT_POW_GROWRROOOM
VARROOM_SKREEK
VOOFEN_VOOFEN
VOOM_VOOM
VOOMAROOMA
VOW
VOWM
VROOM
VROOM_VROOM
VROON
VROOON_VREEN_VOWN
VWOO
WAK_WAK_WAK_WAK_WAK_WAK_WAK_WAK_WAK
WALK
WAM_WAM_WAM_WAM_WAM
WAP
WAP_WAP_WAP_WAP
WAWKLE
WEE_HAAH
WEE_WEE_WEE_WEE_WEE
WEE_WEE_WEE_WEE_WEE_WEE_WEE
WEEEEEEE
WEEEOOOOWEEEOOO_WEEEOOOO_WEEOOOO_WEEEOOOOWEE
WEEEOOOWEEEOOOWEE
WEEOOWEEEOOOO_WEEEOOOO
WEEOOWEEOOOO
WHAK_DINK_KLANK_KLING_DOINK_PLOP
WHAM_WHAM_WHAM_WHAM_WHAM
WHAM_PLAM_KLOON_BOONG_KLOONG_POONG_KAPLAM_SPMAM
WHAP
WHAP_SPMAMP_WUNK_KACHONK
WHEEAH_WHEEAH
WHIR_WHIR_WHIR_WHIR
WHIR_SNIP_WHIRR_SNIP
WHIRR
WHIRR_WHIRR
WHIRR_SNIP_WHIRR_SNAP
WHISK
WHOMP_CHOMP_RIP_SKLIK_URP_GLORK
WHOOOOOOOO
WHOOSH
WINK_WINK
WINK_WINK_WINKITY_WINK_BLINK
WONG_THUK
WONK
WOOOSH
WOOOSH_WOOOSH_WOOOSH_WOOOSH
WOOPWOOPWOOP
WUNK
Xmng
YAAH
YAAUGH
YAHHAH
YAK
YARG
YARGH
YEECH
YING_YING
YIP_YIP
YIP_YIP_YIP
YOWYOWYOW
YUKKLE_YUK
ZAP
ZAP_GING_GING_TWONG_SPLAT
ZAP_POW
ZAT
ZAZIK_KATOONG_SPROING
ZEEM
ZIK_ZIK_ZIK
ZIK_ZOCK_FOON_FIT_KLUNK
ZIKKA_ZAZZIK_ZIK_ZIK_ZIK_ZIK_ZAZIK_ZIK_ZIZZAK
ZIKZIKZIK
ZIKZIKZIKZIKZIKZIK
ZIP
ZIT_MOP_FLOOM_FAK_SWAT
ZIT_ZITZIZIZIZZZZZZ
ZIT_SREEK_SKRAK_ZIDIT_POW
ZIT_ZIT_ZIT_ZIT_ZAT_ZAT_SWIZAP
ZiZ
ZIZAZIK_ZIK_ZIK_ZIZZAK_ZIKA_ZIKA
ZLITZ_PLORF
ZOOO_TWEEE
ZOOT
ZOWM
ZOWNT
ZWEECH
ZWEEN
ZWEET
ZWIT_FAT
ZWIT_GLAP_ZWOT_TINK
ZWIT_ZWIT_ZWIT
ZWIT_SPROING
ZZIP
ZZT_CHOMP
ZZZ_GLAP
ZZZ_ZZZZZZZ_ZZZZZZZZ
ZZZZ
ZZZZ_ZZT_ZNIK_SNUFFLE_SNORK
ZZZZ_ZZZZ_ZZZZ
ZZZZ_ZZZZ_ZZZZ_ZGLUK
ZZZZOOWNT
ZZZZZ
ZZZZZZ
ZZZZZZZ
ZZZZZZZZ
ZZZZZZZZZ
ZZZZZZZZZZZ
