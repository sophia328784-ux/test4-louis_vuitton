.class public Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/lpmdpkit/LPMediaSourceProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object p0

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPMSUtil;->getUpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public LPCommonHTTPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p2

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPMSUtil;->getUpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {p2}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, p2}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p2

    invoke-static {p1, p2}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, p3}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance p3, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$5;

    invoke-direct {p3, p0, p4}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$5;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-virtual {p1, p2, p3}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public LPGetUserInfoWithDeviceId(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    const-string p0, "null device exception"

    invoke-interface {p3, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$1;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get user info failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-interface {p3, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public LPGetUserInfoWithDeviceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 62
    const-string p0, "null device exception"

    invoke-interface {p4, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$3;

    invoke-direct {v1, p0, p4}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$3;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get user info failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 66
    invoke-interface {p4, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public LPGetUserInfoWithDeviceId(Ljava/lang/String;Ljava/lang/String;ZLcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 56
    const-string p0, "null device exception"

    invoke-interface {p4, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;

    invoke-direct {v1, p0, p4}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get user info failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 60
    invoke-interface {p4, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public LPIpAddressWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public LPLogOutWithDeviceId(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    const-string p0, "null device exception"

    invoke-interface {p3, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$4;

    invoke-direct {v1, p0, p3}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$4;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserLogout(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get user logout failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-interface {p3, p0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public LPNewTuneInPresetAndAlarmWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getNew_tunein_preset_and_alarm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public LPPresetKeyWithDeviceId(Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getPresetKey()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public LPStreamServiceCapability(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPMSUtil;->getUpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStreamServices()Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class p2, Lcom/linkplay/network/HttpRequestUtils$Param;

    invoke-static {p5, p2}, Lcom/android/wiimu/utils/GsonUtil;->parseJsonToList(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p2

    new-instance p5, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {p5}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, p5}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p5

    invoke-static {p1, p5}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p5, p3}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    sget-object p5, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->GET:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    if-ne p4, p5, :cond_1

    new-instance p4, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;

    invoke-direct {p4, p0, p6}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void

    :cond_1
    sget-object p5, Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;->POST:Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;

    if-ne p4, p5, :cond_2

    new-instance p4, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$7;

    invoke-direct {p4, p0, p6}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$7;-><init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V

    invoke-virtual {p1, p3, p4, p2}, Lcom/linkplay/network/HttpRequestUtils;->post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
