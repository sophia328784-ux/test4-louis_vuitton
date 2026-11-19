.class public final Lcom/appsflyer/internal/AFf1uSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1uSDK$AFa1ySDK;
    }
.end annotation


# instance fields
.field private final AFLoggerLogLevel:Lcom/appsflyer/internal/AFi1aSDK;

.field private final AppsFlyerLib:Lcom/appsflyer/internal/AFe1wSDK;

.field private final afDebugLog:Lcom/appsflyer/internal/AFa1lSDK;

.field private final afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFf1hSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFc1eSDK;

.field private final force:Lcom/appsflyer/internal/AFc1dSDK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFc1dSDK<",
            "Lcom/appsflyer/share/AppsFlyerConversionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final getEntries:Lcom/appsflyer/internal/AFf1aSDK;

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Lcom/appsflyer/internal/AFh1sSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/appsflyer/internal/AFc1dSDK;

    new-instance p1, Lcom/appsflyer/internal/d;

    const/4 p2, 0x2

    invoke-direct {p1, v2, p2}, Lcom/appsflyer/internal/d;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1dSDK;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->force:Lcom/appsflyer/internal/AFc1dSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog()Lcom/appsflyer/internal/AFi1aSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFi1aSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->e()Lcom/appsflyer/internal/AFh1xSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFf1hSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->setUserPhone()Lcom/appsflyer/internal/AFa1lSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->setAndroidIdData()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->afWarnLog:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFe1wSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFe1wSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->w()Lcom/appsflyer/internal/AFf1aSDK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->getEntries:Lcom/appsflyer/internal/AFf1aSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->setUserLastName()Lcom/appsflyer/internal/AFh1sSDK;

    move-result-object p0

    iput-object p0, v0, Lcom/appsflyer/internal/AFf1uSDK;->values:Lcom/appsflyer/internal/AFh1sSDK;

    sget-object p0, Lcom/appsflyer/internal/AFd1bSDK;->e:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/appsflyer/internal/AFe1ySDK;->d:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/appsflyer/internal/AFd1bSDK;->force:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/appsflyer/internal/AFe1ySDK;->d:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final AFLogger(Lcom/appsflyer/internal/AFc1bSDK;)Lcom/appsflyer/share/AppsFlyerConversionListener;
    .locals 0

    .line 50
    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->setUserFirstName()Lcom/appsflyer/share/AppsFlyerConversionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFc1bSDK;)Lcom/appsflyer/share/AppsFlyerConversionListener;
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFf1uSDK;->AFLogger(Lcom/appsflyer/internal/AFc1bSDK;)Lcom/appsflyer/share/AppsFlyerConversionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/appsflyer/internal/AFf1uSDK;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFf1uSDK;->d(Lcom/appsflyer/internal/AFf1uSDK;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/appsflyer/internal/AFf1uSDK;)Lkotlin/Unit;
    .locals 1

    .line 562
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1uSDK;->getEntries:Lcom/appsflyer/internal/AFf1aSDK;

    new-instance v0, Lcom/appsflyer/internal/AFh1kSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1kSDK;-><init>()V

    invoke-interface {p0, v0}, Lcom/appsflyer/internal/AFf1aSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;)V

    .line 563
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final AFLogger()Z
    .locals 5

    invoke-super {p0}, Lcom/appsflyer/internal/AFe1kSDK;->AFLogger()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK;->i:Lcom/appsflyer/internal/AFd1fSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1ySDK;->w:Lcom/appsflyer/internal/AFd1cSDK;

    sget-object v3, Lcom/appsflyer/internal/AFd1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1cSDK;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1fSDK;->getStatusCode()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->w:Lcom/appsflyer/internal/AFd1bSDK;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v4

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    return v4

    :cond_4
    :goto_3
    return v1
.end method

