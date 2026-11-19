.class public Lcom/linkplay/request/LPRequestAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/request/LPRequestAction$IRequestListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/linkplay/request/LPRequestAction;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/request/LPRequestAction;->sendNewHideSSID(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/request/LPRequestAction;
    .locals 2

    sget-object v0, Lcom/linkplay/request/LPRequestAction;->instance:Lcom/linkplay/request/LPRequestAction;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/request/LPRequestAction;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/request/LPRequestAction;->instance:Lcom/linkplay/request/LPRequestAction;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/request/LPRequestAction;

    invoke-direct {v1}, Lcom/linkplay/request/LPRequestAction;-><init>()V

    sput-object v1, Lcom/linkplay/request/LPRequestAction;->instance:Lcom/linkplay/request/LPRequestAction;

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
    sget-object v0, Lcom/linkplay/request/LPRequestAction;->instance:Lcom/linkplay/request/LPRequestAction;

    return-object v0
.end method

.method private getRequestItem(Lcom/linkplay/core/device/LPDevice;)Lcom/linkplay/request/RequestItem;
    .locals 1

    new-instance p0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {p0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p0

    invoke-static {p1, p0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p0

    return-object p0
.end method

.method private sendNewHideSSID(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 3

    const-string v0, "2"

    invoke-static {v0, p1}, Lcom/linkplay/request/LPRequestUrl;->getHideSSIDURL(Ljava/lang/String;Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v2, Lcom/linkplay/request/LPRequestAction$8;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/request/LPRequestAction$8;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method


# virtual methods
.method public getEQ(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 3

    invoke-static {p1}, Lcom/linkplay/request/LPRequestUrl;->getEQURL(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v2, Lcom/linkplay/request/LPRequestAction$4;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/request/LPRequestAction$4;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 2

    invoke-static {p1}, Lcom/linkplay/request/LPRequestUrl;->getStatusExUrl(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, La/a;->a:I

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v1, Lcom/linkplay/request/LPRequestAction$1;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/request/LPRequestAction$1;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public hideSSID(ZLcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-static {v0, p2}, Lcom/linkplay/request/LPRequestUrl;->getHideSSIDURL(Ljava/lang/String;Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v2

    new-instance v3, Lcom/linkplay/request/LPRequestAction$7;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/linkplay/request/LPRequestAction$7;-><init>(Lcom/linkplay/request/LPRequestAction;ZLcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public restoreToDefault(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 3

    invoke-static {p1}, Lcom/linkplay/request/LPRequestUrl;->getRestoreToDefaultURL(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v2, Lcom/linkplay/request/LPRequestAction$6;

    invoke-direct {v2, p0, p2}, Lcom/linkplay/request/LPRequestAction$6;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device is gone"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/linkplay/request/LPRequestAction;->getRequestItem(Lcom/linkplay/core/device/LPDevice;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/wiimu/utils/ByteIntConverter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/request/LPRequestUrl;->setHexDeviceNameUrl(Lcom/linkplay/request/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, p2

    :goto_0
    invoke-static {v0, v1}, Lcom/linkplay/request/LPRequestUrl;->setDeviceNameUrl(Lcom/linkplay/request/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v3, Lcom/linkplay/request/LPRequestAction$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/linkplay/request/LPRequestAction$2;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setDevicePassword(ZILjava/lang/String;Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/linkplay/request/LPRequestUrl;->getDevicePasswordURL(ZILjava/lang/String;Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object p1

    sget p2, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object p2

    invoke-static {p4}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p3

    new-instance p4, Lcom/linkplay/request/LPRequestAction$9;

    invoke-direct {p4, p0, p5}, Lcom/linkplay/request/LPRequestAction$9;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p3, p2, p1, p4}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setEQ(Lcom/linkplay/request/RequestItem;Ljava/lang/String;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/linkplay/request/LPRequestUrl;->SetEQURL(Lcom/linkplay/request/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget v0, La/a;->a:I

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v1, Lcom/linkplay/request/LPRequestAction$5;

    invoke-direct {v1, p0, p3}, Lcom/linkplay/request/LPRequestAction$5;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setTimezoneEx(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 7

    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p1

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, ".#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Lcom/linkplay/core/utils/UTCTimeUtils;->getTimeZoneOffset()F

    move-result v3

    invoke-static {}, Lcom/linkplay/core/utils/UTCTimeUtils;->getDstOffset()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const-string v4, "0"

    goto :goto_0

    :cond_0
    const-string v4, "1"

    :goto_0
    float-to-double v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v4, v2}, Lcom/linkplay/request/LPRequestUrl;->setTimezoneExUrl(Lcom/linkplay/request/RequestItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/linkplay/request/LPRequestAction$10;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/request/LPRequestAction$10;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/LPNetworkListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public switchInputSource(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device is gone"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/linkplay/request/LPRequestAction;->getRequestItem(Lcom/linkplay/core/device/LPDevice;)Lcom/linkplay/request/RequestItem;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/linkplay/request/LPRequestUrl;->switchInputSource(Lcom/linkplay/request/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p2

    new-instance v1, Lcom/linkplay/request/LPRequestAction$3;

    invoke-direct {v1, p0, p3}, Lcom/linkplay/request/LPRequestAction$3;-><init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/network/IOkHttpRequestCallback;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method
