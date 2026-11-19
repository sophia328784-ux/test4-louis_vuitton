.class public Lcom/linkplay/alarm/LPDeviceAlarm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lpDevice:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/alarm/LPDeviceAlarm;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/alarm/LPDeviceAlarm;Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/alarm/LPDeviceAlarm;->setAlarmQueue(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    return-void
.end method

.method private backupQueue(Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/alarm/LPDeviceAlarm;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
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

.method private getAlarmQueue(Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/linkplay/alarm/LPDeviceAlarm;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v0

    const-string v1, "TotalAlarmQueue"

    invoke-interface {v0, v1, p0, p1}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
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

    iget-object v0, p0, Lcom/linkplay/alarm/LPDeviceAlarm;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm;->lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method

.method private setAlarmQueue(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/alarm/LPDeviceAlarm;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v1

    new-instance v2, Lcom/linkplay/alarm/LPDeviceAlarm$3;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/alarm/LPDeviceAlarm$3;-><init>(Lcom/linkplay/alarm/LPDeviceAlarm;Lcom/linkplay/alarm/LPAlarmListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public addAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 3

    const-string v0, "keyMapping"

    const-string v1, "backupQueue"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/linkplay/alarm/LPDeviceAlarm;->setAlarmQueue(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/linkplay/alarm/LPDeviceAlarm$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/linkplay/alarm/LPDeviceAlarm$2;-><init>(Lcom/linkplay/alarm/LPDeviceAlarm;Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    invoke-direct {p0, p1, v1}, Lcom/linkplay/alarm/LPDeviceAlarm;->backupQueue(Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Alarm message error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/alarm/LPAlarmListener;->onFail(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/linkplay/alarm/LPAlarmListener;->onFail(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public deleteAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/linkplay/alarm/LPDeviceAlarm;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v1

    new-instance v2, Lcom/linkplay/alarm/LPDeviceAlarm$4;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/alarm/LPDeviceAlarm$4;-><init>(Lcom/linkplay/alarm/LPDeviceAlarm;Lcom/linkplay/alarm/LPAlarmListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->deleteAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public editAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alarm/LPDeviceAlarm;->addAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    return-void
.end method

.method public getAlarms(Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 1

    new-instance v0, Lcom/linkplay/alarm/LPDeviceAlarm$1;

    invoke-direct {v0, p0, p1}, Lcom/linkplay/alarm/LPDeviceAlarm$1;-><init>(Lcom/linkplay/alarm/LPDeviceAlarm;Lcom/linkplay/alarm/LPAlarmListener;)V

    invoke-direct {p0, v0}, Lcom/linkplay/alarm/LPDeviceAlarm;->getAlarmQueue(Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setAlarmSwitchOn(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alarm/LPDeviceAlarm;->addAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    return-void
.end method
