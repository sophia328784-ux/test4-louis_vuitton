.class public Lcom/linkplay/tvs/LPTVSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/linkplay/tvs/LPTVSManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/tvs/LPTVSManager;
    .locals 2

    sget-object v0, Lcom/linkplay/tvs/LPTVSManager;->instance:Lcom/linkplay/tvs/LPTVSManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/tvs/LPTVSManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/tvs/LPTVSManager;->instance:Lcom/linkplay/tvs/LPTVSManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/tvs/LPTVSManager;

    invoke-direct {v1}, Lcom/linkplay/tvs/LPTVSManager;-><init>()V

    sput-object v1, Lcom/linkplay/tvs/LPTVSManager;->instance:Lcom/linkplay/tvs/LPTVSManager;

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
    sget-object v0, Lcom/linkplay/tvs/LPTVSManager;->instance:Lcom/linkplay/tvs/LPTVSManager;

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


# virtual methods
.method public getTvsProfile(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/tvs/GetTvsProfileCallback;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/linkplay/tvs/LPTVSManager;->getRequestItem(Lcom/linkplay/core/device/LPDevice;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/tvs/LPTVSRequestUrl;->getTvsProfileUrl(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v3, Lcom/linkplay/tvs/LPTVSManager$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/linkplay/tvs/LPTVSManager$1;-><init>(Lcom/linkplay/tvs/LPTVSManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/tvs/GetTvsProfileCallback;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method
