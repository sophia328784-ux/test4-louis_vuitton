.class public Lcom/linkplay/core/device/LPDevicePlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/device/ILPDevicePlayer;


# instance fields
.field private mStartProgressTimer:J

.field startSetVolume:J

.field private upnpUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->mStartProgressTimer:J

    iput-wide v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->startSetVolume:J

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->upnpUUID:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/device/LPDevicePlayerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->upnpUUID:Ljava/lang/String;

    return-object p0
.end method

.method private appendTracks(ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getTailData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getHeadData()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->appendTracks(ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/wiimu/upnp/impl/j;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v1

    new-instance v6, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V

    const/4 v3, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wiimu/upnp/impl/j;->appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private appendTracksInQueueEx(Ljava/lang/String;ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p3}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v5, Lcom/linkplay/core/device/LPDevicePlayerImpl$17;

    invoke-direct {v5, p0, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl$17;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    const/4 v3, 0x1

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-interface {p3, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/device/LPDevicePlayerImpl;ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->appendTracks(ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V

    return-void
.end method

.method private browseCurrentQueue(Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p3}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    sget-object v2, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v2}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-interface {p3, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->appendTracksInQueueEx(Ljava/lang/String;ILcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method

.method private createQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    const-string v1, "play media data empty"

    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getPlayData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/wiimu/upnp/impl/j;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v1

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/wiimu/upnp/impl/j;->createQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->insertNext(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->parseCurrentQueue(Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->playQueueWithIndex(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method

.method private getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->upnpUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method

.method private insertNext(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "null device exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    sget-object v2, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v2}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;

    invoke-direct {v3, p0, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getQueueIndex(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private parseCurrentQueue(Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 10

    if-eqz p3, :cond_a

    iget-object v0, p3, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p3, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    iget-object v3, p3, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/mediainfo/LPMediaInfo;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v7, v5

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, v1, v1, p4}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->removeTrackInQueue(Ljava/lang/String;IILcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1, p4}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->insertNext(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_a
    :goto_7
    if-eqz p4, :cond_b

    const-string p0, "next play failed"

    invoke-static {p0, p4}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    :cond_b
    return-void
.end method

.method private playQueueWithIndex(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/j;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getPlayIndex()I

    move-result p1

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;

    invoke-direct {v3, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/wiimu/upnp/impl/j;->playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private removeTrackInQueue(Ljava/lang/String;IILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p4, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p4}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    sget-object v1, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v1}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;

    invoke-direct {v5, p0, p1, p4}, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->removeTracksInQueue(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    if-eqz p4, :cond_1

    invoke-interface {p4, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public browseQueue(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$14;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$14;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public deleteWithIndex(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    sget-object v1, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v1}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/linkplay/core/device/LPDevicePlayerImpl$19;

    invoke-direct {v5, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$19;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    move v3, p1

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->removeTracksInQueue(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public next(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$7;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl$7;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->next(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public nextPlay(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_3

    const-string p0, "null device exception"

    invoke-static {p0, p3}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_3

    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "play data empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->getPlayData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_3

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "play media data empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->browseCurrentQueue(Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_3

    invoke-interface {p3, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public pause(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$5;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl$5;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->pause(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public play(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$4;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl$4;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->play(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public playAudio(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "play data param null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->createQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public playCurrentPlayListWithIndex(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    sget-object v2, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v2}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$21;

    invoke-direct {v3, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$21;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v2, p1, v0, v3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public playUSBSongsWithIndex(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    sget-object v2, Lcom/linkplay/core/status/LPPlayQueueType;->LP_USBDISK_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v2}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDevicePlayerImpl$20;

    invoke-direct {v3, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$20;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v2, p1, v0, v3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public previous(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$8;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl$8;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->previous(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public queryCurrentPlaylist(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v0}, Lcom/linkplay/core/status/LPPlayQueueType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->browseQueue(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setChannel(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$12;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$12;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setChannel(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setPlayMode(Lcom/linkplay/core/status/LPPlayMode;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/status/LPPlayMode;->getStatus()I

    move-result p1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$10;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$10;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setQueueLoopMode(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setProgress(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    const-string v1, "setProgress start++"

    const-string v2, "LPMusicKit"

    invoke-static {v2, v1}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->mStartProgressTimer:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const-string p0, "setProgress start jump"

    invoke-static {v2, p0}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "setProgress start send"

    invoke-static {v2, v1}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->mStartProgressTimer:J

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$9;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$9;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->seek(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/status/LPSpotifyPlayMode;->getStatus()I

    move-result p1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$11;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$11;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setQueueLoopMode(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setVolume(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 5

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const-string p0, "null device exception"

    invoke-static {p0, p2}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->startSetVolume:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x96

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl;->startSetVolume:J

    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$13;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDevicePlayerImpl$13;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setVolume(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string p0, "null device exception"

    invoke-static {p0, p1}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDevicePlayerImpl$6;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDevicePlayerImpl$6;-><init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->stop(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