.method public final d(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1tSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;)V

    iget v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->afWarnLog:I

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFh1xSDK;->unregisterClient:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v5, 0x0

    const-string v3, "first_launch"

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/appsflyer/internal/AFh1xSDK;->afErrorLog:J

    iget-wide v10, v1, Lcom/appsflyer/internal/AFh1xSDK;->e:J

    cmp-long v2, v10, v5

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "from_fg"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v1, v1, Lcom/appsflyer/internal/AFh1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v8, "Metrics: fg ts is missing"

    invoke-virtual {v1, v2, v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    const-string v2, "meta"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Ljava/util/Map;

    if-eqz v8, :cond_3

    instance-of v8, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v8, :cond_2

    instance-of v8, v1, Lkotlin/jvm/internal/markers/KMutableMap;

    if-eqz v8, :cond_3

    :cond_2
    check-cast v1, Ljava/util/Map;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v8, p0, Lcom/appsflyer/internal/AFf1uSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-interface {v8}, Lcom/appsflyer/internal/AFa1lSDK;->unregisterClient()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1, v8}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1pSDK;

    :cond_5
    iget-object v8, p0, Lcom/appsflyer/internal/AFf1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {v8}, Lcom/appsflyer/internal/AFf1hSDK;->d()Lcom/appsflyer/internal/AFh1bSDK;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "cdn_token"

    iget-object v11, v8, Lcom/appsflyer/internal/AFh1bSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/appsflyer/internal/AFh1bSDK;->d:Ljava/lang/String;

    if-eqz v10, :cond_6

    const-string v11, "c_ver"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-wide v10, v8, Lcom/appsflyer/internal/AFh1bSDK;->AFLogger:J

    cmp-long v12, v10, v5

    if-lez v12, :cond_7

    const-string v12, "latency"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-wide v10, v8, Lcom/appsflyer/internal/AFh1bSDK;->unregisterClient:J

    cmp-long v5, v10, v5

    if-lez v5, :cond_8

    const-string v5, "delay"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v5, v8, Lcom/appsflyer/internal/AFh1bSDK;->registerClient:I

    if-lez v5, :cond_9

    const-string v6, "res_code"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v5, v8, Lcom/appsflyer/internal/AFh1bSDK;->e:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lcom/appsflyer/internal/AFh1bSDK;->e:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/appsflyer/internal/AFh1bSDK;->e:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v5, v8, Lcom/appsflyer/internal/AFh1bSDK;->force:Lcom/appsflyer/internal/AFh1dSDK;

    if-eqz v5, :cond_b

    const-string v6, "sig"

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFh1dSDK;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v5, v8, Lcom/appsflyer/internal/AFh1bSDK;->w:Ljava/lang/String;

    if-eqz v5, :cond_c

    const-string v6, "cdn_cache_status"

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v5, "rc"

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1tSDK;->values()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object v5

    iget-object v6, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v6}, Lcom/appsflyer/internal/AFg1rSDK;->registerClient(Ljava/util/Map;)V

    const/4 v5, 0x2

    if-eq v0, v7, :cond_f

    if-eq v0, v5, :cond_e

    goto :goto_2

    :cond_e
    iget-object v6, p0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v8, v6, Lcom/appsflyer/internal/AFh1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v8, v3}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    iget-object v6, v6, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_f
    iget-object v6, p0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    new-instance v8, Ljava/util/HashMap;

    iget-object v9, v6, Lcom/appsflyer/internal/AFh1xSDK;->registerClient:Ljava/util/Map;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v6, v6, Lcom/appsflyer/internal/AFh1xSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "ddl"

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v6, p0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    new-instance v8, Ljava/util/HashMap;

    iget-object v6, v6, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1uSDK;->values:Lcom/appsflyer/internal/AFh1sSDK;

    if-nez v3, :cond_12

    goto :goto_3

    :cond_12
    if-eq v0, v7, :cond_14

    if-eq v0, v5, :cond_13

    goto :goto_3

    :cond_13
    instance-of v6, p1, Lcom/appsflyer/internal/AFh1kSDK;

    if-eqz v6, :cond_15

    invoke-interface {v3}, Lcom/appsflyer/internal/AFh1sSDK;->unregisterClient()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface {v3, p1}, Lcom/appsflyer/internal/AFh1sSDK;->unregisterClient(Lcom/appsflyer/internal/AFh1pSDK;)V

    goto :goto_3

    :cond_14
    invoke-interface {v3, p1}, Lcom/appsflyer/internal/AFh1sSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;)V

    :cond_15
    :goto_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    if-gt v0, v5, :cond_1f

    if-ne v0, v7, :cond_17

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1uSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFi1aSDK;

    iput-boolean v7, v1, Lcom/appsflyer/internal/AFi1aSDK;->AFLogger:Z

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1uSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFi1aSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFi1aSDK;->unregisterClient:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v3, v4, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    array-length v3, v2

    :goto_4
    if-ge v4, v3, :cond_1d

    aget-object v6, v2, v4

    instance-of v8, v6, Lcom/appsflyer/internal/AFi1gSDK;

    invoke-virtual {v6}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getState()Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    move-result-object v9

    sget-object v10, Lcom/appsflyer/internal/AFf1uSDK$AFa1ySDK;->AFLogger:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    if-eq v9, v7, :cond_1a

    if-eq v9, v5, :cond_19

    const/4 v6, 0x3

    if-ne v9, v6, :cond_18

    goto :goto_5

    :cond_18
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_19
    if-ne v0, v5, :cond_1c

    if-nez v8, :cond_1c

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "source"

    invoke-virtual {v6}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "response"

    const-string v10, "TIMEOUT"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "type"

    invoke-virtual {v6}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1a
    if-eqz v8, :cond_1b

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1tSDK;->getLevel()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v8

    const-string v9, "newGPReferrerSent"

    invoke-interface {v8, v9, v7}, Lcom/appsflyer/internal/AFc1kSDK;->registerClient(Ljava/lang/String;Z)V

    :cond_1b
    iget-object v6, v6, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "referrers"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    :cond_1e
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->v:Ljava/util/Map;

    if-eqz v0, :cond_1f

    const-string v1, "fb_ddl"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    :cond_1f
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->values:Lcom/appsflyer/internal/AFh1sSDK;

    if-nez v0, :cond_20

    goto :goto_6

    :cond_20
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1bSDK;

    if-ne v1, v2, :cond_21

    invoke-interface {v0}, Lcom/appsflyer/internal/AFh1sSDK;->registerClient()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFh1sSDK;->registerClient(Lcom/appsflyer/internal/AFh1pSDK;)V

    :cond_21
    :goto_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1tSDK;->values()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/appsflyer/internal/AFg1rSDK;->unregisterClient(Lcom/appsflyer/internal/AFh1pSDK;)V

    return-void
