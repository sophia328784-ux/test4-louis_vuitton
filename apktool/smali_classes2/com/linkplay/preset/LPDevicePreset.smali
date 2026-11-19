.class public Lcom/linkplay/preset/LPDevicePreset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lpDevice:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/preset/LPDevicePreset;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/preset/LPDevicePreset;->setkeyMapping(Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void
.end method

.method private backupQueue(Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/preset/LPDevicePreset;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "backup queue device is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "backup queue context is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->backupQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method

.method private getKeyMapping(Lcom/linkplay/preset/LPPresetListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/preset/LPDevicePreset;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "get key mapping device is empty"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    new-instance v2, Lcom/linkplay/preset/LPDevicePreset$4;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/preset/LPDevicePreset$4;-><init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getKeyMapping(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setPreset(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/linkplay/preset/LPDevicePreset;->setkeyMapping(Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/linkplay/preset/LPDevicePreset$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/linkplay/preset/LPDevicePreset$1;-><init>(Lcom/linkplay/preset/LPDevicePreset;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    invoke-direct {p0, p1, v0}, Lcom/linkplay/preset/LPDevicePreset;->backupQueue(Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method private setSpotifyPreset(ILjava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/preset/LPDevicePreset;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "set spotify device is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-gez p1, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "set spotify preset index < 0"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    new-instance v2, Lcom/linkplay/preset/LPDevicePreset$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/linkplay/preset/LPDevicePreset$2;-><init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setSpotifyPreset(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setkeyMapping(Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/preset/LPDevicePreset;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "set key mapping device is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v1

    new-instance v2, Lcom/linkplay/preset/LPDevicePreset$3;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/preset/LPDevicePreset$3;-><init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setKeyMapping(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public deletePreset(Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 3

    const-string v0, "keyMapping"

    const-string v1, "backupQueue"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/linkplay/preset/LPDevicePreset;->setPreset(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Preset message error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getMaxPresetNum()I
    .locals 0

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getPresetKey()I

    move-result p0

    return p0
.end method

.method public getPresets(Lcom/linkplay/preset/LPPresetListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/preset/LPDevicePreset;->getKeyMapping(Lcom/linkplay/preset/LPPresetListener;)V

    return-void
.end method

.method public playPreset(ILcom/linkplay/preset/LPPresetListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "play preset device is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestPrefix(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MCUKeyShortClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v1, Lcom/linkplay/preset/LPDevicePreset$5;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/preset/LPDevicePreset$5;-><init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setPreset(Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 7

    const-string v0, "index"

    const-string v1, "SPOTIFY"

    const-string v2, "source"

    const-string v3, "keyMapping"

    const-string v4, "backupQueue"

    invoke-direct {p0}, Lcom/linkplay/preset/LPDevicePreset;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "set spotify device is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/linkplay/preset/LPDevicePreset;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v3, p2}, Lcom/linkplay/preset/LPDevicePreset;->setPreset(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1, v3, p2}, Lcom/linkplay/preset/LPDevicePreset;->setSpotifyPreset(ILjava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void

    :cond_5
    if-eqz p2, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Preset message error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_6

    invoke-interface {p2, p0}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method
