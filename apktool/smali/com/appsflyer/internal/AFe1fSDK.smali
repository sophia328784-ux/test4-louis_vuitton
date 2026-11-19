.class public final Lcom/appsflyer/internal/AFe1fSDK;
.super Lcom/appsflyer/internal/AFe1kSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1kSDK<",
        "Lcom/appsflyer/internal/AFa1gSDK;",
        ">;"
    }
.end annotation


# instance fields
.field private final AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

.field private AppsFlyerLib:I

.field private final afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

.field private final afErrorLog:Lcom/appsflyer/internal/AFi1aSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFc1eSDK;

.field private afWarnLog:I

.field private final force:Lcom/appsflyer/internal/AFc1iSDK;

.field private final getLevel:Ljava/util/concurrent/CountDownLatch;

.field private final v:Lcom/appsflyer/internal/AFa1oSDK;

.field private final valueOf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/sdk_base/referrer/Referrer;",
            ">;"
        }
    .end annotation
.end field

.field private values:I


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->force:Lcom/appsflyer/internal/AFd1bSDK;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/appsflyer/internal/AFe1zSDK;

    sget-object v3, Lcom/appsflyer/internal/AFd1bSDK;->d:Lcom/appsflyer/internal/AFd1bSDK;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1bSDK;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "DdlSdk"

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/appsflyer/internal/AFe1kSDK;-><init>(Lcom/appsflyer/internal/AFe1zSDK;[Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V

    new-instance v0, Lcom/appsflyer/internal/AFa1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFa1oSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFc1iSDK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->setAndroidIdData()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->afInfoLog:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->enableTCFDataCollection()Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->e()Lcom/appsflyer/internal/AFh1xSDK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog()Lcom/appsflyer/internal/AFi1aSDK;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->afErrorLog:Lcom/appsflyer/internal/AFi1aSDK;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->getLevel:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/List;

    iget-object p1, p1, Lcom/appsflyer/internal/AFi1aSDK;->unregisterClient:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v0, v4, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, p1, v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getState()Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/sdk_base/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    if-eq v7, v8, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AppsFlyerLib:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {v0}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getState()Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;->AFKeystoreWrapper:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v5, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/appsflyer/internal/m;

    invoke-direct {v2, v0, p0, v4}, Lcom/appsflyer/internal/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/appsflyer/sdk_base/referrer/Referrer;->setAdditionalReferrerDataCollectionFinishedCallback(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object v2, v0, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    const-string v3, "source"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " referrer collected earlier"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper(Lcom/appsflyer/sdk_base/referrer/Referrer;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final AFKeystoreWrapper(Lcom/appsflyer/sdk_base/referrer/Referrer;)V
    .locals 6

    invoke-static {p1}, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient(Lcom/appsflyer/sdk_base/referrer/Referrer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1fSDK;->getLevel:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Added non-organic "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    iget v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AppsFlyerLib:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1fSDK;->getLevel:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/appsflyer/sdk_base/referrer/Referrer;Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient(Lcom/appsflyer/sdk_base/referrer/Referrer;Lcom/appsflyer/internal/AFe1fSDK;)V

    return-void
.end method

.method private static unregisterClient(Lcom/appsflyer/internal/AFb1lSDK;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFb1lSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1lSDK;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 47
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1lSDK;->AFLogger:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 49
    :cond_0
    new-instance p0, Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "unhashed"

    invoke-direct {p0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    new-instance v1, Lkotlin/Pair;

    const-string v2, "value"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    filled-new-array {p0, v1}, [Lkotlin/Pair;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final unregisterClient(Lcom/appsflyer/sdk_base/referrer/Referrer;Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 6

    .line 44
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object v2, p0, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    const-string v3, "source"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " referrer collected via callback"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper(Lcom/appsflyer/sdk_base/referrer/Referrer;)V

    return-void
.end method

.method private static unregisterClient(Lcom/appsflyer/sdk_base/referrer/Referrer;)Z
    .locals 5

    iget-object p0, p0, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    const-string v0, "click_ts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long p0, v3, v1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final AFLogger(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1pSDK<",
            "Lcom/appsflyer/internal/AFa1gSDK;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v3, "Preparing request "

    invoke-static {p1, v3}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    iget v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const-string v3, "appsFlyerCount"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_first"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1jSDK;->AFLogger(Lcom/appsflyer/internal/AFc1kSDK;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->afInfoLog:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->w:Lcom/appsflyer/internal/AFb1rSDK;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1rSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "sharing_filter"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->registerClient:Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->updateServerUninstallToken:Lcom/appsflyer/internal/AFh1qSDK;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/appsflyer/internal/AFb1lSDK;

    iget-object v3, v0, Lcom/appsflyer/internal/AFh1qSDK;->AFLogger:Ljava/lang/String;

    iget-object v0, v0, Lcom/appsflyer/internal/AFh1qSDK;->registerClient:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v0}, Lcom/appsflyer/internal/AFb1lSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient(Lcom/appsflyer/internal/AFb1lSDK;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "gaid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1iSDK;->unregisterClient(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1lSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient(Lcom/appsflyer/internal/AFb1lSDK;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "oaid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "request_count"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/sdk_base/referrer/Referrer;

    invoke-virtual {v4}, Lcom/appsflyer/sdk_base/referrer/Referrer;->getState()Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/sdk_base/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/sdk_base/referrer/Referrer$State;

    if-ne v5, v6, :cond_7

    iget-object v5, v4, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_7

    iget-object v4, v4, Lcom/appsflyer/sdk_base/referrer/Referrer;->map:Ljava/util/Map;

    const-string v6, "source"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/String;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v6, "value"

    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v4}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "referrers"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    new-instance v0, Lcom/appsflyer/internal/AFj1mSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->force:Lcom/appsflyer/internal/AFc1iSDK;

    invoke-direct {v0, v2}, Lcom/appsflyer/internal/AFj1mSDK;-><init>(Lcom/appsflyer/internal/AFc1iSDK;)V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1kSDK;->afInfoLog()Lcom/appsflyer/internal/AFf1fSDK;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v4, -0x62ff1f55

    const v5, 0x62ff1f57

    invoke-static {v3, v4, v5, v2}, Lcom/appsflyer/internal/AFf1fSDK;->unregisterClient([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFj1mSDK;->AFLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsflyer/internal/AFh1pSDK;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    if-lez v0, :cond_c

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, Lcom/appsflyer/internal/AFh1xSDK;->force:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    if-nez v0, :cond_d

    iget-wide v1, p1, Lcom/appsflyer/internal/AFh1xSDK;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/appsflyer/internal/AFh1xSDK;->registerClient:Ljava/util/Map;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1xSDK;->force:[J

    aget-wide v4, p1, v0

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "from_fg"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v1, "Metrics: fg ts is missing"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string p1, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Unexpected ddl requestCount - start"

    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1kSDK;->afDebugLog()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object p1

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v0, 0xde1efcf

    const v1, -0xde1efce

    invoke-static {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFd1sSDK;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final AFLogger()Z
    .locals 0

    .line 503
    const/4 p0, 0x0

    return p0
.end method

.method public final a_()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic afWarnLog()Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v0, p0, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    return-wide v0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final registerClient()Lcom/appsflyer/internal/AFd1cSDK;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "referrers"

    const-string v2, "Error occurred. Server response code = "

    sget-object v3, Lcom/appsflyer/internal/AFd1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1cSDK;

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v1}, Lcom/appsflyer/internal/AFe1kSDK;->registerClient()Lcom/appsflyer/internal/AFd1cSDK;

    move-result-object v3

    iget-object v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget v6, v1, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lez v6, :cond_2

    if-le v6, v9, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v6, v10

    iget-object v11, v5, Lcom/appsflyer/internal/AFh1xSDK;->v:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v11, v6

    iget-object v11, v5, Lcom/appsflyer/internal/AFh1xSDK;->force:[J

    aget-wide v11, v11, v6

    cmp-long v13, v11, v7

    if-eqz v13, :cond_1

    iget-object v13, v5, Lcom/appsflyer/internal/AFh1xSDK;->w:[J

    iget-object v14, v5, Lcom/appsflyer/internal/AFh1xSDK;->v:[J

    aget-wide v14, v14, v6

    sub-long/2addr v14, v11

    aput-wide v14, v13, v6

    iget-object v5, v5, Lcom/appsflyer/internal/AFh1xSDK;->registerClient:Ljava/util/Map;

    const-string v6, "net"

    invoke-interface {v5, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v11, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Metrics: ddlStart["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ts is missing"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v11, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v12, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v13, "Unexpected ddl requestCount - end"

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v5, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    :goto_1
    sget-object v5, Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;->registerClient:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_3

    return-object v3

    :cond_3
    sget-object v11, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v12, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    iget-object v0, v1, Lcom/appsflyer/internal/AFe1kSDK;->i:Lcom/appsflyer/internal/AFd1fSDK;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1fSDK;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v4, v2}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    return-object v3

    :cond_5
    iget-object v2, v1, Lcom/appsflyer/internal/AFe1kSDK;->i:Lcom/appsflyer/internal/AFd1fSDK;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFd1fSDK;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/appsflyer/internal/AFa1gSDK;

    iget-object v5, v2, Lcom/appsflyer/internal/AFa1gSDK;->AFKeystoreWrapper:Lcom/appsflyer/share/deeplink/DeepLink;

    if-eqz v5, :cond_6

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    invoke-direct {v0, v5, v4}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    return-object v3

    :cond_6
    iget v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    if-gt v5, v10, :cond_b

    iget-boolean v2, v2, Lcom/appsflyer/internal/AFa1gSDK;->AFLogger:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_7

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_7
    move-object v2, v4

    :goto_3
    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v5

    :goto_4
    iget v6, v1, Lcom/appsflyer/internal/AFe1fSDK;->AppsFlyerLib:I

    if-ge v2, v6, :cond_b

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->v:Lcom/appsflyer/internal/AFa1oSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFh1pSDK;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v11, "Waiting for referrers..."

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->getLevel:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v2, v0, Lcom/appsflyer/internal/AFh1xSDK;->v:[J

    aget-wide v5, v2, v5

    cmp-long v2, v5, v7

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/appsflyer/internal/AFh1xSDK;->registerClient:Ljava/util/Map;

    const-string v2, "rfr_wait"

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v2, "Metrics: ddlEnd[0] ts is missing"

    invoke-virtual {v9, v0, v2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    :goto_5
    iget v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    iget v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AppsFlyerLib:I

    if-ne v0, v2, :cond_a

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    invoke-direct {v0, v4, v4}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1cSDK;->d:Lcom/appsflyer/internal/AFd1cSDK;

    return-object v0

    :cond_a
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1fSDK;->registerClient()Lcom/appsflyer/internal/AFd1cSDK;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    invoke-direct {v0, v4, v4}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/InterruptedException;

    if-nez v5, :cond_e

    instance-of v5, v2, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_d

    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "Http Exception: the request was not sent to the server"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v4, v2}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v4, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v4, v4, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v4, v5}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v1, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    goto :goto_8

    :cond_d
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v2, "Unexpected Exception: "

    invoke-static {v2, v0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v4, v2}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v4, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v4, v4, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v4, v5}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v1, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    goto :goto_8

    :cond_e
    :goto_7
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->DDL:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    const/16 v13, 0x60

    const/4 v14, 0x0

    const-string v7, "[DDL] Timeout"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v14}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    iget v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->afWarnLog:I

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v2, v2, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Timeout, didn\'t manage to find deferred deeplink after "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attempt(s) within "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/appsflyer/share/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v4, v2}, Lcom/appsflyer/share/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/share/deeplink/DeepLink;Lcom/appsflyer/share/deeplink/DeepLinkResult$Error;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->afDebugLog:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    iget-wide v3, v3, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/appsflyer/internal/AFh1xSDK;->registerClient(Lcom/appsflyer/share/deeplink/DeepLinkResult;J)V

    iget-object v1, v1, Lcom/appsflyer/internal/AFe1fSDK;->AFLoggerLogLevel:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1qSDK;->d(Lcom/appsflyer/share/deeplink/DeepLinkResult;)V

    sget-object v3, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    :goto_8
    return-object v3
.end method
