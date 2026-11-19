.class public final Lcom/linkplay/lpmdpkit/LPPlaySourceType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BaseSuffix:Ljava/lang/String; = null

.field public static final ExtLocalPreffix:Ljava/lang/String;

.field public static final ExtRemoteLocalSuffix:Ljava/lang/String; = "_RemoteLocal"

.field public static final LP_ALDILIFE:Ljava/lang/String; = "AldiLife"

.field public static final LP_ALEXA:Ljava/lang/String; = "ALEXA"

.field public static final LP_ALI_RPC:Ljava/lang/String; = "ALI-RPC"

.field public static final LP_AMAZONMUSIC:Ljava/lang/String; = "Amazon Music"

.field public static final LP_CALM_RADIO:Ljava/lang/String; = "CalmRadio"

.field public static final LP_DEEZER:Ljava/lang/String; = "Deezer"

.field public static final LP_DEEZER_2:Ljava/lang/String; = "Deezer2"

.field public static final LP_DOUBAN:Ljava/lang/String; = "Douban"

.field public static final LP_DUEROS:Ljava/lang/String; = "DUEROS"

.field public static final LP_IHEARTRADIO:Ljava/lang/String; = "iHeartRadio"

.field public static final LP_KINDLEBOOKS:Ljava/lang/String; = "Kindle Books"

.field public static final LP_LINKPLAY_RADIO:Ljava/lang/String; = "Linkplay Radio"

.field public static final LP_LOCALMUSIC:Ljava/lang/String;

.field public static final LP_PANDORA:Ljava/lang/String; = "Pandora"

.field public static final LP_PRESETSONGS:Ljava/lang/String; = "PresetSongs"

.field public static final LP_PRIME:Ljava/lang/String; = "Prime"

.field public static final LP_QINGTINGFM:Ljava/lang/String; = "Qingtingfm"

.field public static final LP_QOBUZ:Ljava/lang/String; = "Qobuz"

.field public static final LP_QPLAY:Ljava/lang/String; = "QPLAY"

.field public static final LP_RADIONET:Ljava/lang/String; = "RadioNet"

.field public static final LP_RADIO_PARADISE:Ljava/lang/String; = "RadioParadise"

.field public static final LP_RHAPSODY:Ljava/lang/String; = "Rhapsody"

.field public static final LP_SAAVN:Ljava/lang/String; = "SAAVN"

.field public static final LP_SIRIUSXM:Ljava/lang/String; = "SIRIUSXM"

.field public static final LP_SOUND_CLOUD:Ljava/lang/String; = "SoundCloud"

.field public static final LP_SOUND_MACHINE:Ljava/lang/String; = "SoundMachine"

.field public static final LP_SPOTIFY:Ljava/lang/String; = "LinkplaySpotify"

.field public static final LP_TIDAL:Ljava/lang/String; = "Tidal"

.field public static final LP_TUNEIN:Ljava/lang/String; = "TuneIn"

.field public static final LP_TUNEIN_NEW:Ljava/lang/String; = "newTuneIn"

.field public static final LP_UPNPSERVER:Ljava/lang/String; = "UPnPServer"

.field public static final LP_VTUNER:Ljava/lang/String; = "vTuner"

.field public static final LP_XIMALAYA:Ljava/lang/String; = "Ximalaya"

.field public static final SPOTIFY:Ljava/lang/String; = "SPOTIFY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/PhoneUUIDBuilder;->uuidBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->ExtLocalPreffix:Ljava/lang/String;

    const-string v1, "_RemoteLocal"

    invoke-static {v0, v1}, Lcom/linkplay/lpmdpkit/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    const-string v0, "_#~"

    sput-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->BaseSuffix:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
