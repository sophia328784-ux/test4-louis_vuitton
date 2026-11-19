.class public final Lcom/appsflyer/internal/AFf1kSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1kSDK$AFa1uSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u000b\u001a\u00020\u00138FX\u0087\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0014R\u0015\u0010\u0015\u001a\u00020\u00138FX\u0087\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFf1kSDK;",
        "",
        "Lcom/appsflyer/internal/AFc1iSDK;",
        "p0",
        "Lcom/appsflyer/internal/AFf1jSDK;",
        "p1",
        "Lcom/appsflyer/internal/AFc1eSDK;",
        "p2",
        "<init>",
        "(Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFc1eSDK;)V",
        "",
        "AFKeystoreWrapper",
        "()J",
        "AFLogger",
        "Lcom/appsflyer/internal/AFc1iSDK;",
        "unregisterClient",
        "Lcom/appsflyer/internal/AFf1jSDK;",
        "d",
        "Lcom/appsflyer/internal/AFc1eSDK;",
        "",
        "Lkotlin/Lazy;",
        "registerClient",
        "AFa1uSDK"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AFa1uSDK:Lcom/appsflyer/internal/AFf1kSDK$AFa1uSDK;

.field private static final force:J


# instance fields
.field public final AFKeystoreWrapper:Lkotlin/Lazy;

.field private final AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

.field public final d:Lcom/appsflyer/internal/AFc1eSDK;

.field public final registerClient:Lkotlin/Lazy;

.field public final unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFf1kSDK$AFa1uSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFf1kSDK$AFa1uSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFf1kSDK;->AFa1uSDK:Lcom/appsflyer/internal/AFf1kSDK$AFa1uSDK;

    const-wide/32 v0, 0x15180

    sput-wide v0, Lcom/appsflyer/internal/AFf1kSDK;->force:J

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFc1eSDK;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFf1kSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFf1kSDK;->d:Lcom/appsflyer/internal/AFc1eSDK;

    new-instance p1, Lcom/appsflyer/internal/q;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/q;-><init>(Lcom/appsflyer/internal/AFf1kSDK;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    new-instance p1, Lcom/appsflyer/internal/q;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/q;-><init>(Lcom/appsflyer/internal/AFf1kSDK;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->registerClient:Lkotlin/Lazy;

    return-void
.end method

.method private static final AFLogger(Lcom/appsflyer/internal/AFf1kSDK;)Z
    .locals 1

    iget-object p0, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v0, "com.appsflyer.rc.staging"

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFf1kSDK;)Z
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFf1kSDK;->AFLogger(Lcom/appsflyer/internal/AFf1kSDK;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/appsflyer/internal/AFf1kSDK;)Z
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFf1kSDK;->d(Lcom/appsflyer/internal/AFf1kSDK;)Z

    move-result p0

    return p0
.end method

.method private static final d(Lcom/appsflyer/internal/AFf1kSDK;)Z
    .locals 1

    iget-object p0, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v0, "com.appsflyer.rc.sandbox"

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final AFKeystoreWrapper()J
    .locals 10

    iget-object p0, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v0, "com.appsflyer.rc.cache.max-age-fallback"

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "unknown error"

    :cond_1
    const-string v2, "Can\'t read maxAgeFallback from Manifest: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    sget-wide v0, Lcom/appsflyer/internal/AFf1kSDK;->force:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    sget-wide v0, Lcom/appsflyer/internal/AFf1kSDK;->force:J

    return-wide v0
.end method
