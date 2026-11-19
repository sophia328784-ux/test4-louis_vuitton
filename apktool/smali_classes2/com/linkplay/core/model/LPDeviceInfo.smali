.class public Lcom/linkplay/core/model/LPDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastStamp:Ljava/lang/String;

.field private playChannel:Lcom/linkplay/core/status/LPPlayChannel;

.field private playMedium:Ljava/lang/String;

.field private playMode:Lcom/linkplay/core/status/LPPlayMode;

.field private playStatus:Lcom/linkplay/core/status/LPPlayStatus;

.field private playType:Ljava/lang/String;

.field private spotifyPlayMode:Lcom/linkplay/core/status/LPSpotifyPlayMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SONGLIST-LOCAL"

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMedium:Ljava/lang/String;

    sget-object v0, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_NO_MEDIA_PRESENT:Lcom/linkplay/core/status/LPPlayStatus;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playStatus:Lcom/linkplay/core/status/LPPlayStatus;

    sget-object v0, Lcom/linkplay/core/status/LPPlayMode;->LP_DEFAULT:Lcom/linkplay/core/status/LPPlayMode;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMode:Lcom/linkplay/core/status/LPPlayMode;

    sget-object v0, Lcom/linkplay/core/status/LPSpotifyPlayMode;->LP_SPOTIFY_DEFAULT:Lcom/linkplay/core/status/LPSpotifyPlayMode;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->spotifyPlayMode:Lcom/linkplay/core/status/LPSpotifyPlayMode;

    sget-object v0, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playChannel:Lcom/linkplay/core/status/LPPlayChannel;

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playType:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->lastStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlayChannel()Lcom/linkplay/core/status/LPPlayChannel;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playChannel:Lcom/linkplay/core/status/LPPlayChannel;

    return-object p0
.end method

.method public getPlayMedium()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMedium:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayMode()Lcom/linkplay/core/status/LPPlayMode;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMode:Lcom/linkplay/core/status/LPPlayMode;

    return-object p0
.end method

.method public getPlayStatus()Lcom/linkplay/core/status/LPPlayStatus;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playStatus:Lcom/linkplay/core/status/LPPlayStatus;

    return-object p0
.end method

.method public getPlayType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playType:Ljava/lang/String;

    return-object p0
.end method

.method public getSpotifyPlayMode()Lcom/linkplay/core/status/LPSpotifyPlayMode;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/model/LPDeviceInfo;->spotifyPlayMode:Lcom/linkplay/core/status/LPSpotifyPlayMode;

    return-object p0
.end method

.method public setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playChannel:Lcom/linkplay/core/status/LPPlayChannel;

    return-void
.end method

.method public declared-synchronized setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->lastStamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xea60

    if-le v2, v3, :cond_0

    const-string v1, "0"

    iput-object v1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->lastStamp:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playChannel:Lcom/linkplay/core/status/LPPlayChannel;

    if-eq v2, p1, :cond_2

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/linkplay/core/model/LPDeviceInfo;->lastStamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playChannel:Lcom/linkplay/core/status/LPPlayChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlayMedium(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMedium:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Lcom/linkplay/core/status/LPPlayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playMode:Lcom/linkplay/core/status/LPPlayMode;

    return-void
.end method

.method public setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playStatus:Lcom/linkplay/core/status/LPPlayStatus;

    return-void
.end method

.method public setPlayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->playType:Ljava/lang/String;

    return-void
.end method

.method public setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/model/LPDeviceInfo;->spotifyPlayMode:Lcom/linkplay/core/status/LPSpotifyPlayMode;

    return-void
.end method
