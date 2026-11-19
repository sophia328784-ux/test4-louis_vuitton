.class public interface abstract Lcom/android/wiimu/model/IWiimuPlayQueueType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALDI_LIFE_MUSIK:Ljava/lang/String; = "AldiLife"

.field public static final AmazonMusic:Ljava/lang/String; = "Amazon Music"

.field public static final EXTALEXA:Ljava/lang/String; = "ALEXA"

.field public static final EXTALI_RPC:Ljava/lang/String; = "ALI-RPC"

.field public static final EXTDEEZER:Ljava/lang/String; = "Deezer"

.field public static final EXTIHeartRadio:Ljava/lang/String; = "iHeartRadio"

.field public static final EXTQPLAY:Ljava/lang/String; = "QPLAY"

.field public static final EXTQingtingFM:Ljava/lang/String; = "Qingtingfm"

.field public static final EXTRHAPSODY:Ljava/lang/String; = "Rhapsody"

.field public static final EXTTIDAL:Ljava/lang/String; = "Tidal"

.field public static final EXTVTUNER:Ljava/lang/String; = "vTuner"

.field public static final ExtBaseSuffix:Ljava/lang/String; = "_#~"

.field public static final ExtCurrentQueue:Ljava/lang/String; = "CurrentQueue"

.field public static final ExtCustomListQueue:Ljava/lang/String; = "WiimuCustomList"

.field public static final ExtDoubanRadio:Ljava/lang/String; = "Douban"

.field public static final ExtDownloadSuffix:Ljava/lang/String; = "_#~download"

.field public static final ExtFavouriteQueue:Ljava/lang/String; = "MyFavouriteQueue"

.field public static final ExtHistoryQueue:Ljava/lang/String; = "HistoryDiskQueue"

.field public static final ExtLocalPreffix:Ljava/lang/String;

.field public static final ExtLocalQueue:Ljava/lang/String;

.field public static final ExtMyFavouriteQueue:Ljava/lang/String; = "MyFavouriteQueue"

.field public static final ExtPandoraRadio:Ljava/lang/String; = "Pandora"

.field public static final ExtPreset:Ljava/lang/String; = "PresetSongs"

.field public static final ExtQingTingSuffix:Ljava/lang/String; = "_#~qingting"

.field public static final ExtRecentlyQueue:Ljava/lang/String; = "RecentlyQueue"

.field public static final ExtRemoteLocalSuffix:Ljava/lang/String; = "_RemoteLocal"

.field public static final ExtSpotify:Ljava/lang/String; = "SPOTIFY"

.field public static final ExtSpotifySuffix:Ljava/lang/String; = "_#~spotify"

.field public static final ExtTFCardSuffix:Ljava/lang/String; = "_#~mytfcard"

.field public static final ExtTTPodSearch:Ljava/lang/String;

.field public static final ExtTTPodSearchSuffix:Ljava/lang/String; = "ttpod_search"

.field public static final ExtTianTianDongTingSuffix:Ljava/lang/String; = "_#~ttdt"

.field public static final ExtTianTianMusic:Ljava/lang/String;

.field public static final ExtTianTianMusicSearchSuffix:Ljava/lang/String; = "\u5929\u5929\u52a8\u542c\u641c\u7d22"

.field public static final ExtTianTianMusicSuffix:Ljava/lang/String; = "\u5929\u5929\u52a8\u542c"

.field public static final ExtTianTianMusicSuffixSearch:Ljava/lang/String; = "_#~ttpodsearch"

.field public static final ExtTotalQueue:Ljava/lang/String; = "TotalQueue"

.field public static final ExtTuneRadio:Ljava/lang/String; = "TuneIn"

.field public static final ExtUSBDiskQueue:Ljava/lang/String; = "USBDiskQueue"

.field public static final ExtUpnpServer:Ljava/lang/String; = "UPnPServer"

.field public static final ExtXimalaya:Ljava/lang/String; = "Ximalaya"

.field public static final ExtXimalayaSuffix:Ljava/lang/String; = "_#~xmly"

.field public static final Kindle:Ljava/lang/String; = "Kindle Books"

.field public static final Qobuz:Ljava/lang/String; = "Qobuz"

.field public static final RADIODE:Ljava/lang/String; = "RadioNet"

.field public static final SAAVN:Ljava/lang/String; = "SAAVN"

.field public static final SiriusXM:Ljava/lang/String; = "SIRIUSXM"


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

    sput-object v0, Lcom/android/wiimu/model/IWiimuPlayQueueType;->ExtLocalPreffix:Ljava/lang/String;

    const-string v1, "_RemoteLocal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/wiimu/model/IWiimuPlayQueueType;->ExtLocalQueue:Ljava/lang/String;

    const-string v1, "\u5929\u5929\u52a8\u542c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/wiimu/model/IWiimuPlayQueueType;->ExtTianTianMusic:Ljava/lang/String;

    const-string v1, "ttpod_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wiimu/model/IWiimuPlayQueueType;->ExtTTPodSearch:Ljava/lang/String;

    return-void
.end method
