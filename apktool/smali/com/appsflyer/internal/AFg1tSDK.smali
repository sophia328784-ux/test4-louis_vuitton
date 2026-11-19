.class public final Lcom/appsflyer/internal/AFg1tSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFf1aSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFLoggerLogLevel:I = -0x6899909c

.field private static AppsFlyerLib:I = 0x0

.field private static afDebugLog:[B = null

.field private static afErrorLog:I = -0x7e519483

.field private static afInfoLog:I = -0x37610d92

.field private static afWarnLog:[S = null

.field private static getLevel:I = 0x1


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1bSDK;

.field private final AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

.field private final d:Lcom/appsflyer/internal/AFa1aSDK;

.field private final e:Lcom/appsflyer/internal/AFf1fSDK;

.field private final force:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Lcom/appsflyer/internal/AFg1rSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFc1eSDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFi1aSDK;

.field private final v:Lcom/appsflyer/AppsFlyerProperties;

.field private final w:Lcom/appsflyer/internal/AFd1zSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFg1tSDK;->afDebugLog:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        0x7dt
        -0x64t
        0x70t
        0x7ft
        -0x77t
        0x75t
        -0x7ct
        0x64t
        -0x78t
        0x74t
        0x71t
    .end array-data
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFi1aSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/internal/AFd1zSDK;Lcom/appsflyer/internal/AFg1rSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/AppsFlyerProperties;Ljava/util/concurrent/ScheduledExecutorService;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1bSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFg1tSDK;->d:Lcom/appsflyer/internal/AFa1aSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFg1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1aSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFg1tSDK;->w:Lcom/appsflyer/internal/AFd1zSDK;

    iput-object p7, p0, Lcom/appsflyer/internal/AFg1tSDK;->i:Lcom/appsflyer/internal/AFg1rSDK;

    iput-object p8, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    iput-object p9, p0, Lcom/appsflyer/internal/AFg1tSDK;->v:Lcom/appsflyer/AppsFlyerProperties;

    iput-object p10, p0, Lcom/appsflyer/internal/AFg1tSDK;->force:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private AFKeystoreWrapper()Z
    .locals 12

    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    if-eqz v0, :cond_0

    iget-wide v0, v1, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_0
    iget-wide v0, v1, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide v4, v4, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide v7, v5, Lcom/appsflyer/internal/AFc1eSDK;->onPause:J

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide v5, v5, Lcom/appsflyer/internal/AFc1eSDK;->setDebugLog:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    sget v5, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v5, v5, 0x53

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    if-nez v5, :cond_1

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/sdk_base/logger/LogTag;->SDK_LIFECYCLE:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide v8, p0, Lcom/appsflyer/internal/AFc1eSDK;->setDebugLog:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v4, v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v3, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result p0

    if-nez p0, :cond_4

    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->SDK_LIFECYCLE:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v4, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v3, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->SDK_LIFECYCLE:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Sending first launch for this session!"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1pSDK;)Z
    .locals 10

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->AFLogger()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 242
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    .line 243
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, 0x63

    .line 244
    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    .line 245
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v2, "AF_LAUNCH_PROTECT_ENABLED"

    .line 246
    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 247
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object p0, p1, Lcom/appsflyer/internal/AFh1pSDK;->AFLogger:Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;

    if-eqz p0, :cond_2

    const/16 p1, 0xa

    .line 250
    const-string v0, "Event timeout. Check \'minTimeBetweenSessions\' param"

    invoke-interface {p0, p1, v0}, Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 251
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    :cond_2
    return v2

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    .line 253
    iget-wide v2, p1, Lcom/appsflyer/internal/AFc1eSDK;->setDebugLog:J

    const-wide/16 v4, 0x3e8

    .line 254
    div-long/2addr v2, v4

    .line 255
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 256
    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->SDK_LIFECYCLE:Lcom/appsflyer/sdk_base/logger/LogTag;

    .line 257
    const-string p1, "Allowing multiple launches within a "

    const-string v0, " second time window."

    .line 258
    invoke-static {v2, v3, p1, v0}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 259
    invoke-static/range {v4 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 260
    :cond_4
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    iput-wide v2, p0, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    :cond_5
    return v1
.end method

.method public static synthetic AFLogger([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-static {p0}, Lcom/appsflyer/internal/AFg1tSDK;->registerClient([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final AFLogger(Lcom/appsflyer/internal/AFg1tSDK;Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V
    .locals 2

    .line 200
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFg1tSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V

    if-eqz v0, :cond_0

    const/16 p0, 0x1c

    div-int/lit8 p0, p0, 0x0

    :cond_0
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    return-void
.end method

.method private AFLogger(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/appsflyer/internal/AFa1pSDK;

    iget-object v3, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1bSDK;

    iget-object v4, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v4, v4, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v5, "appsFlyerCount"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/AFh1pSDK;->unregisterClient(I)Lcom/appsflyer/internal/AFh1pSDK;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/appsflyer/internal/AFg1tSDK;->d:Lcom/appsflyer/internal/AFa1aSDK;

    invoke-interface {v5}, Lcom/appsflyer/internal/AFa1aSDK;->d()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFa1pSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFh1pSDK;Ljava/util/Map;)V

    iget-object v3, v1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-nez v3, :cond_5

    iget-object v1, v1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFi1aSDK;->unregisterClient:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v3, v6, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    array-length v3, v1

    :goto_0
    const-wide/16 v7, 0x1f4

    if-ge v6, v3, :cond_1

    sget v9, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v9, v9, 0x71

    rem-int/lit16 v9, v9, 0x80

    sput v9, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    aget-object v9, v1, v6

    invoke-virtual {v9}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getState()Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/sdk_base/referrer/Referrer$State;->STARTED:Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    if-ne v10, v11, :cond_0

    sget v4, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v4, v4, 0x5f

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v11, Lcom/appsflyer/sdk_base/logger/LogTag;->REFERRER:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v9}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to get "

    const-string v9, " referrer, wait ..."

    invoke-static {v5, v4, v9}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    move-wide v4, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->d:Lcom/appsflyer/internal/AFa1aSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFa1aSDK;->registerClient()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/sdk_base/logger/LogTag;->REFERRER:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "fetching Facebook deferred AppLink data, wait ..."

    const/4 v12, 0x1

    invoke-static/range {v9 .. v14}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    move-wide v4, v7

    goto :goto_2

    :cond_2
    sget-object v15, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v16, Lcom/appsflyer/sdk_base/logger/LogTag;->REFERRER:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v17, "fetching Facebook deferred AppLink data, wait ..."

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1fSDK;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    move-wide v4, v7

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    throw v0

    :cond_5
    :goto_3
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1tSDK;->force:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v4, v5, v1}, Lcom/appsflyer/internal/AFj1iSDK;->AFLogger(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static a(ISBII[Ljava/lang/Object;)V
    .locals 12

    new-instance v0, Lcom/appsflyer/internal/AFk1rSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1rSDK;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/appsflyer/internal/AFg1tSDK;->afErrorLog:I

    int-to-long v2, v2

    const-wide v4, -0x5f1571567e51948fL

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr p0, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ne p0, v2, :cond_0

    sget v2, Lcom/appsflyer/internal/AFg1tSDK;->$10:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1tSDK;->$11:I

    move v2, v6

    goto :goto_0

    :cond_0
    sget v2, Lcom/appsflyer/internal/AFg1tSDK;->$11:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1tSDK;->$10:I

    move v2, v3

    :goto_0
    if-eqz v2, :cond_5

    sget-object p0, Lcom/appsflyer/internal/AFg1tSDK;->afDebugLog:[B

    if-eqz p0, :cond_3

    array-length v7, p0

    new-array v8, v7, [B

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_2

    sget v10, Lcom/appsflyer/internal/AFg1tSDK;->$11:I

    add-int/lit8 v10, v10, 0x5d

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFg1tSDK;->$10:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    aget-byte v10, p0, v9

    int-to-long v10, v10

    mul-long/2addr v10, v4

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_1

    :cond_1
    aget-byte v10, p0, v9

    int-to-long v10, v10

    xor-long/2addr v10, v4

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v8

    :cond_3
    if-eqz p0, :cond_4

    sget-object p0, Lcom/appsflyer/internal/AFg1tSDK;->afDebugLog:[B

    sget v7, Lcom/appsflyer/internal/AFg1tSDK;->afInfoLog:I

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    add-int v7, p4, v7

    aget-byte p0, p0, v7

    int-to-long v7, p0

    xor-long/2addr v7, v4

    long-to-int p0, v7

    int-to-byte p0, p0

    sget v7, Lcom/appsflyer/internal/AFg1tSDK;->afErrorLog:I

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    add-int/2addr p0, v7

    int-to-byte p0, p0

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/appsflyer/internal/AFg1tSDK;->afWarnLog:[S

    sget v7, Lcom/appsflyer/internal/AFg1tSDK;->afInfoLog:I

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    add-int v7, p4, v7

    aget-short p0, p0, v7

    int-to-long v7, p0

    xor-long/2addr v7, v4

    long-to-int p0, v7

    int-to-short p0, p0

    sget v7, Lcom/appsflyer/internal/AFg1tSDK;->afErrorLog:I

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    add-int/2addr p0, v7

    int-to-short p0, p0

    :cond_5
    :goto_2
    if-lez p0, :cond_a

    add-int v7, p4, p0

    add-int/lit8 v7, v7, -0x2

    sget v8, Lcom/appsflyer/internal/AFg1tSDK;->afInfoLog:I

    int-to-long v8, v8

    xor-long/2addr v8, v4

    long-to-int v8, v8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    iput v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFLogger:I

    sget v2, Lcom/appsflyer/internal/AFg1tSDK;->AFLoggerLogLevel:I

    int-to-long v7, v2

    xor-long/2addr v7, v4

    long-to-int v2, v7

    add-int/2addr v2, p3

    int-to-char v2, v2

    iput-char v2, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    iput-char v2, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFKeystoreWrapper:C

    sget-object v2, Lcom/appsflyer/internal/AFg1tSDK;->afDebugLog:[B

    if-eqz v2, :cond_7

    array-length v7, v2

    new-array v8, v7, [B

    sget v9, Lcom/appsflyer/internal/AFg1tSDK;->$10:I

    add-int/lit8 v9, v9, 0x7

    rem-int/lit16 v9, v9, 0x80

    sput v9, Lcom/appsflyer/internal/AFg1tSDK;->$11:I

    move v9, v3

    :goto_3
    if-ge v9, v7, :cond_6

    aget-byte v10, v2, v9

    int-to-long v10, v10

    xor-long/2addr v10, v4

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move-object v2, v8

    :cond_7
    if-eqz v2, :cond_8

    sget v2, Lcom/appsflyer/internal/AFg1tSDK;->$10:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1tSDK;->$11:I

    move v2, v6

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    iput v6, v0, Lcom/appsflyer/internal/AFk1rSDK;->d:I

    :goto_5
    iget v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->d:I

    if-ge v7, p0, :cond_a

    iget v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFLogger:I

    if-eqz v2, :cond_9

    sget-object v8, Lcom/appsflyer/internal/AFg1tSDK;->afDebugLog:[B

    add-int/lit8 v9, v7, -0x1

    iput v9, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFLogger:I

    aget-byte v7, v8, v7

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    iget-char v8, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFKeystoreWrapper:C

    add-int/2addr v7, p1

    int-to-byte v7, v7

    xor-int/2addr v7, p2

    add-int/2addr v8, v7

    int-to-char v7, v8

    iput-char v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    goto :goto_6

    :cond_9
    sget-object v8, Lcom/appsflyer/internal/AFg1tSDK;->afWarnLog:[S

    add-int/lit8 v9, v7, -0x1

    iput v9, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFLogger:I

    aget-short v7, v8, v7

    int-to-long v7, v7

    xor-long/2addr v7, v4

    long-to-int v7, v7

    int-to-short v7, v7

    iget-char v8, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFKeystoreWrapper:C

    add-int/2addr v7, p1

    int-to-short v7, v7

    xor-int/2addr v7, p2

    add-int/2addr v8, v7

    int-to-char v7, v8

    iput-char v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    :goto_6
    iget-char v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:C

    iput-char v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->AFKeystoreWrapper:C

    iget v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->d:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/appsflyer/internal/AFk1rSDK;->d:I

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, v3

    return-void
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFg1tSDK;Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V
    .locals 0

    .line 286
    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger(Lcom/appsflyer/internal/AFg1tSDK;Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V

    return-void
.end method

.method private d(Lcom/appsflyer/internal/AFh1pSDK;Landroid/content/Context;)V
    .locals 4

    .line 160
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1tSDK;->v:Lcom/appsflyer/AppsFlyerProperties;

    invoke-interface {v0}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties()V

    .line 163
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendTrackingWith with context: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    .line 165
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    .line 166
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFg1tSDK;->unregisterClient(Landroid/content/Context;Lcom/appsflyer/internal/AFh1pSDK;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1pSDK;

    .line 167
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x47ce6783

    const v2, -0x47ce6783

    invoke-static {p2, v1, v2, v0}, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 168
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger(Lcom/appsflyer/internal/AFh1pSDK;)V

    .line 169
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    return-void
.end method

.method private static synthetic registerClient([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFg1tSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/AFh1pSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-boolean v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->afWarnLog:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    const-string v1, "advertiserId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->force:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v6, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "android_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    :try_start_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v5, "validateGaidAndAndroidId :: removing: android_id"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :goto_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "failed to remove AndroidID key from params; "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :cond_2
    :goto_2
    return-object v2
.end method

.method private unregisterClient(Landroid/content/Context;Lcom/appsflyer/internal/AFh1pSDK;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appsflyer/internal/AFh1pSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "appsFlyerInAppEventCount"

    const-string v3, "appsFlyerCount"

    const-string v4, "******* sendTrackingWithEvent: "

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object v8, v1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, ""

    invoke-static {v11}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    int-to-short v13, v13

    invoke-static {v7, v7}, Landroid/view/View;->resolveSize(II)I

    move-result v14

    int-to-byte v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    const v16, -0x16c803b4

    sub-int v15, v16, v15

    const v16, -0x4930991f

    invoke-static {v11, v11, v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v11

    sub-int v16, v16, v11

    new-array v11, v6, [Ljava/lang/Object;

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFg1tSDK;->a(ISBII[Ljava/lang/Object;)V

    aget-object v11, v17, v7

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v9, v0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v9, "AppsFlyer SDK Reporting has been stopped"

    invoke-virtual {v1, v4, v9, v6}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v0

    goto :goto_3

    :cond_1
    if-eqz v5, :cond_2

    const-string v1, "Launch"

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v9, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v9, v9, 0x9

    rem-int/lit16 v9, v9, 0x80

    sput v9, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    :goto_1
    :try_start_1
    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v1, v6}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFg1tSDK;->unregisterClient(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v4, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v4, v3, v7}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v4

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v3, v2, v7}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v3

    if-nez v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1kSDK;->d(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    :cond_4
    :try_start_2
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1tSDK;->i:Lcom/appsflyer/internal/AFg1rSDK;

    invoke-interface {v0, v8, v4, v3}, Lcom/appsflyer/internal/AFg1rSDK;->unregisterClient(Ljava/util/Map;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v17, 0x40

    const/16 v18, 0x0

    const-string v11, "Error while preparing to send event"

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :goto_4
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/16 v0, 0x4a

    div-int/2addr v0, v7

    :cond_5
    return-object v8
.end method

.method private static unregisterClient(Landroid/content/Context;)V
    .locals 10

    .line 241
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x6032

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 243
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 245
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    .line 246
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    .line 247
    :try_start_1
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 248
    :cond_2
    const-string v0, "android.permission.INTERNET"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v3, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 250
    :cond_3
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_5

    .line 251
    sget v0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 252
    :try_start_2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v3, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v2, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 253
    :cond_5
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    const-string v0, "com.google.android.gms.permission.AD_ID"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 254
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v2, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/16 p0, 0x59

    div-int/lit8 p0, p0, 0x0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 256
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x78

    const/4 v9, 0x0

    const-string v2, "Exception while validation permissions. "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method private unregisterClient(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 2

    .line 257
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x47ce6783

    const v1, -0x47ce6783

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFg1tSDK;->AFLogger([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFh1pSDK;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1pSDK;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget p1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1tSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-wide p0, p0, Lcom/appsflyer/internal/AFc1eSDK;->setDebugLog:J

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v3, "Blocking multiple consecutive Launch events within "

    const-string v4, " seconds time window"

    invoke-static {p0, p1, v3, v4}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0, v1}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1tSDK;->w:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    if-nez v0, :cond_2

    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    rem-int/lit8 p0, p0, 0x2

    const-string p1, "sendWithEvent - got null context. skipping event/launch."

    if-nez p0, :cond_1

    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->ATTRIBUTION:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void

    :cond_1
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->ATTRIBUTION:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1tSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v4, -0x62ff1f55

    const v5, 0x62ff1f57

    invoke-static {v3, v4, v5, v2}, Lcom/appsflyer/internal/AFf1fSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1tSDK;->force:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/appsflyer/internal/p;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/appsflyer/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/appsflyer/internal/AFj1iSDK;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    sget p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFg1tSDK;->AppsFlyerLib:I

    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v2, "AppsFlyer dev key is missing! AppsFlyer\'s SDK cannot send any events without providing the dev key."

    invoke-virtual {p0, v0, v2, v1}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    const-string v2, "AppsFlyer will not track this event."

    invoke-virtual {p0, v0, v2, v1}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    iget-object p0, p1, Lcom/appsflyer/internal/AFh1pSDK;->AFLogger:Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;

    if-eqz p0, :cond_5

    const/16 p1, 0x29

    const-string v0, "No dev key"

    invoke-interface {p0, p1, v0}, Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
