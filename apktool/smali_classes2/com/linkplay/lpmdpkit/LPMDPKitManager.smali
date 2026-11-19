.class public Lcom/linkplay/lpmdpkit/LPMDPKitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LPMDPKit"

.field private static volatile mInstance:Lcom/linkplay/lpmdpkit/LPMDPKitManager;


# instance fields
.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->protocols:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/linkplay/lpmdpkit/LPMDPKitManager;
    .locals 2

    sget-object v0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->mInstance:Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->mInstance:Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/LPMDPKitManager;-><init>()V

    sput-object v1, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->mInstance:Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->mInstance:Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    return-object v0
.end method


# virtual methods
.method public addAlarmWithAlarmList(Lcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;-><init>()V

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayKeyMap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setBackupQueue(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil;->getAlarmXml(Lcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setKeyMapping(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addStreamServiceProtocol(Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->protocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->protocols:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deletePresetDataWithIndex(ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "deletePresetDataWithIndex"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LPMDPKit"

    invoke-static {v0, p0}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/linkplay/lpmdpkit/bean/LPPresetData;

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;-><init>()V

    new-instance v1, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {v1, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>(I)V

    invoke-static {p2, v1}, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;->getKeyMapping(Ljava/util/List;Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keymapping = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;->setKeyMapping(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;->setIndex(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public editAlarmWithAlarmList(Lcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;-><init>()V

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayKeyMap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setBackupQueue(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil;->getAlarmXml(Lcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setKeyMapping(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setQueueName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->getContext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setQueueName(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAlarmWithString(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPAlarmList;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBrowseListWithString(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;
    .locals 0

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->convert2CurrentQueueItem(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    move-result-object p0

    return-object p0
.end method

.method public getPresetListDataWithNumber(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            ">;"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int v1, p1, v1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    if-gtz v1, :cond_2

    add-int/2addr p1, v0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_4

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "get preset list = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPMDPKit"

    invoke-static {p1, p0}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getUSBPlaylistWithString(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;
    .locals 0

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->convert2CurrentQueueItem(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    move-result-object p0

    return-object p0
.end method

.method public playMusicSingleSource(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getAccount()Lcom/linkplay/lpmdpkit/bean/LPAccount;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->protocols:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;

    invoke-interface {v1}, Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getAccount()Lcom/linkplay/lpmdpkit/bean/LPAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;->playXMLForMusicList(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public setAlarmStatusWithOpen(ZLcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;-><init>()V

    invoke-virtual {p2, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setEnable(Z)V

    invoke-virtual {p2}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlayKeyMap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setBackupQueue(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil;->getAlarmXml(Lcom/linkplay/lpmdpkit/bean/LPAlarmList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->setKeyMapping(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePresetDataWithPlayMusicList(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object v0

    new-instance v1, Lcom/linkplay/lpmdpkit/bean/LPPresetData;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;-><init>()V

    invoke-static {p2, p1}, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;->getKeyMapping(Ljava/util/List;Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RADIO-NETWORK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPBackupQueueConstants;->getBackupQueueContextForRadio(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SONGLIST-NETWORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPBackupQueueConstants;->getBackupQueueContextRhapsody(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-virtual {v1, p2}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;->setKeyMapping(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;->setBackupQueue(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/lpmdpkit/bean/LPPresetData;->setIndex(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "preset backupQueue = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPMDPKit"

    invoke-static {p1, p0}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "preset keymapping = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
