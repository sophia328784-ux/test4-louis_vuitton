.class public final Lcom/appsflyer/internal/AFg1oSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFg1rSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AppsFlyerLib:I = 0x0

.field private static getEntries:J = 0x0L

.field private static getLevel:I = 0x1

.field private static valueOf:[C


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1qSDK;

.field private final AFLogger:Landroid/content/Context;

.field private final AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

.field private final afDebugLog:Lkotlin/Lazy;

.field private final afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

.field private final afInfoLog:Lcom/appsflyer/internal/AFf1bSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFd1zSDK;

.field private final d:Lcom/appsflyer/internal/AFj1cSDK;

.field private final e:Lcom/appsflyer/internal/AFc1kSDK;

.field private final force:Lcom/appsflyer/internal/AFi1vSDK;

.field private final i:Lcom/appsflyer/internal/AFc1iSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFj1ySDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFg1wSDK;

.field private final v:Lcom/appsflyer/internal/AFh1xSDK;

.field private final w:Lcom/appsflyer/internal/AFf1fSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFg1oSDK;->valueOf:[C

    const-wide v0, 0x6f607c584bcd406cL    # 3.12431422391539E228

    sput-wide v0, Lcom/appsflyer/internal/AFg1oSDK;->getEntries:J

    return-void

    nop

    :array_0
    .array-data 2
        0x3643s
        0x7aaas
        -0x5065s
        -0x2f1cs
        0x5c9s
        -0x49e9s
        -0x4e0s
        0x2c1as
        0x517bs
        -0x7db0s
        0x36b1s
        0x7b83s
        -0x5374s
        -0x2e01s
        0x2d4s
        0x4557s
        0x9a1s
        -0x2368s
        -0x5c17s
        0x76c9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/internal/AFj1cSDK;Lcom/appsflyer/internal/AFg1wSDK;Lcom/appsflyer/internal/AFj1ySDK;Lcom/appsflyer/internal/AFg1qSDK;Lcom/appsflyer/internal/AFh1xSDK;Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFi1vSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/internal/AFd1zSDK;Lcom/appsflyer/internal/AFf1bSDK;Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/AppsFlyerProperties;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    iput-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1wSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFg1oSDK;->registerClient:Lcom/appsflyer/internal/AFj1ySDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1qSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFh1xSDK;

    iput-object p7, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    iput-object p8, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p9, p0, Lcom/appsflyer/internal/AFg1oSDK;->force:Lcom/appsflyer/internal/AFi1vSDK;

    iput-object p10, p0, Lcom/appsflyer/internal/AFg1oSDK;->w:Lcom/appsflyer/internal/AFf1fSDK;

    iput-object p11, p0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1zSDK;

    iput-object p12, p0, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1bSDK;

    iput-object p13, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object p14, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    new-instance p1, Lr61;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lr61;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->afDebugLog:Lkotlin/Lazy;

    return-void
.end method

.method private static AFKeystoreWrapper()J
    .locals 4

    .line 191
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-wide v0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;
    .locals 10

    if-eqz p0, :cond_3

    .line 227
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 228
    :try_start_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 229
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v0, 0x37

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_1
    if-eqz v1, :cond_3

    .line 230
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 231
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 232
    const-string p0, "Failed to create File object from path"

    :cond_2
    move-object v2, p0

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 233
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic AFKeystoreWrapper([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Ljava/util/Map;

    .line 186
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 187
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->getOutOfStore:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 188
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    throw v1

    .line 189
    :cond_1
    const-string v2, "net_token"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "Network token added to event"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v1
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFb1qSDK;)V
    .locals 1

    .line 234
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x7cba2bec

    const v0, 0x7cba2bed

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 199
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "prev_event_name"

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const-string v2, "prev_event_timestamp"

    if-eqz v0, :cond_0

    .line 203
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 204
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-wide/16 v5, -0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/appsflyer/internal/AFc1kSDK;->unregisterClient(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 205
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v0, "prev_event"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 208
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p1, v1, p2}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-interface {p0, v2, p1, p2}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p0, 0x0

    .line 212
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 213
    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 214
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x78

    const/4 v9, 0x0

    const-string v2, "Failed to save previous event metadata to preferences"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method private AFKeystoreWrapper(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 192
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "platformextension"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFj1cSDK;->unregisterClient()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x41

    .line 194
    div-int/lit8 v0, v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFj1cSDK;->unregisterClient()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 197
    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFj1cSDK;->AFLogger()Ljava/util/Map;

    move-result-object p0

    const-string p2, "platform_extension_v2"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_2
    return-void
.end method

.method private static synthetic AFLogger([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Ljava/util/Map;

    .line 147
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const-string v3, "is_pc"

    const-string v4, "com.google.android.play.feature.HPE_EXPERIENCE"

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 152
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    throw v2
.end method

.method private static AFLogger(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 159
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    const/4 v1, 0x0

    .line 160
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    .line 164
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 165
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const-string p0, "Failed to retrieve system property via reflection"

    :cond_0
    move-object v4, p0

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 166
    invoke-static/range {v2 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-object v1
.end method

.method private AFLogger(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "appsFlyerFirstInstall"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->SDK_LIFECYCLE:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "First app launch detected, recording install timestamp"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const-string p1, ""

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string p0, "AppsFlyer: first launch date: "

    invoke-static {p0, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method private final AFLogger()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 111
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afDebugLog:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private static AFLogger(Ljava/util/Map;Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFh1pSDK;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    const-string v1, "eventName"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string v0, "eventValue"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static AFLogger(Ljava/io/File;)Z
    .locals 3

    .line 167
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    throw v2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    throw v2
.end method

.method private static final AFLoggerLogLevel()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HHmmssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 113
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private static AFLoggerLogLevel(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    rsub-int v1, v1, 0x49c0

    int-to-char v1, v1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lcom/appsflyer/internal/AFg1oSDK;->a(ICI[Ljava/lang/Object;)V

    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "product"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceType"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private AppsFlyerLib(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x115b7027

    const v1, -0x115b7023

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 96
    invoke-static {}, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static a(ICI[Ljava/lang/Object;)V
    .locals 12

    new-instance v0, Lcom/appsflyer/internal/AFk1qSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1qSDK;-><init>()V

    new-array v1, p2, [J

    const/4 v2, 0x0

    iput v2, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    :goto_0
    iget v3, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    if-ge v3, p2, :cond_0

    sget v4, Lcom/appsflyer/internal/AFg1oSDK;->$10:I

    add-int/lit8 v4, v4, 0x5

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1oSDK;->$11:I

    sget-object v4, Lcom/appsflyer/internal/AFg1oSDK;->valueOf:[C

    add-int v5, p0, v3

    aget-char v4, v4, v5

    int-to-long v4, v4

    const-wide v6, 0x61f05630e4830c8aL    # 5.879786475623869E163

    xor-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    int-to-long v4, v4

    int-to-long v8, v3

    sget-wide v10, Lcom/appsflyer/internal/AFg1oSDK;->getEntries:J

    xor-long/2addr v6, v10

    mul-long/2addr v8, v6

    xor-long/2addr v4, v8

    int-to-long v6, p1

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    goto :goto_0

    :cond_0
    new-array p0, p2, [C

    iput v2, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    :goto_1
    iget p1, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    if-ge p1, p2, :cond_1

    aget-wide v3, v1, p1

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/appsflyer/internal/AFk1qSDK;->unregisterClient:I

    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->$10:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->$11:I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->$10:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->$11:I

    aput-object p1, p3, v2

    return-void
.end method

.method private static afDebugLog()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFd1bSDK;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x661e25a9

    const v3, -0x661e259e

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private afDebugLog(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 21
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, -0x3c31bce9

    const v1, 0x3c31bcee

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final afErrorLog()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "androidIdCached"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const-string p0, "Failed to retrieve Android ID from Settings.Secure"

    :cond_0
    move-object v4, p0

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    :cond_1
    if-eqz v1, :cond_2

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string p0, "Using cached Android ID (current retrieval failed): "

    invoke-static {p0, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final afErrorLog(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 94
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 95
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1wSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/appsflyer/internal/AFg1wSDK;->registerClient(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;

    move-result-object p0

    .line 96
    iget p0, p0, Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;->unregisterClient:F

    .line 97
    const-string v0, "batteryLevel"

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private final afInfoLog(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x34be08fe

    const v1, -0x34be08f5    # -1.2711691E7f

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final afInfoLog()Z
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->afWarnLog:Z

    if-nez v0, :cond_2

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1qSDK;->AFLogger(Landroid/content/Context;)Z

    move-result p0

    if-nez v0, :cond_0

    const/16 v0, 0x47

    div-int/2addr v0, v1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final afWarnLog()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.appsflyer.preinstall.path"

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AF_PRE_INSTALL_PATH"

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "/data/local/tmp/pre_install.appsflyer"

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "/etc/pre_install.appsflyer"

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xe3d0b64

    const v2, -0xe3d0b5a

    invoke-static {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final afWarnLog(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 106
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 108
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    const-string v0, "tv"

    if-eqz p0, :cond_0

    .line 109
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x5d

    .line 110
    div-int/lit8 p0, p0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_1
    return-void
.end method

.method private static synthetic d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/AFh1pSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "open_referrer"

    .line 209
    iget-object v3, p0, Lcom/appsflyer/internal/AFh1pSDK;->e:Ljava/lang/String;

    .line 210
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1pSDK;->afInfoLog:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 212
    sget v3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 213
    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    .line 215
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->afInfoLog:Ljava/lang/String;

    .line 216
    const-string v3, "af_web_referrer"

    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x4b

    .line 218
    div-int/2addr p0, v0

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 195
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/appsflyer/sdk_base/util/AndroidExtensionsKt;->signature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/appsflyer/sdk_base/util/AndroidExtensionsKt;->signature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method private static d(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 220
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p1, v0

    const v0, 0xe3d0b64

    const v1, -0xe3d0b5a

    invoke-static {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 196
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    .line 197
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 198
    iget-boolean v0, v2, Lcom/appsflyer/internal/AFc1eSDK;->afWarnLog:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x27

    .line 199
    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    throw v3

    :cond_1
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog()Z

    throw v3

    :cond_4
    if-eqz p1, :cond_2

    :goto_1
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object p1

    .line 205
    :cond_5
    iget-boolean p0, v2, Lcom/appsflyer/internal/AFc1eSDK;->afWarnLog:Z

    .line 206
    throw v3
.end method

.method private d(Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string v1, "ro.product.cpu.abi"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "ro.product.cpu.abi2"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "os.arch"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_display_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    .line 183
    sget p2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const/4 v2, 0x5

    add-int/2addr p2, v2

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/2addr p2, v1

    const/4 v3, 0x0

    const-string v4, "appsFlyerCount"

    const v5, -0x6b37e21c

    const v6, 0x6b37e224

    if-nez p2, :cond_0

    .line 184
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p2, v6, v5, v7}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 185
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 186
    iget-object p2, p2, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p2, v4, v3}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result p2

    if-gt p2, v2, :cond_1

    goto :goto_0

    .line 187
    :cond_0
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p2, v6, v5, v2}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 188
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 189
    iget-object p2, p2, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p2, v4, v3}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result p2

    if-gt p2, v1, :cond_1

    .line 190
    :goto_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->registerClient:Lcom/appsflyer/internal/AFj1ySDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFj1ySDK;->AFLogger()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1qSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-interface {p2, p0}, Lcom/appsflyer/internal/AFg1qSDK;->registerClient(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 192
    const-string p2, "dim"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string p0, "deviceData"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private static synthetic e([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    const-string v1, "Error closing preinstall configuration file reader: "

    const-string v2, "unknown error"

    const-string v0, "Preinstall configuration file not found at path: "

    const-string v3, "Error reading preinstall configuration file: "

    const/4 v4, 0x0

    aget-object v5, p0, v4

    check-cast v5, Ljava/io/File;

    const/4 v6, 0x1

    aget-object v6, p0, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v5, :cond_1

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    throw v7

    :cond_1
    :try_start_0
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v14, "Preinstall configuration file found and loaded successfully"

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    move-object v13, v0

    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v11, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x78

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v19}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-object v3

    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v5, v9

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v11, v0

    move-object v5, v7

    :goto_1
    :try_start_3
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v9, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x78

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v17}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v5, :cond_7

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    const/16 v0, 0x3c

    div-int/2addr v0, v4

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :goto_2
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v9, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x78

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v17}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :catch_0
    move-object v9, v7

    :catch_1
    :try_start_5
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v11, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v9, :cond_7

    :try_start_6
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v19, v0

    sget-object v16, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v17, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v0

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v24, 0x78

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v25}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :cond_7
    :goto_5
    return-object v7

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object v5, v9

    :goto_6
    if-nez v5, :cond_8

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    goto :goto_8

    :cond_8
    :try_start_7
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v7, v0

    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->PREINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v2, v0

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x78

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :goto_8
    throw v3
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 319
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 320
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v0, :cond_2

    .line 321
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1eSDK;->getLevel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "AF_STORE"

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x55

    div-int/lit8 p0, p0, 0x0

    :cond_1
    return-object v0

    .line 323
    :cond_2
    iget-object p0, v1, Lcom/appsflyer/internal/AFc1eSDK;->getLevel:Ljava/lang/String;

    const/4 p0, 0x0

    .line 324
    throw p0
.end method

.method private e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFh1xSDK;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsflyer/internal/AFh1xSDK;->AFLogger:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 328
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1xSDK;->AFLogger:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 329
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "gcd"

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 331
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 332
    invoke-static {p1}, Lcom/appsflyer/internal/AFj1iSDK;->AFLogger(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 333
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 334
    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-void
.end method

.method private enableTCFDataCollection(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "af_preinstalled"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-void
.end method

.method private static synthetic force([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFh1pSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1iSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-boolean v3, v2, Lcom/appsflyer/internal/AFc1eSDK;->setAndroidIdData:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->updateServerUninstallToken:Lcom/appsflyer/internal/AFh1qSDK;

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    iget-object v3, v2, Lcom/appsflyer/internal/AFh1qSDK;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "gaidError"

    iget-object v5, v2, Lcom/appsflyer/internal/AFh1qSDK;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    :cond_2
    :goto_0
    iget-object v3, v2, Lcom/appsflyer/internal/AFh1qSDK;->AFLogger:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget v5, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v5, v5, 0x4b

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    iget-object v5, v2, Lcom/appsflyer/internal/AFh1qSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    const-string v5, "advertiserId"

    invoke-virtual {p0, v5, v3}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    iget-object v3, v2, Lcom/appsflyer/internal/AFh1qSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "advertiserIdEnabled"

    invoke-virtual {p0, v5, v3}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFh1qSDK;->d:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isGaidWithGps"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    goto :goto_1

    :cond_3
    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "ad_ids_disabled"

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appsflyer/internal/AFj1iSDK;->AFLogger(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_4
    :goto_1
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1iSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->updateServerUninstallToken:Lcom/appsflyer/internal/AFh1qSDK;

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/appsflyer/internal/AFh1qSDK;->i:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GAID_retry"

    invoke-virtual {p0, v2, v0}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1pSDK;

    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1bSDK;

    filled-new-array {v0, v2}, [Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->setOaidData:Lcom/appsflyer/internal/AFd1nSDK;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1iSDK;->AFLogger(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    iget-wide v0, v0, Lcom/appsflyer/internal/AFd1nSDK;->registerClient:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fetchAdIdLatency"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v4

    :cond_7
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1iSDK;->AFLogger(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v4
.end method

.method private force()Ljava/lang/String;
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "INSTALL_STORE"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-object v0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v2, v2, 0x2

    .line 220
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    if-nez v2, :cond_1

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x61

    .line 221
    div-int/lit8 p0, p0, 0x0

    return-object v0

    .line 222
    :cond_1
    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private final force(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 223
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x6b37e224

    const v1, -0x6b37e21c

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private getEntries(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->v:Lcom/appsflyer/internal/AFh1xSDK;

    iget-wide v0, p0, Lcom/appsflyer/internal/AFh1xSDK;->afInfoLog:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "prev_session_dur"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-void
.end method

.method private getInstance(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, "is_stop_tracking_used"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFc1kSDK;->registerClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p0, v2}, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "istu"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    return-void

    :cond_1
    throw v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p0, v2}, Lcom/appsflyer/internal/AFc1kSDK;->registerClient(Ljava/lang/String;)Z

    throw v1
.end method

.method private getLevel(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "CHANNEL"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e

    div-int/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    if-nez v4, :cond_4

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    if-eqz v2, :cond_5

    :cond_4
    const-string v1, "af_latestchannel"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->force()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "af_installstore"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "af_preinstall_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "af_currentstore"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private getSdkVersion(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1iSDK;->h_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1lSDK;

    move-result-object p0

    if-eqz p0, :cond_2

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, "amazon_aid_limit"

    const-string v3, "amazon_aid"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1lSDK;->d:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1lSDK;->AFLogger:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw v1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1lSDK;->d:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1lSDK;->AFLogger:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :cond_2
    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->AppsFlyerLib:Ljava/lang/String;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    const-string v1, "onelinkVersion"

    invoke-interface {p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "onelink_id"

    if-eqz v1, :cond_0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3b

    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    const-string v0, "onelink_ver"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    :cond_2
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method private i()Z
    .locals 2

    .line 80
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "sentSuccessfully"

    invoke-interface {p0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const/4 p0, 0x0

    throw p0
.end method

.method private onPause(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "didConfigureTokenRefreshService="

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1vSDK;->registerClient(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->UNINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1vSDK;->registerClient(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->UNINSTALL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez v0, :cond_2

    :goto_0
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "tokenRefreshConfigured"

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    div-int/lit8 v0, v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v0, "sentRegisterRequestToAF"

    invoke-interface {p0, v0}, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "registeredUninstall"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerClient()Ljava/lang/Long;
    .locals 2

    .line 307
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/16 v0, 0x1c

    div-int/lit8 v0, v0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic registerClient([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFg1oSDK;

    .line 308
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private static registerClient(Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 309
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 310
    const-string v0, "CACHED_CHANNEL"

    invoke-interface {p0, v0}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object v1

    .line 312
    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x22

    div-int/lit8 p0, p0, 0x0

    :cond_1
    return-object p1
.end method

.method private final registerClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 314
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object p0
.end method

.method private registerClient(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 282
    iget-boolean v1, v0, Lcom/appsflyer/internal/AFc1eSDK;->afInfoLog:Z

    if-eqz v1, :cond_1

    .line 283
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    const-string p2, "true"

    const-string v0, "deviceTrackingDisabled"

    if-nez p0, :cond_0

    .line 284
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x29

    div-int/lit8 p0, p0, 0x0

    return-void

    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 285
    :cond_1
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->AFLoggerLogLevel:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 286
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 288
    const-string v1, "imei"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFg1oSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 290
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 291
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "androidIdCached"

    invoke-interface {v0, v1, p2}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "android_id"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->ADVERTISING_ID:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Android ID collection skipped: not available or not permitted"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 294
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1iSDK;->unregisterClient(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1lSDK;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 295
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    const-string v0, "isManual"

    .line 297
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1lSDK;->unregisterClient:Ljava/lang/Boolean;

    .line 298
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "val"

    .line 300
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1lSDK;->d:Ljava/lang/String;

    .line 301
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1lSDK;->AFLogger:Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 303
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "isLat"

    if-eqz v1, :cond_5

    .line 304
    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    throw v0

    :cond_6
    :goto_2
    const-string p0, "oaid"

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    throw v0

    :cond_8
    :goto_3
    return-void
.end method

.method private setImeiData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v1, "AF_COLLECT_FACEBOOK_ATTR_ID"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFc1iSDK;->registerClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const-string v0, "fb"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-void
.end method

.method private setOaidData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->w:Lcom/appsflyer/internal/AFf1fSDK;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v1, -0x62ff1f55

    const v2, 0x62ff1f57

    invoke-static {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFf1fSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "appsflyerKey"

    if-eqz v0, :cond_1

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-void
.end method

.method private static stop(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "lang"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    throw p0

    :goto_0
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "Failed to retrieve device display language name"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    :try_start_3
    const-string v0, "lang_code"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "Failed to retrieve device language code"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :goto_2
    :try_start_4
    const-string v0, "country"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x78

    const/4 v9, 0x0

    const-string v2, "Failed to retrieve device country code"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method private static synthetic unregisterClient([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Lcom/appsflyer/internal/AFh1pSDK;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFb1qSDK;

    .line 361
    sget v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v3, v3, 0x59

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 362
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    iget-object v3, v1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 364
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v1

    sget-object v5, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    if-ne v1, v5, :cond_1

    .line 365
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/2addr v1, v2

    const v2, -0x34be08f5    # -1.2711691E7f

    const v5, 0x34be08fe

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog(Ljava/util/Map;)V

    .line 367
    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog(Ljava/util/Map;)V

    .line 368
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v5, v2, v6}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 369
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v2, v0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v5, v0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {v1, v2, v5}, Lcom/appsflyer/internal/AFa1uSDK;->unregisterClient(Lcom/appsflyer/internal/AFd1zSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog(Ljava/util/Map;)V

    .line 371
    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog(Ljava/util/Map;)V

    .line 372
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, v5, v2, v1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 373
    iget-object p0, v0, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v1, v0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {p0, v1, v0}, Lcom/appsflyer/internal/AFa1uSDK;->unregisterClient(Lcom/appsflyer/internal/AFd1zSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    .line 374
    throw v4

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v5, 0x115b7027

    const v6, -0x115b7023

    invoke-static {v1, v5, v6, v2}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 375
    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->i(Ljava/util/Map;)V

    .line 376
    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->e(Ljava/util/Map;)V

    .line 377
    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFg1oSDK;->getEntries(Ljava/util/Map;)V

    if-eqz p0, :cond_2

    .line 378
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 379
    invoke-virtual {p0, v3}, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger(Ljava/util/Map;)V

    .line 380
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_2
    return-object v4

    .line 381
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    iget-object p0, v1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 383
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    sget-object p0, Lcom/appsflyer/internal/AFd1bSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFd1bSDK$AFa1vSDK;

    throw v4
.end method

.method public static synthetic unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 8

    mul-int/lit16 v0, p1, -0x295

    mul-int/lit16 v1, p2, -0x295

    add-int/2addr v1, v0

    not-int v0, p3

    not-int v2, p1

    not-int v3, p2

    or-int v4, v2, v3

    not-int v4, v4

    or-int/2addr v0, v4

    mul-int/lit16 v0, v0, 0x52c

    add-int/2addr v0, v1

    or-int v1, p1, p3

    not-int v1, v1

    or-int/2addr p3, p2

    not-int p3, p3

    or-int/2addr p3, v1

    mul-int/lit16 p3, p3, -0x52c

    add-int/2addr p3, v0

    or-int/2addr p2, v2

    not-int p2, p2

    or-int/2addr p1, v3

    not-int p1, p1

    or-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x296

    add-int/2addr p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v1, Lcom/appsflyer/internal/AFd1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v3, Lcom/appsflyer/internal/AFd1bSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v4, Lcom/appsflyer/internal/AFd1bSDK;->getLevel:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v5, Lcom/appsflyer/internal/AFd1bSDK;->values:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v6, Lcom/appsflyer/internal/AFd1bSDK;->valueOf:Lcom/appsflyer/internal/AFd1bSDK;

    filled-new-array/range {v0 .. v6}, [Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->e([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    aget-object p1, p0, p3

    check-cast p1, Lcom/appsflyer/internal/AFg1oSDK;

    aget-object p0, p0, v0

    check-cast p0, Ljava/util/Map;

    sget p3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p3, p3, 0x4b

    rem-int/lit16 p3, p3, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsflyer/internal/AFg1iSDK;->registerClient(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "inst_app"

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_0
    return-object p2

    :pswitch_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->v([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long/2addr v2, p1

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    const-wide/high16 p2, 0x4034000000000000L    # 20.0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    long-to-double p2, v0

    div-double/2addr p2, p0

    double-to-long p2, p2

    long-to-double v0, v2

    div-double/2addr v0, p0

    double-to-long p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->force([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    aget-object p1, p0, p3

    check-cast p1, Lcom/appsflyer/internal/AFg1oSDK;

    aget-object p0, p0, v0

    check-cast p0, Ljava/util/Map;

    sget p3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p3, p3, 0x5

    rem-int/lit16 p3, p3, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v1, "AppsFlyerTimePassedSincePrevLaunch"

    const-wide/16 v2, 0x0

    invoke-interface {p3, v1, v2, v3}, Lcom/appsflyer/internal/AFc1kSDK;->unregisterClient(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {p1, v1, v6, v7}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;J)V

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    sub-long/2addr v6, v4

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const-wide/16 v6, -0x1

    :goto_0
    const-string p1, "timepassedsincelastlaunch"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :pswitch_8
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final unregisterClient(Ljava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 327
    const-string v0, "versionCode"

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v1

    .line 329
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 330
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 332
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 333
    invoke-interface {v1, v0, v3}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;I)V

    .line 334
    :cond_0
    const-string v0, "app_version_code"

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 335
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 336
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "app_version_name"

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 338
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 339
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "targetSDKver"

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 341
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    .line 342
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    .line 343
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "date1"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "date2"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "counter"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 348
    sget p2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p2, p2, 0x9

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/16 v0, 0x19

    div-int/2addr v0, v2

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    .line 351
    :goto_1
    :try_start_2
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/high16 v1, 0x1000000

    add-int/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit16 v1, v1, 0x3aaf

    int-to-char v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lcom/appsflyer/internal/AFg1oSDK;->a(ICI[Ljava/lang/Object;)V

    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1, p2}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/text/SimpleDateFormat;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 352
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x68

    const/4 v9, 0x0

    const-string v2, "Failed to collect app version and update date information"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method private static synthetic v([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1oSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/util/Map;

    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "btl"

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1wSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-interface {v2, v1}, Lcom/appsflyer/internal/AFg1wSDK;->registerClient(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;

    move-result-object v1

    iget v2, v1, Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;->unregisterClient:F

    iget-object v1, v1, Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;->AFLogger:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe

    div-int/2addr v2, v0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1wSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFg1wSDK;->registerClient(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;

    move-result-object v0

    iget v1, v0, Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;->unregisterClient:F

    iget-object v0, v0, Lcom/appsflyer/internal/AFg1wSDK$AFa1vSDK;->AFLogger:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    const-string v0, "btch"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0x8316798

    const v3, 0x831679f

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final v(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 87
    const-string p0, "yyyy-MM-dd_HHmmssZ"

    .line 88
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    const-string p0, "installDate"

    .line 90
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 91
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 94
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->DEVICE_DATA:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x78

    const/4 v9, 0x0

    const-string v2, "Failed to retrieve or format app install date"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method private valueOf(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/AFa1uSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1uSDK;->registerClient(Lcom/appsflyer/AppsFlyerProperties;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->AFLogger(Lcom/appsflyer/AppsFlyerProperties;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3e

    div-int/lit8 v1, v1, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/AFa1uSDK;->INSTANCE:Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1uSDK;->registerClient(Lcom/appsflyer/AppsFlyerProperties;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->AFLogger(Lcom/appsflyer/AppsFlyerProperties;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_3

    :goto_0
    if-eqz p0, :cond_3

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "reinstallCounter"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "originalAppsflyerId"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method private values(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1bSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1bSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/16 p0, 0x37

    div-int/lit8 p0, p0, 0x0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFf1bSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1bSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private w()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    const-string v1, "preInstallName"

    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->afWarnLog()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v2, "AF_PRE_INSTALL_NAME"

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    div-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1oSDK;->e:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v2, v1, v0}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->afErrorLog:Lcom/appsflyer/AppsFlyerProperties;

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_4
    return-object v0
.end method

.method private final w(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 95
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x552ee503

    const v1, -0x552ee503

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFg1oSDK;->d(Ljava/util/Map;Z)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->stop(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFc1eSDK;->force:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFg1oSDK;->registerClient(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->getSdkVersion(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lkotlin/Pair;

    const-string v3, "mcc"

    invoke-direct {v1, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lkotlin/Pair;

    const-string v4, "mnc"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v3}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "cell"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sig"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->d()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "last_boot_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int p1, v1

    const v1, -0x8316798

    const v2, 0x831679f

    invoke-static {p0, v1, v2, p1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "disk"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 215
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 217
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1jSDK;->AFLogger(Lcom/appsflyer/internal/AFc1kSDK;)Ljava/lang/String;

    move-result-object v0

    .line 218
    div-int/lit8 v1, v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 221
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1jSDK;->AFLogger(Lcom/appsflyer/internal/AFc1kSDK;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    :goto_0
    const-string v1, "uid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    .line 224
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v0, "CUSTOM_INSTALL_ID_APPLIED"

    invoke-interface {p0, v0}, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 225
    const-string p0, "custom_install_id"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_2
    return-void
.end method

.method public final AFLogger(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 2

    .line 112
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->v(Ljava/util/Map;)V

    .line 116
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->afWarnLog:I

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient(Ljava/util/Map;I)V

    .line 120
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->getLevel(Ljava/util/Map;)V

    .line 122
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->enableTCFDataCollection(Ljava/util/Map;)V

    .line 124
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->setImeiData(Ljava/util/Map;)V

    .line 126
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient(Ljava/util/Map;Lcom/appsflyer/internal/AFe1zSDK;)V

    .line 128
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final AFLogger(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->force:Lcom/appsflyer/internal/AFi1vSDK;

    .line 131
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1vSDK;->d:Lcom/appsflyer/internal/AFi1ySDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1ySDK;->unregisterClient()Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 132
    const-string v1, "network"

    .line 133
    iget-object v2, v0, Lcom/appsflyer/internal/AFi1xSDK;->unregisterClient:Ljava/lang/String;

    .line 134
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-boolean v1, v0, Lcom/appsflyer/internal/AFi1xSDK;->d:Z

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ivc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 138
    iget-boolean p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->afErrorLog:Z

    if-nez p0, :cond_4

    .line 139
    iget-object p0, v0, Lcom/appsflyer/internal/AFi1xSDK;->registerClient:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 140
    const-string v1, "operator"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    iget-object p0, v0, Lcom/appsflyer/internal/AFi1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 142
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "carrier"

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x16

    .line 144
    div-int/lit8 p0, p0, 0x0

    return-void

    .line 145
    :cond_2
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 146
    :cond_3
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    :cond_4
    return-void
.end method

.method public final d(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 2

    .line 221
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x61500e4

    const v1, -0x61500de

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->values:Ljava/lang/String;

    const/16 v1, 0x19

    div-int/lit8 v1, v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->values:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    const-string v1, "appid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->stop:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a legal value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    const-string v1, "currency"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->getEntries:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isUpdate"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->getSdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "customData"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->valueOf:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "appUserId"

    if-eqz v1, :cond_5

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->w:Lcom/appsflyer/internal/AFb1rSDK;

    if-eqz p0, :cond_8

    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1rSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    const/16 v0, 0x45

    div-int/lit8 v0, v0, 0x0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1rSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    if-eqz p0, :cond_8

    :goto_2
    const-string v0, "sharing_filter"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public final registerClient(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    iget-object v4, p1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->v:Lcom/appsflyer/internal/AFb1qSDK;

    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const v5, -0x7cba2bec

    const v6, 0x7cba2bed

    invoke-static {v1, v5, v6, v4}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/AFh1eSDK;

    if-nez v1, :cond_2

    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)V

    const/16 v1, 0x28

    div-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object v1, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v4, Lcom/appsflyer/internal/AFd1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1bSDK;

    sget-object v5, Lcom/appsflyer/internal/AFd1bSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    filled-new-array {v1, v4, v5}, [Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/2addr v5, v3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v5, v5, 0x2

    const v6, 0x3c31bcee

    const v7, -0x3c31bce9

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v5, v7, v6, v8}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, v7, v6, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    sget-object v5, Lcom/appsflyer/internal/AFd1bSDK;->w:Lcom/appsflyer/internal/AFd1bSDK;

    filled-new-array {v1, v4, v5}, [Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const v5, 0x552ee503

    const v6, -0x552ee503

    invoke-static {v1, v5, v6, v4}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->setOaidData(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->valueOf(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->values(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v1, :cond_6

    move v2, v3

    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/appsflyer/internal/AFg1oSDK;->AFKeystoreWrapper(Ljava/util/Map;Z)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->onPause(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1oSDK;->getInstance(Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFg1oSDK;->AFLogger(Ljava/util/Map;Lcom/appsflyer/internal/AFh1pSDK;)V

    const-string p0, "af_events_api"

    const-string p1, "1"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerClient(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 262
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->unregisterClient:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 263
    sget v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "af_deeplink"

    if-nez v2, :cond_2

    .line 264
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "Skipping push payload processing: deeplink already extracted from intent"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    .line 266
    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    .line 267
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v0, "isPush"

    const-string v4, "true"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 271
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    .line 272
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 273
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 274
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 275
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v10, 0x1b

    const/4 v11, 0x0

    const-string v4, "Exception while trying to create JSONObject from pushPayload"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_1
    invoke-static/range {v2 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v10, 0x78

    const/4 v11, 0x0

    const-string v4, "Exception while trying to create JSONObject from pushPayload"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 276
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 277
    :cond_3
    sget p1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 278
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 279
    iput-object v1, p0, Lcom/appsflyer/internal/AFc1eSDK;->unregisterClient:Ljava/lang/String;

    return-void
.end method

.method public final unregisterClient()J
    .locals 3

    .line 411
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v1, -0x7c6ba22b

    const v2, 0x7c6ba22e

    invoke-static {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final unregisterClient(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 2

    .line 410
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x6940c7f0

    const v1, -0x6940c7ee

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final unregisterClient(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 304
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->AFLogger:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 305
    const-string v1, "email_hashed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 308
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    const-string v1, "phone_number_hashed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 311
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->registerClient:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 312
    const-string v1, "phone_number_e164_hashed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 315
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 316
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 317
    const-string v1, "first_name_hashed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 319
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 320
    sget v1, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "last_name_hashed"

    if-nez v1, :cond_4

    .line 321
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x15

    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 323
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->i:Ljava/lang/Long;

    if-eqz p0, :cond_6

    .line 324
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 326
    const-string v0, "fb_login_id"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final unregisterClient(Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 353
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    const-string v0, "counter"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string p2, "iaecounter"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1oSDK;->i()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    .line 358
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 359
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "isFirstCall"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    return-void
.end method

.method public final unregisterClient(Ljava/util/Map;Lcom/appsflyer/internal/AFe1zSDK;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFe1zSDK;",
            ")V"
        }
    .end annotation

    .line 384
    sget v0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 386
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x661e25a9

    const v3, -0x661e259e

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1oSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 388
    iget-boolean v0, p2, Lcom/appsflyer/internal/AFc1eSDK;->setCustomerUserId:Z

    .line 389
    const-string v1, "app_set_id"

    if-eqz v0, :cond_2

    .line 390
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 391
    new-instance v0, Lkotlin/Pair;

    const-string v2, "app_set_id_disabled"

    invoke-direct {v0, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    invoke-static {v0}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1oSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 394
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->setUserEmail:Lcom/appsflyer/internal/AFc1rSDK;

    if-eqz p0, :cond_1

    .line 395
    sget p0, Lcom/appsflyer/internal/AFg1oSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1oSDK;->getLevel:I

    .line 396
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 397
    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->APP_SET_ID:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 398
    const-string v2, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 399
    :cond_1
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 400
    sget-object v7, Lcom/appsflyer/sdk_base/logger/LogTag;->APP_SET_ID:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 401
    const-string v8, "App Set ID collection is disabled. Skipping inclusion in the event payload."

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 402
    :cond_2
    iget-object p0, p2, Lcom/appsflyer/internal/AFc1eSDK;->setUserEmail:Lcom/appsflyer/internal/AFc1rSDK;

    if-eqz p0, :cond_3

    .line 403
    iget p2, p0, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper:I

    .line 404
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 405
    new-instance v0, Lkotlin/Pair;

    const-string v2, "scope"

    invoke-direct {v0, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1rSDK;->unregisterClient:Ljava/lang/String;

    .line 407
    new-instance p2, Lkotlin/Pair;

    const-string v2, "id"

    invoke-direct {p2, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    filled-new-array {v0, p2}, [Lkotlin/Pair;

    move-result-object p0

    .line 409
    invoke-static {p0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