.end method

.method public final force()V
    .locals 11

    invoke-super {p0}, Lcom/appsflyer/internal/AFe1kSDK;->force()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1ySDK;->w:Lcom/appsflyer/internal/AFd1cSDK;

    sget-object v1, Lcom/appsflyer/internal/AFd1cSDK;->d:Lcom/appsflyer/internal/AFd1cSDK;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->afWarnLog:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/appsflyer/internal/AFc1eSDK;->onPause:J

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v2, v0, Lcom/appsflyer/internal/AFh1xSDK;->unregisterClient:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/appsflyer/internal/AFh1xSDK;->afErrorLog:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "net"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/appsflyer/internal/AFh1xSDK;->d:Ljava/util/Map;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, v0, Lcom/appsflyer/internal/AFh1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "first_launch"

    invoke-interface {v0, v5, v2}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v5, "Metrics collection skipped: launch start timestamp not recorded"

    invoke-virtual {v0, v2, v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->force:Lcom/appsflyer/internal/AFc1dSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/share/AppsFlyerConversionListener;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v4, v3

    :cond_4
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1ySDK;->w:Lcom/appsflyer/internal/AFd1cSDK;

    if-eq v2, v1, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    new-instance v1, Lcom/appsflyer/internal/AFg1lSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1tSDK;->getLevel()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appsflyer/internal/AFg1lSDK;-><init>(Lcom/appsflyer/internal/AFf1uSDK;Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/share/AppsFlyerConversionListener;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFe1wSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Lcom/appsflyer/internal/AFe1ySDK;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1uSDK;->values:Lcom/appsflyer/internal/AFh1sSDK;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/appsflyer/internal/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/appsflyer/internal/d;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p0, v1}, Lcom/appsflyer/internal/AFh1sSDK;->unregisterClient(Lcom/appsflyer/internal/AFf1uSDK;Lkotlin/jvm/functions/Function0;)V

    :cond_7
    return-void
.end method
