.class public final Lcom/appsflyer/internal/AFd1sSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static afErrorLog:I = 0x1

.field private static force:C = '\uf182'

.field private static i:I = -0xe015307

.field private static v:J = -0x5f2b2652cbc60e7eL

.field private static w:I


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

.field private final AFLogger:Lcom/appsflyer/internal/AFd1xSDK;

.field private final d:Lcom/appsflyer/internal/AFj1cSDK;

.field private final e:Lcom/appsflyer/internal/AFf1fSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFc1iSDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFd1jSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFd1jSDK;Lcom/appsflyer/internal/AFj1mSDK;Lcom/appsflyer/internal/AFj1cSDK;Lcom/appsflyer/internal/AFf1fSDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFLogger:Lcom/appsflyer/internal/AFd1xSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFd1sSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1jSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFd1sSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFd1sSDK;->e:Lcom/appsflyer/internal/AFf1fSDK;

    return-void
.end method

.method private static synthetic AFKeystoreWrapper([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1sSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/AFa1oSDK;

    .line 271
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    .line 272
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1dSDK;->d(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Lcom/appsflyer/internal/AFd1oSDK;

    .line 274
    iget-object v3, p0, Lcom/appsflyer/internal/AFh1pSDK;->i:Ljava/lang/String;

    .line 275
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 276
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 277
    iget-boolean v7, p0, Lcom/appsflyer/internal/AFh1pSDK;->unregisterClient:Z

    .line 278
    const-string v5, "POST"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 279
    new-instance p0, Lcom/appsflyer/internal/AFa1jSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1jSDK;-><init>()V

    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x4347daf3

    const v2, 0x4347daf3

    invoke-static {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private static varargs AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    .line 266
    const-string v1, "v2"

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 267
    new-array v2, p2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 268
    const-string v2, "\u2063"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFj1nSDK;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x52

    div-int/2addr p1, p2

    :cond_0
    return-object p0
.end method

.method private AFLogger(Lcom/appsflyer/internal/AFd1oSDK;Lcom/appsflyer/internal/AFd1iSDK;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1oSDK;",
            "Lcom/appsflyer/internal/AFd1iSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "TT;>;"
        }
    .end annotation

    .line 324
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0
.end method

.method private AFLogger(Lcom/appsflyer/internal/AFh1pSDK;[B)V
    .locals 4

    .line 309
    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 310
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    const/4 v2, 0x0

    .line 311
    const-string v3, "com.appsflyer.security.enable"

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {v1, v3}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 314
    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1pSDK;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 316
    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFf1fSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1iSDK;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 318
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFf1fSDK;->registerClient(Lcom/appsflyer/internal/AFh1pSDK;[B)V

    .line 319
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/sdk_base/logger/LogTag;->SECURITY_SDK:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string p2, "the module works properly"

    invoke-virtual {p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFf1fSDK;->d(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1iSDK;)Z

    .line 321
    throw v2

    :cond_2
    return-void

    .line 322
    :cond_3
    invoke-virtual {v1, v3}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    throw v2
.end method

.method private AFLogger()Z
    .locals 3

    .line 304
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v0, "AF_ENABLE_HTTP_CACHE"

    .line 305
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 306
    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    .line 307
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 308
    sget p0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method private static a(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 16

    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->$10:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->$11:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_4

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget v2, Lcom/appsflyer/internal/AFd1sSDK;->$10:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->$11:I

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    :goto_0
    check-cast v0, [C

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    check-cast v2, [C

    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    :goto_2
    check-cast v3, [C

    new-instance v4, Lcom/appsflyer/internal/AFk1pSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFk1pSDK;-><init>()V

    array-length v5, v3

    new-array v6, v5, [C

    array-length v7, v2

    new-array v8, v7, [C

    const/4 v9, 0x0

    invoke-static {v3, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-char v2, v6, v9

    xor-int v2, v2, p1

    int-to-char v2, v2

    aput-char v2, v6, v9

    aget-char v2, v8, v1

    move/from16 v3, p2

    int-to-char v3, v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v8, v1

    array-length v1, v0

    new-array v2, v1, [C

    iput v9, v4, Lcom/appsflyer/internal/AFk1pSDK;->AFKeystoreWrapper:I

    sget v3, Lcom/appsflyer/internal/AFd1sSDK;->$10:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1sSDK;->$11:I

    :goto_3
    iget v3, v4, Lcom/appsflyer/internal/AFk1pSDK;->AFKeystoreWrapper:I

    if-ge v3, v1, :cond_3

    sget v5, Lcom/appsflyer/internal/AFd1sSDK;->$11:I

    add-int/lit8 v5, v5, 0x71

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1sSDK;->$10:I

    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v5, v5, 0x4

    add-int/lit8 v7, v3, 0x3

    rem-int/lit8 v7, v7, 0x4

    rem-int/lit8 v10, v3, 0x4

    aget-char v10, v6, v10

    mul-int/lit16 v10, v10, 0x7fce

    aget-char v5, v8, v5

    add-int/2addr v10, v5

    const v11, 0xffff

    rem-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v4, Lcom/appsflyer/internal/AFk1pSDK;->AFLogger:C

    aget-char v12, v6, v7

    mul-int/lit16 v12, v12, 0x7fce

    add-int/2addr v12, v5

    div-int/2addr v12, v11

    int-to-char v5, v12

    aput-char v5, v8, v7

    aput-char v10, v6, v7

    aget-char v5, v0, v3

    xor-int/2addr v5, v10

    int-to-long v10, v5

    sget-wide v12, Lcom/appsflyer/internal/AFd1sSDK;->v:J

    const-wide v14, -0x5f2b2652cbc60e7eL

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget v5, Lcom/appsflyer/internal/AFd1sSDK;->i:I

    int-to-long v12, v5

    xor-long/2addr v12, v14

    long-to-int v5, v12

    int-to-long v12, v5

    xor-long/2addr v10, v12

    sget-char v5, Lcom/appsflyer/internal/AFd1sSDK;->force:C

    int-to-long v12, v5

    xor-long/2addr v12, v14

    long-to-int v5, v12

    int-to-char v5, v5

    int-to-long v12, v5

    xor-long/2addr v10, v12

    long-to-int v5, v10

    int-to-char v5, v5

    aput-char v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/appsflyer/internal/AFk1pSDK;->AFKeystoreWrapper:I

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p5, v9

    return-void

    :cond_4
    const/4 v0, 0x0

    throw v0
.end method

.method private d(Lcom/appsflyer/internal/AFd1oSDK;Lcom/appsflyer/internal/AFd1iSDK;Z)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1oSDK;",
            "Lcom/appsflyer/internal/AFd1iSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "TT;>;"
        }
    .end annotation

    .line 210
    iput-boolean p3, p1, Lcom/appsflyer/internal/AFd1oSDK;->force:Z

    .line 211
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFLogger:Lcom/appsflyer/internal/AFd1xSDK;

    .line 212
    new-instance p3, Lcom/appsflyer/internal/AFd1pSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1xSDK;->d:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1xSDK;->AFLogger:Lcom/appsflyer/internal/AFd1mSDK;

    invoke-direct {p3, p1, v0, p0, p2}, Lcom/appsflyer/internal/AFd1pSDK;-><init>(Lcom/appsflyer/internal/AFd1oSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFd1mSDK;Lcom/appsflyer/internal/AFd1iSDK;)V

    .line 213
    sget p0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    return-object p3
.end method

.method public static synthetic d([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 3

    mul-int/lit16 v0, p1, 0x212

    add-int/lit16 v0, v0, 0x422

    mul-int/lit16 v1, p2, 0x212

    add-int/2addr v1, v0

    not-int v0, p3

    or-int/2addr v0, p1

    not-int v0, v0

    or-int v2, p1, p2

    not-int v2, v2

    or-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x211

    add-int/2addr v0, v1

    not-int p2, p2

    or-int/2addr p1, p3

    not-int p1, p1

    or-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x211

    add-int/2addr p1, v0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 197
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1sSDK;->registerClient([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1sSDK;->unregisterClient([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic registerClient([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1sSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Lcom/appsflyer/internal/AFd1oSDK;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Lcom/appsflyer/internal/AFd1iSDK;

    .line 169
    sget v4, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    .line 170
    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1sSDK;->AFLogger()Z

    move-result v4

    .line 171
    invoke-direct {v1, v2, p0, v4}, Lcom/appsflyer/internal/AFd1sSDK;->d(Lcom/appsflyer/internal/AFd1oSDK;Lcom/appsflyer/internal/AFd1iSDK;Z)Lcom/appsflyer/internal/AFd1pSDK;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    div-int/2addr v1, v0

    :cond_0
    return-object p0
.end method

.method private registerClient()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    const-string v1, "build_number"

    const-string v2, "7.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    .line 175
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "counter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, ""

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    const v2, 0xee66

    sub-int/2addr v2, v1

    int-to-char v5, v2

    const v1, 0x3f86c450

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    add-int v6, v2, v1

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    const-string v4, "\u506b\u86c4\u663f\ucfee"

    const-string v7, "\u0000\u0000\u0000\u0000"

    const-string v8, "\ud9b1\u05c6\u44ba\uc1a7\udbec"

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1sSDK;->a(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v1, v9, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    .line 181
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1iSDK;->r_()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 182
    const-string v2, "app_version_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    .line 184
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    .line 185
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->d:Lcom/appsflyer/internal/AFj1cSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFj1cSDK;->unregisterClient()Ljava/lang/String;

    move-result-object p0

    const-string v1, "platformextension"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget p0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private static synthetic unregisterClient([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1sSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x4

    aget-object p0, p0, v6

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 171
    iget-object p0, v0, Lcom/appsflyer/internal/AFd1sSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1jSDK;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 172
    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v8, v1, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 173
    sget-object v1, Lcom/appsflyer/internal/AFd1jSDK;->unregisterClient:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_0
    sget-object p0, Lcom/appsflyer/internal/AFd1jSDK;->AFa1tSDK:Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;

    throw v7

    .line 175
    :cond_1
    sget-object v1, Lcom/appsflyer/internal/AFd1jSDK;->AFLogger:Ljava/lang/String;

    .line 176
    :goto_0
    const-string v8, ""

    if-eqz v3, :cond_3

    .line 177
    sget v3, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/2addr v3, v2

    if-eqz v3, :cond_2

    const-string v2, "stg"

    goto :goto_1

    :cond_2
    throw v7

    :cond_3
    sget v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    move-object v2, v8

    .line 178
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 179
    invoke-static {}, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 180
    sget v7, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/2addr v7, v4

    rem-int/lit16 v7, v7, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    .line 181
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1jSDK;->d()Ljava/lang/String;

    move-result-object p0

    .line 183
    filled-new-array {v8, v2, p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 184
    invoke-static {p0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 185
    new-instance v1, Lcom/appsflyer/internal/AFd1oSDK;

    const-string v2, "GET"

    invoke-direct {v1, p0, v2}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x5dc

    .line 186
    iput p0, v1, Lcom/appsflyer/internal/AFd1oSDK;->v:I

    .line 187
    new-instance p0, Lcom/appsflyer/internal/AFd1lSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;-><init>()V

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x4347daf3

    const v2, 0x4347daf3

    invoke-static {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 257
    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    .line 258
    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFj1mSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    .line 259
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    .line 260
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    .line 263
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1jSDK;->AFLogger(Lcom/appsflyer/internal/AFc1kSDK;)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v0, v1, v2, p1, p2}, Lcom/appsflyer/internal/AFd1qSDK;->unregisterClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFd1rSDK;->INSTANCE:Lcom/appsflyer/internal/AFd1rSDK;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const v1, 0x5114278a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/util/Map;

    const-string v6, "unregisterClient"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v7

    aput-object p1, v0, v9

    sget-object v2, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    int-to-char v3, v3

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    add-int/lit16 v7, v7, 0xc6

    invoke-static {v9}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    rsub-int/lit8 v10, v10, 0x23

    invoke-static {v3, v7, v10}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    filled-new-array {v5, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x4c

    :try_start_1
    div-int/2addr v1, v9

    :goto_1
    move-object v3, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v7

    aput-object p1, v2, v9

    sget-object v3, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/16 v7, 0x30

    invoke-static {v0, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0xc5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    rsub-int/lit8 v9, v9, 0x23

    invoke-static {v7, v0, v9}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    filled-new-array {v5, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFj1mSDK;->d(Lcom/appsflyer/internal/AFj1mSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/appsflyer/internal/AFd1oSDK;

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v6, 0x1

    const-string v4, "POST"

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance v0, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v1, -0x4347daf3

    const v2, 0x4347daf3

    invoke-static {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    return-object p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->PURCHASE_VALIDATION:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v8
.end method

.method public final AFLogger(Lcom/appsflyer/internal/AFh1pSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFd1zSDK;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1pSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFd1zSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x6f330f1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const/4 p2, 0x0

    aput-object p1, v1, p2

    sget-object v4, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    add-int/lit16 v6, v6, 0xc6

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v7, v7, 0x24

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "registerClient"

    const-class v7, Lcom/appsflyer/internal/AFh1pSDK;

    const-class v8, Ljava/lang/String;

    const-class v9, Lcom/appsflyer/internal/AFd1zSDK;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, v6}, Lcom/appsflyer/internal/AFd1sSDK;->AFLogger(Lcom/appsflyer/internal/AFh1pSDK;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/2addr v0, v3

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    const/16 v2, 0x51

    div-int/2addr v2, p2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->v:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->w:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move p3, p2

    :goto_2
    instance-of v0, p1, Lcom/appsflyer/internal/AFh1lSDK;

    instance-of v2, p1, Lcom/appsflyer/internal/AFh1kSDK;

    instance-of v4, p1, Lcom/appsflyer/internal/AFg1uSDK;

    instance-of v5, p1, Lcom/appsflyer/internal/AFh1hSDK;

    if-eqz v5, :cond_3

    sget p3, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p3, p3, 0x75

    rem-int/lit16 p3, p3, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->afInfoLog()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->registerClient()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->AFLogger()Ljava/lang/String;

    move-result-object p3

    sget v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->w()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_8

    iget p3, p1, Lcom/appsflyer/internal/AFh1pSDK;->afWarnLog:I

    if-ge p3, v3, :cond_7

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->d()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {v1, p3}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/appsflyer/internal/AFj1mSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, v4}, Lcom/appsflyer/internal/AFj1mSDK;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/appsflyer/internal/AFd1oSDK;

    iget-object v8, p1, Lcom/appsflyer/internal/AFh1pSDK;->registerClient:Ljava/util/Map;

    iget-boolean v9, p1, Lcom/appsflyer/internal/AFh1pSDK;->unregisterClient:Z

    const-string v7, "POST"

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p3, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p3, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_9

    const/16 p1, 0x41

    div-int/2addr p1, p2

    :cond_9
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v6, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    throw p1

    :cond_a
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v2
.end method

.method public final AFLogger(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x5114278a

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 293
    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/util/Map;

    const-string v5, "unregisterClient"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    .line 294
    :try_start_0
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v6

    aput-object p1, p0, v8

    sget-object p1, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    int-to-char p2, p2

    const/4 v1, 0x0

    invoke-static {v8, v1, v1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float v1, v2, v1

    add-int/lit16 v1, v1, 0xc6

    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x23

    invoke-static {p2, v1, v2}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    filled-new-array {v4, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v7, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :try_start_1
    throw v7

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v6

    aput-object p1, v1, v8

    sget-object p1, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-char p2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    rsub-int v2, v2, 0xc7

    const-string v6, ""

    invoke-static {v6, v8, v8}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-static {p2, v2, v6}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    filled-new-array {v4, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    .line 298
    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->force()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v0, Lcom/appsflyer/internal/AFd1oSDK;

    .line 300
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v5, 0x1

    const-string v3, "POST"

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 301
    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 302
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    throw p1

    :cond_4
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :goto_2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->PURCHASE_VALIDATION:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v7
.end method

.method public final d(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/appsflyer/internal/AFd1oSDK;

    .line 199
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v3, "GET"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p1, 0x2710

    .line 200
    iput p1, v0, Lcom/appsflyer/internal/AFd1oSDK;->v:I

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, v0, Lcom/appsflyer/internal/AFd1oSDK;->w:Z

    .line 202
    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, -0x4347daf3

    const v1, 0x4347daf3

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1sSDK;->registerClient()Ljava/util/Map;

    move-result-object v1

    const-string v2, "build_number"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Af-UUID"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Af-Meta-Sdk-Ver"

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "counter"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Af-Meta-Counter"

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "model"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Af-Meta-Model"

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platformextension"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Af-Meta-Platform"

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sdk"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Af-Meta-System-Version"

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v9, v1

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v10

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    const-string v8, "\uf90f\u02d3\u9dd0\u1703"

    const-string v11, "\u0000\u0000\u0000\u0000"

    const-string v12, "\u0a53\ua2b2\ua5d6\uc7a2\u0353\u43af\uc0cc\u9f76\u808b\u7474\u2a42\u2483"

    invoke-static/range {v8 .. v13}, Lcom/appsflyer/internal/AFd1sSDK;->a(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v1, v13, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v6, "GET"

    move-object/from16 v3, p2

    filled-new-array {v6, v0, p1, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p4

    invoke-static {v4, v0, v2}, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/appsflyer/internal/AFd1oSDK;

    invoke-static/range {p1 .. p2}, Lcom/appsflyer/internal/AFj1mSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFd1hSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1hSDK;-><init>()V

    filled-new-array {p0, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, -0x4347daf3

    const v1, 0x4347daf3

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1vSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1vSDK;"
        }
    .end annotation

    const v0, 0x5114278a

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 204
    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 205
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 p2, 0x0

    aput-object p1, v1, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-char v3, v3

    invoke-static {p2, p2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result p2

    add-int/lit16 p2, p2, 0xc6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x23

    invoke-static {v3, p2, v4}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v3, "unregisterClient"

    const-class v4, Ljava/util/Map;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 206
    :try_start_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v5, "AFFinalizer: failed to create bytes."

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string p0, "Failed to create bytes from proxyData, bytes are null"

    invoke-direct {v6, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    sget p0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v6, p0

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/appsflyer/internal/AFd1vSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-direct {p2, p0, p1}, Lcom/appsflyer/internal/AFd1vSDK;-><init>(Lcom/appsflyer/internal/AFc1iSDK;[B)V

    return-object p2

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 208
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :goto_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v2
.end method

.method public final registerClient(Lcom/appsflyer/internal/AFa1oSDK;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1oSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Lcom/appsflyer/internal/AFa1gSDK;",
            ">;"
        }
    .end annotation

    .line 190
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, 0xde1efcf

    const v1, -0xde1efce

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0
.end method

.method public final registerClient(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x5114278a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 p2, 0x0

    aput-object p1, v1, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit16 v4, v4, 0xc6

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x23

    invoke-static {v3, v4, p2}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v3, "unregisterClient"

    const-class v4, Ljava/util/Map;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    iget-object p1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/appsflyer/internal/AFd1oSDK;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v8, 0x1

    const-string v6, "POST"

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v6, p0

    goto :goto_1

    :cond_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->PURCHASE_VALIDATION:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v2
.end method

.method public final registerClient(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Lcom/appsflyer/internal/AFh1aSDK;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x70f95d4b

    const p2, -0x70f95d49

    invoke-static {p0, p1, p2, p4}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0
.end method

.method public final unregisterClient(Lcom/appsflyer/internal/AFh1nSDK;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1nSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1pSDK;->force:[B

    .line 205
    new-instance v0, Lcom/appsflyer/internal/AFd1oSDK;

    .line 206
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1pSDK;->i:Ljava/lang/String;

    .line 207
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1pSDK;->registerClient:Ljava/util/Map;

    const/4 v5, 0x1

    .line 208
    const-string v3, "POST"

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 209
    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const v0, -0x4347daf3

    const v1, 0x4347daf3

    invoke-static {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x43

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-object p0
.end method

.method public final unregisterClient(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 188
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    const-string v3, "ttl"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v3, "uuid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v3, "data"

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v3, "meta"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1sSDK;->registerClient()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 194
    sget v3, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    .line 195
    const-string v3, "brand_domain"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget v0, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    .line 197
    :cond_0
    invoke-static {v2}, Lcom/appsflyer/internal/AFg1dSDK;->d(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-char v8, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v9, v2, 0x10

    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/Object;

    const-string v7, "\uf90f\u02d3\u9dd0\u1703"

    const-string v10, "\u0000\u0000\u0000\u0000"

    const-string v11, "\u0a53\ua2b2\ua5d6\uc7a2\u0353\u43af\uc0cc\u9f76\u808b\u7474\u2a42\u2483"

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFd1sSDK;->a(Ljava/lang/String;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v2, v12, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-static {v4, v1, v3}, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v2, Lcom/appsflyer/internal/AFd1oSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFj1mSDK;->registerClient(Lcom/appsflyer/internal/AFj1mSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "POST"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 203
    new-instance v0, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    invoke-direct {p0, v2, v0, v13}, Lcom/appsflyer/internal/AFd1sSDK;->d(Lcom/appsflyer/internal/AFd1oSDK;Lcom/appsflyer/internal/AFd1iSDK;Z)Lcom/appsflyer/internal/AFd1pSDK;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterClient(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const v1, 0x5114278a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 p2, 0x0

    aput-object p1, v2, p2

    sget-object p1, Lcom/appsflyer/internal/AFa1bSDK;->getInstance:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-char p2, p2

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit16 v4, v4, 0xc6

    const/16 v5, 0x30

    invoke-static {v0, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x22

    invoke-static {p2, v4, v0}, Lcom/appsflyer/internal/AFa1bSDK;->AFLogger(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v0, "unregisterClient"

    const-class v4, Ljava/util/Map;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFd1sSDK;->w:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1sSDK;->afErrorLog:I

    iget-object p1, p0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFj1mSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFj1mSDK;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1mSDK;->unregisterClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1mSDK;->d(Lcom/appsflyer/internal/AFj1mSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/appsflyer/internal/AFd1oSDK;

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v9, 0x1

    const-string v7, "POST"

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    filled-new-array {p0, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const p2, -0x4347daf3

    const v0, 0x4347daf3

    invoke-static {p1, p2, v0, p0}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v7, p0

    goto :goto_1

    :cond_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->ENGAGEMENT:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v4 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v3
.end method
