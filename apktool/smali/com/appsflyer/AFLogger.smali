.class public final Lcom/appsflyer/AFLogger;
.super Lcom/appsflyer/sdk_base/logger/AFLoggerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AFLogger$LogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0017\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001.B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0004\"\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\t\u001a\u00020\u00062\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0004\"\u00020\u0001\u00a2\u0006\u0004\u0008\t\u0010\u0008J\'\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JG\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\'\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\'\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0011J\'\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\"\u0010 J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008$\u0010 J#\u0010\'\u001a\u00020\u00062\u0008\u0010%\u001a\u0004\u0018\u00010\u000c2\u0008\u0010&\u001a\u0004\u0018\u00010\u0012H\u0007\u00a2\u0006\u0004\u0008\'\u0010(J+\u0010\'\u001a\u00020\u00062\u0008\u0010%\u001a\u0004\u0018\u00010\u000c2\u0008\u0010&\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\'\u0010)R\u001b\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010*8BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0015\u0010\u0010\u001a\u00020-8BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010,"
    }
    d2 = {
        "Lcom/appsflyer/AFLogger;",
        "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;",
        "<init>",
        "()V",
        "",
        "client",
        "",
        "registerClient",
        "([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V",
        "unregisterClient",
        "Lcom/appsflyer/sdk_base/logger/LogTag;",
        "tag",
        "",
        "msg",
        "",
        "shouldRemoteDebug",
        "d",
        "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V",
        "",
        "throwable",
        "printMsg",
        "printThrowable",
        "shouldReportToExManager",
        "e",
        "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V",
        "i",
        "w",
        "v",
        "force",
        "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V",
        "logMessage",
        "afInfoLog",
        "(Ljava/lang/String;)V",
        "debugLogMessage",
        "afDebugLog",
        "warningLogMessage",
        "afWarnLog",
        "errorLogMessage",
        "ex",
        "afErrorLog",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "(Ljava/lang/String;Ljava/lang/Throwable;Z)V",
        "",
        "AFLogger",
        "Lkotlin/Lazy;",
        "Ljava/util/concurrent/ExecutorService;",
        "LogLevel"
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
.field private static final AFLogger:Lkotlin/Lazy;

.field public static final INSTANCE:Lcom/appsflyer/AFLogger;

.field private static final registerClient:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/AFLogger;

    invoke-direct {v0}, Lcom/appsflyer/AFLogger;-><init>()V

    sput-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    new-instance v0, Lr61;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lr61;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AFLogger;->AFLogger:Lkotlin/Lazy;

    new-instance v0, Lr61;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lr61;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;-><init>()V

    return-void
.end method

.method private static final AFKeystoreWrapper()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 15
    invoke-static {}, Lcom/appsflyer/internal/AFc1jSDK;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static final AFKeystoreWrapper(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p3, p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final AFKeystoreWrapper([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 1

    sget-object v0, Lcom/appsflyer/AFLogger;->AFLogger:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->k(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final AFLogger(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p3, p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final AFLogger([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 1

    sget-object v0, Lcom/appsflyer/AFLogger;->AFLogger:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final afDebugLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->OTHER:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->OTHER:Lcom/appsflyer/sdk_base/logger/LogTag;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 39
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 40
    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->OTHER:Lcom/appsflyer/sdk_base/logger/LogTag;

    if-eqz p0, :cond_1

    .line 41
    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 42
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x68

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    .line 43
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afInfoLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->OTHER:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/AFLogger;->i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afWarnLog(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->OTHER:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/AFLogger;->registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d()Ljava/util/Set;
    .locals 1

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method private static final d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p3, p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->v(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic f()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/appsflyer/AFLogger;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/appsflyer/AFLogger;->registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/AFLogger;->AFLogger(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appsflyer/AFLogger;->registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFLogger([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V

    return-void
.end method

.method public static synthetic m([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V

    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->unregisterClient(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p2, p0, p1}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->force(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    move-object p1, p0

    move-object p0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 22
    invoke-virtual/range {p0 .. p7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final registerClient(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZLcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p3, p0, p1, p2}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final unregisterClient(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    sget-object v0, Lcom/appsflyer/AFLogger;->AFLogger:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/a;

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/a;-><init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZI)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/c;

    invoke-direct/range {p0 .. p7}, Lcom/appsflyer/c;-><init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final force(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lc61;

    const/16 v0, 0x11

    invoke-direct {p0, p1, p2, v0}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/a;-><init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZI)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs registerClient([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/d;-><init>([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;I)V

    sget-object p1, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs unregisterClient([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance p0, Lcom/appsflyer/d;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/d;-><init>([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;I)V

    .line 32
    sget-object p1, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/a;-><init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZI)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/appsflyer/a;

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/a;-><init>(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZI)V

    new-instance p1, Lcom/appsflyer/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lcom/appsflyer/AFLogger;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
