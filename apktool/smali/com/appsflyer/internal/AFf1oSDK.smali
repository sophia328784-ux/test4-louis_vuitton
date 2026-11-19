.class public final Lcom/appsflyer/internal/AFf1oSDK;
.super Lcom/appsflyer/internal/AFe1ySDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1ySDK<",
        "Lcom/appsflyer/internal/AFf1pSDK;",
        ">;"
    }
.end annotation


# instance fields
.field private final AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1iSDK;

.field private final AppsFlyerLib:Lcom/appsflyer/internal/AFc1eSDK;

.field private final afDebugLog:Lcom/appsflyer/internal/AFf1jSDK;

.field private final afErrorLog:Lcom/appsflyer/internal/AFd1sSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFf1fSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;

.field public e:Lcom/appsflyer/internal/AFh1bSDK;

.field public final force:Lcom/appsflyer/internal/AFf1mSDK;

.field private final getLevel:Ljava/lang/String;

.field public i:Lcom/appsflyer/internal/AFf1pSDK;

.field private final v:Lcom/appsflyer/internal/AFf1nSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1nSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFf1kSDK;Lcom/appsflyer/internal/AFc1eSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1mSDK;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->d:Lcom/appsflyer/internal/AFd1bSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1zSDK;

    const-string v2, "UpdateRemoteConfiguration"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFe1zSDK;[Lcom/appsflyer/internal/AFe1zSDK;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1oSDK;->v:Lcom/appsflyer/internal/AFf1nSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFf1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFf1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1fSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFf1oSDK;->afDebugLog:Lcom/appsflyer/internal/AFf1jSDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFf1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1sSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFf1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;

    iput-object p7, p0, Lcom/appsflyer/internal/AFf1oSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object p8, p0, Lcom/appsflyer/internal/AFf1oSDK;->getLevel:Ljava/lang/String;

    iput-object p9, p0, Lcom/appsflyer/internal/AFf1oSDK;->force:Lcom/appsflyer/internal/AFf1mSDK;

    return-void
.end method

.method private final AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V
    .locals 14

    iget-object v0, p1, Lcom/appsflyer/internal/AFf1xSDK;->d:Lcom/appsflyer/internal/AFd1fSDK;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    iget-wide v1, v1, Lcom/appsflyer/internal/AFd1nSDK;->registerClient:J

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1fSDK;->getStatusCode()I

    move-result v0

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p1, Lcom/appsflyer/internal/AFf1xSDK;->v:Ljava/lang/Throwable;

    instance-of v3, v0, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;->getMetrics()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    iget-wide v2, v0, Lcom/appsflyer/internal/AFd1nSDK;->registerClient:J

    move-object v13, v1

    move-wide v6, v2

    goto :goto_2

    :cond_1
    move-object v13, v0

    move-wide v6, v1

    :goto_2
    iget-object v0, p1, Lcom/appsflyer/internal/AFf1xSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1aSDK;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/appsflyer/internal/AFh1aSDK;->AFKeystoreWrapper:Ljava/lang/String;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:J

    sub-long v8, v0, v2

    new-instance v3, Lcom/appsflyer/internal/AFh1bSDK;

    iget-object v5, p1, Lcom/appsflyer/internal/AFf1xSDK;->AFLogger:Ljava/lang/String;

    iget-object v11, p1, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1dSDK;

    iget-object v12, p1, Lcom/appsflyer/internal/AFf1xSDK;->e:Ljava/lang/String;

    invoke-direct/range {v3 .. v13}, Lcom/appsflyer/internal/AFh1bSDK;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/appsflyer/internal/AFf1oSDK;->e:Lcom/appsflyer/internal/AFh1bSDK;

    return-void
.end method

.method private final d(Ljava/lang/String;JLjava/io/IOException;Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/IOException;",
            "Lcom/appsflyer/internal/AFd1fSDK<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to fetch remote config: "

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    new-instance v12, Lcom/appsflyer/internal/AFf1xSDK;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-object/from16 v20, p4

    move-object/from16 v16, p5

    invoke-direct/range {v12 .. v20}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/lang/String;JLcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V

    return-void
.end method

.method private final e()Lcom/appsflyer/internal/AFf1pSDK;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, " seconds"

    const-string v2, "failed to fetch remote config from CDN with status code: "

    const-string v3, "Config successfully updated, timeToLive: "

    const-string v4, "using max-age fallback: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v5, v1, Lcom/appsflyer/internal/AFf1oSDK;->getLevel:Ljava/lang/String;

    iget-object v6, v1, Lcom/appsflyer/internal/AFf1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1fSDK;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const v10, -0x62ff1f55

    const v11, 0x62ff1f57

    invoke-static {v9, v10, v11, v6}, Lcom/appsflyer/internal/AFf1fSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    sget-object v13, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v14, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v15, "Can\'t create CDN token, domain or version is not provided."

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    move-object v6, v9

    goto :goto_2

    :cond_1
    iget-object v9, v1, Lcom/appsflyer/internal/AFf1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v9, v9, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v9, v9, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "appsflyersdk.com"

    filled-new-array {v12, v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u2063"

    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/appsflyer/internal/AFj1nSDK;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v14, "Dev key is not set, SDK is not started."

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :goto_2
    if-nez v6, :cond_3

    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v14, "can\'t create CDN token, skipping fetch config"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->v$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    return-object v0

    :cond_3
    :try_start_0
    iget-object v5, v1, Lcom/appsflyer/internal/AFf1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;
    :try_end_0
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v5, v5, Lcom/appsflyer/internal/AFf1kSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v9, v1, Lcom/appsflyer/internal/AFf1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;

    iget-object v9, v9, Lcom/appsflyer/internal/AFf1kSDK;->registerClient:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v12, v1, Lcom/appsflyer/internal/AFf1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;

    iget-object v13, v12, Lcom/appsflyer/internal/AFf1kSDK;->d:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v13, v13, Lcom/appsflyer/internal/AFc1eSDK;->getOutOfStore:Ljava/lang/String;
    :try_end_1
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v13, :cond_4

    :try_start_2
    sget-object v14, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v15, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v16, "Cold start detected - fetching config from CDN"

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-wide/from16 v18, v7

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    :goto_4
    move-object v10, v0

    move-wide v3, v7

    goto/16 :goto_13

    :catch_0
    move-exception v0

    :goto_5
    move-object v5, v0

    :goto_6
    move-object v2, v6

    goto/16 :goto_14

    :catch_1
    move-exception v0

    :goto_7
    move-object v5, v0

    :goto_8
    move-object v2, v6

    goto/16 :goto_15

    :cond_4
    :try_start_3
    iget-object v13, v12, Lcom/appsflyer/internal/AFf1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;

    iget-object v13, v13, Lcom/appsflyer/internal/AFf1jSDK;->AFLogger:Lcom/appsflyer/internal/AFh1aSDK;
    :try_end_3
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v13, :cond_5

    :try_start_4
    sget-object v14, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v15, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v16, "active config is missing - fetching from CDN"

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_4
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_5
    iget-object v13, v13, Lcom/appsflyer/internal/AFh1aSDK;->registerClient:Lcom/appsflyer/internal/AFh1gSDK;
    :try_end_5
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v14, 0x0

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v13, :cond_6

    :try_start_6
    iget-object v13, v13, Lcom/appsflyer/internal/AFh1gSDK;->unregisterClient:Lcom/appsflyer/internal/AFh1cSDK;

    if-eqz v13, :cond_6

    iget-wide v10, v13, Lcom/appsflyer/internal/AFh1cSDK;->d:J

    invoke-virtual {v15, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {}, Lcom/appsflyer/internal/AFh1cSDK;->registerClient()J

    move-result-wide v18
    :try_end_6
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v10, v10, v18

    if-lez v10, :cond_6

    const/4 v14, 0x1

    :cond_6
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v12, Lcom/appsflyer/internal/AFf1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;
    :try_end_7
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-wide/from16 v18, v7

    :try_start_8
    iget-wide v7, v12, Lcom/appsflyer/internal/AFf1jSDK;->registerClient:J

    sub-long/2addr v10, v7

    iget-wide v7, v12, Lcom/appsflyer/internal/AFf1jSDK;->unregisterClient:J

    invoke-virtual {v15, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7
    :try_end_8
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v14, :cond_8

    cmp-long v7, v10, v7

    if-lez v7, :cond_7

    goto :goto_9

    :cond_7
    :try_start_9
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v11, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v12, "Using cached config (warm start, config valid)"

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->d:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_9
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-wide/from16 v3, v18

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v2, v6

    move-wide/from16 v7, v18

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v2, v6

    move-wide/from16 v7, v18

    goto/16 :goto_15

    :cond_8
    :goto_9
    :try_start_a
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v12, "Fetching config (cold start or stale)..."

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v7

    move-object v11, v8

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v10, v1, Lcom/appsflyer/internal/AFf1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1sSDK;

    const/16 v11, 0x5dc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v5, v9, v6, v12}, [Ljava/lang/Object;

    move-result-object v5

    const v9, 0x70f95d4b

    const v10, -0x70f95d49

    invoke-static {v5, v9, v10, v11}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFd1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1fSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFd1fSDK;->isSuccessful()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFd1fSDK;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/appsflyer/internal/AFh1aSDK;

    const-string v9, "x-amz-meta-af-auth-v1"

    invoke-virtual {v5, v9}, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "CF-Cache-Status"

    invoke-virtual {v5, v9}, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "af-net-tkn"

    invoke-virtual {v5, v9}, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_a
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v9, :cond_a

    :try_start_b
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_9

    goto :goto_a

    :cond_9
    iget-object v10, v1, Lcom/appsflyer/internal/AFf1oSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object v9, v10, Lcom/appsflyer/internal/AFc1eSDK;->getOutOfStore:Ljava/lang/String;
    :try_end_b
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_b

    :cond_a
    :goto_a
    :try_start_c
    const-string v9, "Network token header not present in the response"

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_b
    iget-object v9, v1, Lcom/appsflyer/internal/AFf1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1fSDK;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    const v11, -0x62ff1f55

    const v12, 0x62ff1f57

    invoke-static {v10, v11, v12, v9}, Lcom/appsflyer/internal/AFf1fSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_b

    invoke-static {v9}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    move-wide/from16 v3, v18

    goto/16 :goto_12

    :cond_c
    iget-object v10, v1, Lcom/appsflyer/internal/AFf1oSDK;->v:Lcom/appsflyer/internal/AFf1nSDK;

    invoke-virtual {v10, v2, v13, v6, v9}, Lcom/appsflyer/internal/AFf1nSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1aSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1uSDK;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v13, Lcom/appsflyer/internal/AFi1uSDK;->AFKeystoreWrapper:Z
    :try_end_c
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v9, :cond_d

    :try_start_d
    iget-object v9, v1, Lcom/appsflyer/internal/AFf1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1kSDK;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFf1kSDK;->AFKeystoreWrapper()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-wide v15, v9

    const/4 v10, 0x0

    move-object v9, v4

    move-object/from16 v17, v5

    move-wide v4, v15

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->v$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v1, Lcom/appsflyer/internal/AFf1oSDK;->afDebugLog:Lcom/appsflyer/internal/AFf1jSDK;

    iget-object v12, v2, Lcom/appsflyer/internal/AFh1aSDK;->d:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const/4 v15, 0x2

    invoke-static {v12, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v11, Lcom/appsflyer/internal/AFf1jSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;
    :try_end_d
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v16, v6

    :try_start_e
    const-string v6, "af_remote_config"

    invoke-interface {v15, v6, v12}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v11, Lcom/appsflyer/internal/AFf1jSDK;->AFLogger:Lcom/appsflyer/internal/AFh1aSDK;

    iput-object v6, v11, Lcom/appsflyer/internal/AFf1jSDK;->d:Lcom/appsflyer/internal/AFh1aSDK;

    iget-object v6, v11, Lcom/appsflyer/internal/AFf1jSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v12, "af_rc_timestamp"

    invoke-interface {v6, v12, v9, v10}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;J)V

    iget-object v6, v11, Lcom/appsflyer/internal/AFf1jSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v12, "af_rc_max_age"

    invoke-interface {v6, v12, v4, v5}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;J)V

    iput-object v2, v11, Lcom/appsflyer/internal/AFf1jSDK;->AFLogger:Lcom/appsflyer/internal/AFh1aSDK;

    iput-wide v9, v11, Lcom/appsflyer/internal/AFf1jSDK;->registerClient:J

    iput-wide v4, v11, Lcom/appsflyer/internal/AFf1jSDK;->unregisterClient:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v5, Lcom/appsflyer/internal/AFf1xSDK;

    invoke-virtual/range {v17 .. v17}, Lcom/appsflyer/internal/AFd1fSDK;->getBody()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/appsflyer/internal/AFh1aSDK;

    iget-object v11, v13, Lcom/appsflyer/internal/AFi1uSDK;->AFLogger:Lcom/appsflyer/internal/AFh1dSDK;
    :try_end_e
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v13, 0x0

    move-object v12, v14

    move-object/from16 v6, v16

    move-object/from16 v9, v17

    move-wide/from16 v7, v18

    :try_start_f
    invoke-direct/range {v5 .. v13}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/lang/String;JLcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v5}, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFLogger:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_f
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v6, v16

    :goto_c
    move-wide/from16 v7, v18

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v6, v16

    :goto_d
    move-wide/from16 v7, v18

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v6, v16

    :goto_e
    move-wide/from16 v7, v18

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_e

    :cond_d
    move-object v9, v5

    move-object v0, v7

    move-object v2, v8

    move-object v12, v14

    move-wide/from16 v7, v18

    :try_start_10
    new-instance v5, Lcom/appsflyer/internal/AFf1xSDK;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFd1fSDK;->getBody()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/appsflyer/internal/AFh1aSDK;

    iget-object v11, v13, Lcom/appsflyer/internal/AFi1uSDK;->AFLogger:Lcom/appsflyer/internal/AFh1dSDK;

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/lang/String;JLcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-wide v3, v7

    :try_start_11
    invoke-direct {v1, v5}, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V

    const-string v9, "fetched config is not valid (MITM?) refuse to use it."

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move-object v8, v2

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    return-object v0

    :catchall_4
    move-exception v0

    :goto_f
    move-object v10, v0

    goto/16 :goto_13

    :catch_8
    move-exception v0

    :goto_10
    move-object v5, v0

    move-wide v7, v3

    goto/16 :goto_6

    :catch_9
    move-exception v0

    :goto_11
    move-object v5, v0

    move-wide v7, v3

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    move-wide v3, v7

    goto :goto_f

    :catch_a
    move-exception v0

    move-wide v3, v7

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-wide v3, v7

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    move-wide/from16 v3, v18

    goto :goto_f

    :catch_c
    move-exception v0

    move-wide/from16 v3, v18

    goto :goto_10

    :catch_d
    move-exception v0

    move-wide/from16 v3, v18

    goto :goto_11

    :goto_12
    const-string v9, "Dev key is not set, SDK is not started."

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    return-object v0

    :cond_e
    move-object v9, v5

    move-object v0, v7

    move-object v14, v8

    move-wide/from16 v3, v18

    new-instance v5, Lcom/appsflyer/internal/AFf1xSDK;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFd1fSDK;->getBody()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/appsflyer/internal/AFh1aSDK;
    :try_end_11
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-wide v7, v3

    :try_start_12
    invoke-direct/range {v5 .. v13}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/lang/String;JLcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    invoke-direct {v1, v5}, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFd1fSDK;->getStatusCode()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move-object v8, v14

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_13
    .catch Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    return-object v0

    :goto_13
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed to update remote config: "

    invoke-static {v2, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v15, 0x40

    const/16 v16, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v16}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    new-instance v5, Lcom/appsflyer/internal/AFf1xSDK;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move-wide v7, v3

    invoke-direct/range {v5 .. v13}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/lang/String;JLcom/appsflyer/internal/AFd1fSDK;Lcom/appsflyer/internal/AFh1aSDK;Lcom/appsflyer/internal/AFh1dSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v13

    invoke-direct {v1, v5}, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1xSDK;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_f

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    goto :goto_16

    :cond_f
    throw v0

    :goto_14
    const/4 v6, 0x0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFf1oSDK;->d(Ljava/lang/String;JLjava/io/IOException;Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_10

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    goto :goto_16

    :cond_10
    throw v0

    :goto_15
    invoke-virtual {v5}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFd1fSDK;

    move-result-object v6

    move-object/from16 v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFf1oSDK;->d(Ljava/lang/String;JLjava/io/IOException;Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_11

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    :goto_16
    return-object v0

    :cond_11
    throw v0
.end method


# virtual methods
.method public final AFLogger()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()J
    .locals 2

    .line 51
    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method public final registerClient()Lcom/appsflyer/internal/AFd1cSDK;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1oSDK;->e()Lcom/appsflyer/internal/AFf1pSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->i:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/appsflyer/internal/AFd1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1cSDK;

    return-object p0

    :cond_0
    sget-object p0, Lcom/appsflyer/internal/AFd1cSDK;->d:Lcom/appsflyer/internal/AFd1cSDK;

    return-object p0

    :catch_0
    move-exception v0

    move-object v4, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v3, "RC update config failed"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->i:Lcom/appsflyer/internal/AFf1pSDK;

    sget-object p0, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    return-object p0

    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v3, "RC update config failed"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->i:Lcom/appsflyer/internal/AFf1pSDK;

    sget-object p0, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    return-object p0

    :catch_2
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->i:Lcom/appsflyer/internal/AFf1pSDK;

    sget-object p0, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    return-object p0
.end method
