.class public Lcom/linkplay/wifisetup/LPWiFiSetupManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;
    }
.end annotation


# static fields
.field private static targetApItem:Lcom/linkplay/wifisetup/LPApItem;


# instance fields
.field private curDevice:Lcom/linkplay/core/device/LPDevice;

.field searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/wifisetup/LPWiFiSetupManager;)Lcom/linkplay/core/device/LPDevice;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->parseApItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Lcom/linkplay/wifisetup/LPApItem;
    .locals 1

    sget-object v0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->targetApItem:Lcom/linkplay/wifisetup/LPApItem;

    return-object v0
.end method

.method private parseApItems(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linkplay/wifisetup/LPApItem;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "aplist"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/linkplay/wifisetup/LPApItem;

    invoke-virtual {p0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/wifisetup/LPApItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    return-object v1

    :goto_1
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    return-object v0

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-object v1, v0

    :catchall_1
    return-object v1
.end method


# virtual methods
.method public connectToWiFi(Lcom/linkplay/wifisetup/LPApItem;Ljava/lang/String;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V
    .locals 7

    iget-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-object p1, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->targetApItem:Lcom/linkplay/wifisetup/LPApItem;

    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    iget-object v1, p1, Lcom/linkplay/wifisetup/LPApItem;->SSID:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/linkplay/wifisetup/LPApItem;->Channel:I

    const-string v4, ""

    invoke-static {v3, v4, v2}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/linkplay/wifisetup/LPApItem;->Encry:Ljava/lang/String;

    const-string v5, "NONE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "OPEN"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/wiimu/utils/ByteIntConverter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/linkplay/wifisetup/LPApItem;->Encry:Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/wifisetup/LPApItem;->Auth:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https/2.0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurityVersion()Ljava/lang/String;

    move-result-object p2

    const-string v3, "3.0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    const-string p2, ":ch="

    const-string v3, ":auth="

    const-string v6, "wlanConnectApEx:ssid="

    invoke-static {v6, v1, p2, v2, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ":encry="

    const-string v2, ":pwd="

    invoke-static {p2, p1, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ":chext=1"

    invoke-static {v4, p1, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p2, p1}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p2

    new-instance v0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;

    invoke-direct {v0, p0, p3}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;-><init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V

    invoke-virtual {p2, p1, v0}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getApList(Lcom/linkplay/wifisetup/LPApListListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_1

    const-string p0, "LPWiFiSetupManager"

    const-string v0, "Please confirm whether to connect isLinkplayHotspot first."

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/linkplay/wifisetup/LPApListListener;->LPApList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wlanGetApListEx"

    invoke-static {v0, v1, v2}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v2, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;-><init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Lcom/linkplay/wifisetup/LPApListListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public isLinkplayHotspot(Landroid/content/Context;I)Z
    .locals 3

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/core/app/LPDeviceManager;->getMasterDevices()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    return v1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    return v0
.end method

.method public retryCheckWithTime(ILcom/linkplay/wifisetup/LPWiFiSetupListener;)V
    .locals 2

    const-string v0, "LPWiFiSetupManager"

    const-string v1, "retryCheckWithTime"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    :cond_0
    new-instance v0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->curDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {v0, v1, p2}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;-><init>(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V

    iput-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    if-gtz p1, :cond_1

    const/16 p1, 0x7530

    :cond_1
    invoke-virtual {v0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->setTimeout(I)V

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-virtual {p0}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->search()V

    return-void
.end method
