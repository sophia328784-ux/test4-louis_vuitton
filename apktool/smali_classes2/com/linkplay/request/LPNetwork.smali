.class public Lcom/linkplay/request/LPNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/linkplay/request/LPNetwork;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/request/LPNetwork;
    .locals 2

    sget-object v0, Lcom/linkplay/request/LPNetwork;->instance:Lcom/linkplay/request/LPNetwork;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/request/LPNetwork;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/request/LPNetwork;->instance:Lcom/linkplay/request/LPNetwork;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/request/LPNetwork;

    invoke-direct {v1}, Lcom/linkplay/request/LPNetwork;-><init>()V

    sput-object v1, Lcom/linkplay/request/LPNetwork;->instance:Lcom/linkplay/request/LPNetwork;

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
    sget-object v0, Lcom/linkplay/request/LPNetwork;->instance:Lcom/linkplay/request/LPNetwork;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/List;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Lcom/linkplay/request/LPNetworkListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request url is null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request IP is null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request not 4 dot IP exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_4
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v1, Lcom/linkplay/request/LPNetwork$1;

    invoke-direct {v1, p0, p3}, Lcom/linkplay/request/LPNetwork$1;-><init>(Lcom/linkplay/request/LPNetwork;Lcom/linkplay/request/LPNetworkListener;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request IP other exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, " url exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/List;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Lcom/linkplay/request/LPNetworkListener;",
            ")V"
        }
    .end annotation

    .line 208
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/linkplay/request/LPNetwork;->post(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/linkplay/request/LPNetworkListener;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/request/LPNetworkListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request url is null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request IP is null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request not 4 dot IP exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p4, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "device null exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_4
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v1, Lcom/linkplay/request/LPNetwork$2;

    invoke-direct {v1, p0, p4}, Lcom/linkplay/request/LPNetwork$2;-><init>(Lcom/linkplay/request/LPNetwork;Lcom/linkplay/request/LPNetworkListener;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/linkplay/network/HttpRequestUtils;->post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    if-eqz p4, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "request IP other exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz p4, :cond_6

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p4, :cond_6

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " url exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    :cond_6
    :goto_3
    return-void
.end method
