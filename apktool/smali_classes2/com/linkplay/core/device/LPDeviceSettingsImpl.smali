.class public Lcom/linkplay/core/device/LPDeviceSettingsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/device/LPDeviceSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;
    }
.end annotation


# instance fields
.field private upnpUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    return-void
.end method

.method private getRequestString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "EQValue"

    const-string v0, "EQValueSet:app:"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getSupportEQAndValues(Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 3

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "device is gone"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSettingsImpl$4;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$4;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/linkplay/request/LPRequestAction;->getEQ(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public getUSBDiskStatus(Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "device is gone"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public hideSSID(ZLcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device is gone"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDeviceSettingsImpl$7;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$7;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;ZLcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/linkplay/request/LPRequestAction;->hideSSID(ZLcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public resetDeviceWithHandler(Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "device is gone"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v2

    new-instance v3, Lcom/linkplay/core/device/LPDeviceSettingsImpl$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$6;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v2, v1, v3}, Lcom/linkplay/request/LPRequestAction;->restoreToDefault(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 3

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSettingsImpl$1;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$1;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/linkplay/request/LPRequestAction;->setDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V

    return-void
.end method

.method public setEQValues(Ljava/lang/String;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 3

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device is gone"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->getRequestString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSettingsImpl$5;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$5;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/linkplay/request/LPRequestAction;->setEQ(Lcom/linkplay/request/RequestItem;Ljava/lang/String;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public setSSIDPassword(Ljava/lang/String;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 10

    const-string v0, ""

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device is gone"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    new-instance v3, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v3}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v1, v3}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v3

    invoke-static {v1, v3}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v8

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/utils/ByteIntConverter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {p1, v2}, Lcom/lp/ble/utils/AesCBC;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/utils/ByteIntConverter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v7, p1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v4

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->isSecurity3()Z

    move-result v5

    new-instance v9, Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;

    invoke-direct {v9, p0, p2}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual/range {v4 .. v9}, Lcom/linkplay/request/LPRequestAction;->setDevicePassword(ZILjava/lang/String;Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public switchInputSource(Lcom/linkplay/core/status/LPInputSource;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 3

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/status/LPInputSource;->getMode()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl;->upnpUUID:Ljava/lang/String;

    new-instance v2, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/linkplay/request/LPRequestAction;->switchInputSource(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V

    return-void
.end method
