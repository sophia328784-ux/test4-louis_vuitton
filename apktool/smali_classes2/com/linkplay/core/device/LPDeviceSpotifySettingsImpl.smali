.class Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/device/LPDeviceSpotifySettings;


# instance fields
.field private upnpUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->upnpUUID:Ljava/lang/String;

    return-void
.end method

.method private getLPDevice()Lcom/linkplay/core/device/LPDevice;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    return-object p0
.end method

.method private getUpnpDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method

.method private skipLimitHas(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPOTIFY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getSkiplimit()I

    move-result p0

    const/4 v1, 0x7

    if-le p0, v1, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne p0, v1, :cond_3

    return v2

    :cond_3
    if-nez p0, :cond_4

    return v0

    :cond_4
    and-int v1, p0, p1

    if-ne v1, p1, :cond_5

    return v2

    :cond_5
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-ne v1, p0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_7

    :cond_6
    return v2

    :cond_7
    const/4 v1, 0x5

    const/4 v4, 0x4

    if-ne v1, p0, :cond_9

    if-eq p1, v2, :cond_8

    if-ne p1, v4, :cond_9

    :cond_8
    return v2

    :cond_9
    const/4 v1, 0x6

    if-ne v1, p0, :cond_b

    if-eq p1, v3, :cond_a

    if-ne p1, v4, :cond_b

    :cond_a
    return v2

    :cond_b
    return v0
.end method


# virtual methods
.method public isFreeSpotifyAccount()Z
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPOTIFY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getSkiplimit()I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isShowSpotifySeekButton()Z
    .locals 6

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    const-string v4, "SPOTIFY"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x3ed

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "spotify:show"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "spotify:episode"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v4, :cond_5

    invoke-direct {p0, v3}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->skipLimitHas(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v3, v1

    :cond_5
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->isFreeSpotifyAccount()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method public spotifyNextEnable()Z
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v3, "SPOTIFY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x3ed

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->skipLimitHas(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->isFreeSpotifyAccount()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public spotifyPrevEnable()Z
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v3, "SPOTIFY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x3ed

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->skipLimitHas(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->isFreeSpotifyAccount()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public spotifySeekBackward(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getUpnpDevice()Lorg/teleal/cling/model/meta/Device;

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

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl$1;-><init>(Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->BackForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
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

.method public spotifySeekEnable()Z
    .locals 4

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getLPDevice()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v3, "SPOTIFY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x3ed

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->skipLimitHas(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->isFreeSpotifyAccount()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public spotifySeekForward(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;->getUpnpDevice()Lorg/teleal/cling/model/meta/Device;

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

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl$2;-><init>(Lcom/linkplay/core/device/LPDeviceSpotifySettingsImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->SeekForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
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
