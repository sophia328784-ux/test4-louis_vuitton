.class public Lcom/networkbench/agent/impl/NBSAppAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_ENDBLED:I = 0x7ffff

.field public static final ALL_TRACE_COLLECT_ENDBLED:I = 0x400

.field public static final ANR_ENABLED:I = 0x40

.field public static final BATTERY_ERROR_ENABLED:I = 0x8000

.field public static final BATTERY_MODULE_ENABLED:I = 0x4000

.field public static final BUSINESSS:Z = true

.field public static final CDN_ENDBLED:I = 0x100

.field public static final CPU_MODULE_ENABLED:I = 0x20000

.field public static final CRASH_ENABLED:I = 0x4

.field public static final CROSS_APP_ENABLED:I = 0x20

.field public static final DEBUG_MODE:Z = false

.field public static final FPS_MODULE_ENABLED:I = 0x40000

.field public static final HTTP_NETWORK_ENABLED:I = 0x1

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x8

.field public static LOG_LEVEL_FLAG:I = 0x1

.field public static final LOG_LEVEL_INFO:I = 0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x10

.field public static final LOG_MODULE_ENABLED:I = 0x1000

.field public static final NETWORK_ONLY:Z = false

.field public static final OOM_MODULE_ENABLED:I = 0x2000

.field public static final RECORD_ENDBLED:I = 0x200

.field public static final RECORD_NETWORK_ENABLE:I = 0x10000

.field public static final SOCKET_DATA_ENABLED:I = 0x10

.field private static final TAG:Ljava/lang/String; = "NBSAppAgent"

.field public static final TRACE_LOG_MODE:Z = false

.field public static final UI_ENABLED:I = 0x2

.field public static final USER_ACTION_ENABLED:I = 0x80

.field public static final VIOLENCE_ENDBLED:I = 0x800

.field public static final WEBVIEW_ENABLED:I = 0x8

.field private static appAgent:Lcom/networkbench/agent/impl/NBSAppAgent;

.field private static log:Lcom/networkbench/agent/impl/c/e;

.field private static onlyMainProcess:Z

.field public static schemeIgnore:Ljava/lang/String;


# instance fields
.field private anrReportEnabled:Z

.field private volatile apmIsRunning:Z

.field private crashReportEnabled:Z

.field private ratio:I

.field private ssl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/networkbench/agent/impl/NBSAppAgent;->onlyMainProcess:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->appAgent:Lcom/networkbench/agent/impl/NBSAppAgent;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->schemeIgnore:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ssl:Z

    .line 34
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->crashReportEnabled:Z

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->apmIsRunning:Z

    const/16 v1, 0x64

    .line 36
    iput v1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ratio:I

    .line 37
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->anrReportEnabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ssl:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->crashReportEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->apmIsRunning:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ratio:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->anrReportEnabled:Z

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static beginTracer(Ljava/lang/String;)V
    .locals 2

    const-string v0, " beginTracer  = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/tracing/CustomTracer;->beginTracer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, " beginTracer has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkAppStartType(Lcom/networkbench/agent/impl/util/af;Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/data/type/d;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/data/type/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/d;->c()Lcom/networkbench/agent/impl/util/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/c;->b()I

    move-result p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/util/r;->b(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/af;->g()I

    move-result p2

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/util/ak;->b(II)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    sget-object p2, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/asyncaction/a/a;

    instance-of v2, v1, Lcom/networkbench/agent/impl/data/type/g;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/networkbench/agent/impl/data/type/g;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/g;->d()I

    move-result v2

    sget-object v3, Lcom/networkbench/agent/impl/data/type/f$a;->c:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/type/f$a;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/f$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/data/type/g;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/util/af;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private closeSDK(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance p0, Lcom/networkbench/agent/impl/util/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/util/r;->d(Z)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/c;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/af;->b(I)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "close sdk error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static customActionEnd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NBSAppAgent customActionEnd actionName = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/data/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "customActionEnd has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static customActionStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NBSAppAgent customActionStart actionName = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "customActionStart has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static customLogInvokeStackTrace(I)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/NBSLogger;->customLogInvokeStackTrace(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "error customLogInvokeStackTrace"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static customPageLoad(Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/i/d;->a()Lcom/networkbench/agent/impl/i/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/d;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "NBSAppAgent"

    const-string v2, "error customPageLoad"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static customPageLoadFinish(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/i/d;->a()Lcom/networkbench/agent/impl/i/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/i/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "error customPageLoadFinish"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "debug log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static disable()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    const-wide v1, 0x2de41353000L

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->disableSdk(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static disableLog()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->q(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-gtz p0, :cond_0

    const-wide/32 v0, 0x5265c00

    :cond_0
    const-wide p0, 0x9a7ec800L

    cmp-long p2, v0, p0

    if-lez p2, :cond_1

    move-wide v0, p0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->disableSdk(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static disableUpload()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->p(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/af;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static disableUploadAndEnableLog()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableUpload()V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAppAgent;->enableLog()V

    return-void
.end method

.method public static enable()V
    .locals 3

    :try_start_0
    const-string v0, "NBSAppAgent disable method called"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/af;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private enableCrashReporting(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/crash/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/d;->a(Lcom/networkbench/agent/impl/crash/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, " enableCrashReporting has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static enableLog()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->q(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static enableUpload()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->p(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/af;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static enableUploadAndDisableLog()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAppAgent;->enableUpload()V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableLog()V

    return-void
.end method

.method public static endTracer(Ljava/lang/String;)V
    .locals 2

    const-string v0, " endTracer  = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/tracing/CustomTracer;->endTracer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, " endTracer has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enterAction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-string v0, "NBSAppAgent enterAction actionName = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->Clicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/networkbench/agent/impl/data/a/n;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Ljava/lang/String;ZIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "enterAction has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enterActionFlutter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-string v0, "NBSAppAgent enterActionFlutter actionName = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->CustomAction:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/networkbench/agent/impl/data/a/n;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Ljava/lang/String;ZIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "enterActionFlutter has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static errorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSLogger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "error log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static finishPageWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "NBSAppAgent"

    const-string v2, "finishPageWithName pageName:"

    const-string v3, "NBSAppAgent finishPageWithName pageName = "

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "pageName is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v3, 0x80

    invoke-static {p0, v3}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newPageName:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/x;->a()Lcom/networkbench/agent/impl/util/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/util/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    const-string v2, "startPageWithName error"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getApmsHeaderToRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->getApmsHeaderToRequest()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraHeaderToRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->getExtraHeaderToRequest()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getLastCrashUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "getSessionId has an error : "

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getSwitchConfig()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "enabled"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crashReporting"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->ab()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "webRequest"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->Y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ui"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logLevel"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    const-string v2, "NBSAppAgent"

    const-string v3, "getSwitchConfig  error"

    invoke-static {v2, v3, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getTingyunDeviceId()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/af;->q()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method private hitPercent()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iget p0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ratio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    const-string v1, "NBSAppAgent"

    const-string v2, "hitPercent sdk error"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public static infoLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSLogger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "info log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static isFilter()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    const/4 v0, 0x0

    return v0
.end method

.method private isInstrumented()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static leaveAction(ILjava/lang/String;)V
    .locals 2

    const-string v0, "NBSAppAgent leaveActionFlutterPage leaveJsStamp = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/data/a/n;->a(IJ)Lcom/networkbench/agent/impl/data/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "leaveAction has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static leaveAction(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    const-string v0, "NBSAppAgent leaveActionFlutterPage leaveJsStamp = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p2, p3}, Lcom/networkbench/agent/impl/data/a/n;->a(IJLjava/lang/String;Ljava/util/Map;)Lcom/networkbench/agent/impl/data/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 49
    const-string p1, "leaveAction has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static leaveActionFlutterPage(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p3, "add leaveActionFlutterPage data in harvest data pageData: "

    const-string v0, "NBSAppAgent leaveActionFlutterPage leaveJsStamp = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, p2, p1}, Lcom/networkbench/agent/impl/data/a/n;->a(IJLjava/lang/String;Ljava/util/Map;)Lcom/networkbench/agent/impl/data/a/m;

    move-result-object p0

    sput-object p0, Lcom/networkbench/agent/impl/data/a/n;->b:Lcom/networkbench/agent/impl/data/a/m;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "leaveActionFlutterPage happened in mainLooper"

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "leaveActionFlutterPage happened not in mainLooper"

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    sget-object p2, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "leaveActionFlutterPage add to data"

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sput-object p1, Lcom/networkbench/agent/impl/data/a/n;->b:Lcom/networkbench/agent/impl/data/a/m;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/networkbench/agent/impl/data/d/f;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/m;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p0}, Lcom/networkbench/agent/impl/data/d/f;-><init>(ILjava/lang/String;Lcom/networkbench/agent/impl/data/a/m;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/f;->f()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/d/i;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    goto :goto_1

    :cond_1
    const-string p0, "not add data in harvest data because crossTheBorder is true"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_2
    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "thread execute error"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string p1, "leaveActionFlutterPage has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 3

    const-string v0, " leaveBreadcrumb = "

    const-string v1, "<_TY_C_API>"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, " leaveBreadcrumb has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskClass(Ljava/lang/Class;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskViewByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "maskViewByClass has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskRegion(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskSensitiveRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "maskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskScreens(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskPageByName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "maskPageByName has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskSensitiveRegion(Landroid/graphics/Rect;)V
    .locals 1

    .line 15
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskSensitiveRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 16
    const-string v0, "maskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskSensitiveRegion(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskSensitiveRegion(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "maskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskView(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskSensitiveRegion(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "maskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskViewId(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskViewById(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "maskViewById has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static maskViewId(Ljava/lang/String;)V
    .locals 2

    .line 17
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskViewByTag(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 18
    const-string v0, "NBSAppAgent"

    const-string v1, "maskViewById has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    const-string v0, " onEvent  = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/networkbench/agent/impl/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 69
    const-string v0, " onEvent has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, " setUserProfile eventId = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/networkbench/agent/impl/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n eventTag "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Map "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, " onEvent has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static pauseVideoReplay()V
    .locals 3

    :try_start_0
    const-string v0, "NBSAppAgent pauseVideoReplay"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->pauseScreenRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppAgent"

    const-string v2, "pauseScreenRecord"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Lcom/networkbench/agent/impl/data/AnomalousData;)V
    .locals 6

    const-string v0, "\nmetaData = null"

    const-string v1, "reportErrorType type = 2\n message = "

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v4, Lcom/networkbench/agent/impl/NBSAppAgent;->onlyMainProcess:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "\u975e\u4e3b\u8fdb\u7a0b\u4e0d\u91c7\u96c6\u81ea\u5b9a\u4e49\u5d29\u6e83\u6570\u636e..."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "reportError : message == null or \"\"  return !"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/b/b;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "reportErrorType"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/networkbench/agent/impl/crash/a/d$a;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/crash/a/d$a;-><init>()V

    invoke-virtual {v4, p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Lcom/networkbench/agent/impl/data/AnomalousData;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a()Lcom/networkbench/agent/impl/crash/a/d;

    move-result-object p1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/networkbench/agent/impl/crash/a/a;->a(Lcom/networkbench/agent/impl/crash/a/d;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v2}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    const-string p1, "reportError has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "reportError(String message, Exception e, Map<String, Object> metaData)"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 150
    invoke-static {p0, p1, p2, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->reportErrorType(Ljava/lang/String;Ljava/lang/Exception;Ljava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 151
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p1

    sget-object p2, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    .line 152
    const-string p1, " reportError has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    const-string v0, "reportErrorType   message = "

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "reportError(String message, Map<String, Object> metaData)"

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/Exception;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->e(I)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v2, p1, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->reportErrorType(Ljava/lang/String;Ljava/lang/Exception;Ljava/util/Map;I)V

    .line 143
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nmetaData = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 146
    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    .line 147
    const-string p1, " reportError has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportErrorFlutter(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "flutter"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->reportErrorWebInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static reportErrorType(Ljava/lang/String;Ljava/lang/Exception;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/networkbench/agent/impl/NBSAppAgent;->onlyMainProcess:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "\u975e\u4e3b\u8fdb\u7a0b\u4e0d\u91c7\u96c6\u81ea\u5b9a\u4e49\u5d29\u6e83\u6570\u636e..."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "reportErrorType"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/crash/a/d$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/a/d$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/lang/Throwable;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(Ljava/util/Map;)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/crash/a/d$a;->b(I)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/a/d$a;->a(I)Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->b()Lcom/networkbench/agent/impl/crash/a/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/a/d$a;->a()Lcom/networkbench/agent/impl/crash/a/d;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/crash/a/a;->a(Lcom/networkbench/agent/impl/crash/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p1

    sget-object p2, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    const-string p1, " reportError has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportErrorWeb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.facebook.react.JavaScript"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->reportErrorWebInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "reportErrorWeb has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/session/Event;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "reportEvent has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static resumeVideoReplay()V
    .locals 3

    :try_start_0
    const-string v0, "NBSAppAgent resumeVideoReplay"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->resumeScreenRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppAgent"

    const-string v2, "resumeScreenRecord"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static retriveResponseHeader()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->retriveResponseHeader()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setAgentErrorEventFeedBack(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setAgentErrorEventFeedBack  error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setBusinessLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "NBSAppAgent setBusinessLine value = "

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->dataTagKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "setBusinessLine  error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setCellCollectEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Z)V

    return-void
.end method

.method public static setCustomOnResumeEndIns(Ljava/lang/String;)V
    .locals 4

    const-string v0, " setCustomOnResumeEndIns className = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/data/type/b;->c(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, " setCustomOnResumeEndIns has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setCustomPageName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NBSAppAgent setCustomPageName name = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->setCustomPageName(Ljava/lang/String;)V

    sput-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->custPageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, " setCustomPageName has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setDataTypeCallBack(ILcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->setAnomalousDataFeedBack(ILcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "setDataTypeCallBack  error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setErrorIdGenerateBlock(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->setErrorIdGenerateBlock(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setErrorIdGenerateBlock  error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setGlobalContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, " setUserCrashMessage key = "

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/crash/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    ----value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, " setUserCrashMessage has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLatLng(DD)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/util/r;->a(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string p2, "setLatLng  error"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLicenseKey(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/NBSAppAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->appAgent:Lcom/networkbench/agent/impl/NBSAppAgent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/NBSAppAgent;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->appAgent:Lcom/networkbench/agent/impl/NBSAppAgent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->appAgent:Lcom/networkbench/agent/impl/NBSAppAgent;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setLogLevel(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)V

    return-void
.end method

.method public static setLogLevel(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLogLevel has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NBSAppAgent"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogging(I)V
    .locals 0

    if-gtz p0, :cond_0

    return-void

    .line 11
    :cond_0
    sput p0, Lcom/networkbench/agent/impl/crash/i;->b:I

    return-void
.end method

.method public static setLogging(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    sput p0, Lcom/networkbench/agent/impl/crash/i;->b:I

    sput-object p1, Lcom/networkbench/agent/impl/crash/i;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setLogging(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    sput-object p0, Lcom/networkbench/agent/impl/crash/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static setNetworkThreshold(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppAgent setNetworkThreshold threshold = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    long-to-int p0, p0

    sput p0, Lcom/networkbench/agent/impl/util/r;->a:I

    return-void
.end method

.method public static setOaidData(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setPageLoadTimeoutSec(I)V
    .locals 4

    const-string v0, "NBSAppAgent"

    const-string v1, "pageLoad timeout is error, value is "

    const-string v2, "NBSAppAgent setPageLoadTimeoutSec sec = "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    const/4 v2, 0x5

    if-lt p0, v2, :cond_1

    const/16 v2, 0xf

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v1

    mul-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/i/f;->b(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "error setPageLoadTimeoutSec"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setPageLoadingEndTime(Ljava/lang/Class;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setPageName(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-static {p1, v1}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "error setPageName"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPageName(Landroid/content/ComponentCallbacks;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/content/ComponentCallbacks;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 36
    invoke-static {p1, v1}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 38
    const-string p1, "NBSAppAgent"

    const-string v0, "error setPageName"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPageScanInterval(I)V
    .locals 4

    const-string v0, "NBSAppAgent"

    const-string v1, "scanInterval is too small, value is "

    const-string v2, "NBSAppAgent setPageScanInterval scanInterval = "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    const/16 v2, 0x32

    if-ge p0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/i/f;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v1, "error setPageScanInterval"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setPrivacyDataBlackList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NBSAppAgent setPrivacyDataBlackList blackList = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/e/a;->a()Lcom/networkbench/agent/impl/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/e/a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setRequestBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->setRequestBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setRequestBodyCallback"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setRequestHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->setRequestHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setRequestHeaderCallback"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setResponseBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->setRespBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setResponseBodyCallback"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setResponseHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->setRespHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setResponseHeaderCallback"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setSessionIdleTime(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->setSessionIdleTime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "setSessionIdleTime has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private setStartOption(IZ)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/agent/impl/util/r;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string p2, "setStartOption has an error : "

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static setUserCrashMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, " setUserCrashMessage key = "

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/crash/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    ----value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, " setUserCrashMessage has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 3

    const-string v0, " setUserIdentifier = "

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " setUserIdentifier = null"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, " userId must be m than 0,less than 64 ,remove it "

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/util/r;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string v0, " setUserIdentifier has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, " setUserProfile userID = "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/networkbench/agent/impl/n/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n userName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n signupTime "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n provice "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n city "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n Map "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, " setUserProfile has an error "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setViewContent(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :try_start_0
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/networkbench/R$string;->view_attached_content:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "error set view content"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setViewId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget v0, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-static {p0, v0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->setViewTag(Landroid/view/View;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "setViewId error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setViewStatus(Landroid/view/View;Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_VALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_INVALID:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    if-ne p1, v1, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->VIEW_STATUS_IGNORE:Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;

    if-ne p1, v1, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSViewStatus;->getViewStatusValue()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    sget p1, Lcom/networkbench/R$string;->view_status_tag:I

    invoke-static {p0, p1, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setViewTag(Landroid/view/View;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "error setViewStatus"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static setViewTag(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :try_start_0
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string p2, "setViewTag error"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setViewTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 26
    :try_start_0
    sget v0, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-static {p0, v0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->setViewTag(Landroid/view/View;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 27
    const-string p1, "NBSAppAgent"

    const-string v0, "setViewTag error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setWebviewProgressControlVol(I)V
    .locals 2

    :try_start_0
    sput p0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->progressControl:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "setWebviewProgressControlVol  error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static standbyEventActionEnd(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/k;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "standbyEventActionEnd  error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static standbyEventActionStart(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "standbyEventActionStart  error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static startNextSession()V
    .locals 2

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->startNextSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 16
    const-string v1, "startNextSession has an error : "

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static startNextSession(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->startNextSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "startNextSession has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static startPageWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "NBSAppAgent"

    const-string v2, "startPageWithName pageName:"

    const-string v3, "NBSAppAgent startPageWithName pageName = "

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "pageName is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v3, 0x80

    invoke-static {p0, v3}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newPageName:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/x;->a()Lcom/networkbench/agent/impl/util/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/util/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    const-string v2, "startPageWithName error"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static startSpan(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 2

    :try_start_0
    const-string v0, ""

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanType;->TYPE_SPAN:Lcom/networkbench/agent/impl/session/SpanType;

    invoke-static {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->startTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/SpanType;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "startSpan  error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 2

    .line 64
    :try_start_0
    const-string v0, ""

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanType;->TYPE_TRANSACTION:Lcom/networkbench/agent/impl/session/SpanType;

    invoke-static {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->startTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/SpanType;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    const-string p1, "NBSAppAgent"

    const-string v0, "startTransaction  error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method

.method private static startTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/SpanType;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 1

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ap()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0

    :cond_2
    new-instance v0, Lcom/networkbench/agent/impl/session/Transaction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/session/Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/SpanType;)V

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "name or operation is empty, please check"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method

.method public static startVideoReplay()V
    .locals 3

    :try_start_0
    const-string v0, "NBSAppAgent startVideoReplay"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->startScreenRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppAgent"

    const-string v2, "startScreenRecord"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static startWebRequestTiming(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->startWebRequestTiming(Ljava/util/Map;)V

    return-void
.end method

.method private static stopVideoReplay()V
    .locals 3

    :try_start_0
    const-string v0, "NBSAppAgent stopVideoReplay"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->stopScreenRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppAgent"

    const-string v2, "stopScreenRecord"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static stopWebRequestTiming(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->stopWebRequestTiming(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static unMaskClass(Ljava/lang/Class;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskViewByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "unMaskViewByClass has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskRegion(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskSensitiveRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "unMaskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskScreens(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskPageByName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "unMaskPageByName has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskSensitiveRegion(Landroid/graphics/Rect;)V
    .locals 1

    .line 15
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskSensitiveRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 16
    const-string v0, "unMaskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskSensitiveRegion(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskSensitiveRegion(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "unMaskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskView(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskSensitiveRegion(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "unMaskSensitiveRegion has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskViewId(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskViewById(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSAppAgent"

    const-string v1, "unMaskViewById has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static unMaskViewId(Ljava/lang/String;)V
    .locals 2

    .line 17
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->unMaskViewByTag(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 18
    const-string v0, "NBSAppAgent"

    const-string v1, "unMaskViewById has an error : "

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warningLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSLogger;->logWaring(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSAppAgent"

    const-string v0, "warning log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private withLoggingEnabled(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public closeLogForUpdateHint()Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/util/r;->z:Z

    return-object p0
.end method

.method public customLaunchEnd(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->isCustomAppStart(Z)Lcom/networkbench/agent/impl/NBSAppAgent;

    move-result-object p0

    return-object p0
.end method

.method public enableLogging(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    sput-boolean p1, Lcom/networkbench/agent/impl/util/r;->q:Z

    return-object p0
.end method

.method public enableNetworkContentRecord(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppAgent enableNetworkContentRecord enableNetworkRecord = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->setEnableNetworkContentRecord(Z)V

    return-object p0
.end method

.method public enableNewCalcAlgoForPage(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/util/r;->r(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "error enableNewPageCalcAlgo"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public encryptionRequired(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iput-boolean p1, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    return-object p0
.end method

.method public isCustomAppStart(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/type/b;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, " isCustomAppStart has an error "

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public isHarmonyOs(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iput-boolean p1, v0, Lcom/networkbench/agent/impl/util/r;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "isHarmonyOs  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public isHookWebChromeClient(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/util/r;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "isHookWebChromeClient  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public isOperatorCollect(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/util/r;->o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "isOperatorCollect  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public isSslEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ssl:Z

    return p0
.end method

.method public setChannelID(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    const-string v0, "setChannelID channelID = "

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_0
    sput-object v1, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->customSetChannelId:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    :goto_1
    const-string v0, "setChannelID has an error : "

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setDefaultCert(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    sput-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->IsCertEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "setDefaultCert  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setHttpEnabled(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ssl:Z

    return-object p0
.end method

.method public setIngoreScheme(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sput-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->schemeIgnore:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "setIngoreScheme  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setMultiRedirectHost([Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostList:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sput-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "setMultiRedirectHost error"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    const-string v0, "NBSAppAgent"

    const-string v1, "setMultiRedirectHost  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setOkhttpResponseBodyFilter(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p0

    :goto_0
    const-string v0, "NBSAppAgent"

    const-string v1, "setOkhttpResponseBodyFilter  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setOkhttpTcpListener(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    sput-boolean p1, Lcom/networkbench/agent/impl/okhttp3/d;->b:Z

    return-object p0
.end method

.method public setProxy(Ljava/lang/String;I)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sput-object p1, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->proxy:Ljava/lang/String;

    sput p2, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->port:I

    return-object p0
.end method

.method public setRedirectHost(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostList:[Ljava/lang/String;

    sput-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "NBSAppAgent"

    const-string v1, "setRedirectHost  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setRequestIdHeader(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "setRequestIdHeader is empty or null"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iput-object p1, v0, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setStartOption(I)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setStartOption(IZ)Lcom/networkbench/agent/impl/NBSAppAgent;

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 2

    const-string v0, "setVersionName  : versionName = "

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/e/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p0

    :goto_0
    const-string v0, "NBSAppAgent"

    const-string v1, "setVersionName  error"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .locals 8

    const-string v0, "NBSAppAgent start method called with context: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->apmIsRunning:Z

    if-eqz v1, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "NBSAgent is already running."

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "NBSAgent"

    const-string v2, "NBSAppAgent start"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/util/r;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "tingyun oom process, not run sdk"

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/util/r;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/networkbench/agent/impl/util/a;->a:Lcom/networkbench/agent/impl/util/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/a;->b(J)V

    new-instance v1, Lcom/networkbench/agent/impl/util/af;

    invoke-direct {v1, p1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->checkAppStartType(Lcom/networkbench/agent/impl/util/af;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/data/type/d;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/data/type/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/d;->c()Lcom/networkbench/agent/impl/util/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/c;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/af;->c(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->Q()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAgent disable !"

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_6
    invoke-direct {p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->hitPercent()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_7
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    sput v2, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "is not main process!"

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_4
    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "is not main process or is not deviceId! skip run sdk"

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_8
    sget-boolean v2, Lcom/networkbench/agent/impl/NBSAppAgent;->onlyMainProcess:Z

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "is not main process! NBSAgent not start!"

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    :try_start_9
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAppAgent;->isFilter()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "because os version is below 23, skip run sdk with sm encrypt"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->closeSDK(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-void

    :cond_7
    :try_start_a
    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "NBSAgent start."

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    const-string v1, "setLog"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->isInstrumented()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "NBSAgent enabled."

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "NBSAgent V{0}"

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ssl:Z

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->k(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->R()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/r;->b(J)V

    :cond_8
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/b;->f()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "Application inject code failed\uff0cplease contact tingyun for tech support"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/type/b;->b(Landroid/content/Context;)V

    :cond_9
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ag()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "NBSAppAgent"

    const-string v2, "begin initLogTrack in start"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/c/b;->a()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/NBSLogger;->initLogTrack(Landroid/content/Context;Lcom/networkbench/agent/impl/plugin/c/b;)V

    :cond_a
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "Android app is debugMode !"

    invoke-interface {v1, v3}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    const v1, 0x7ffff

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/NBSAppAgent;->setStartOption(IZ)Lcom/networkbench/agent/impl/NBSAppAgent;

    :cond_b
    const/4 v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/NBSAppAgent;->setStartOption(IZ)Lcom/networkbench/agent/impl/NBSAppAgent;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->U()V

    :cond_c
    new-instance v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-direct {v1, p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/NBSAgent;->setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->ax()V

    sget v3, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v3, :cond_d

    sget-object v3, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "begin init battery module"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object v3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/networkbench/agent/impl/f/e;->a(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;ILcom/networkbench/agent/impl/harvest/a/a/c;)V

    :cond_d
    iget-boolean v3, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->crashReportEnabled:Z

    if-eqz v3, :cond_e

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->enableCrashReporting(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/b/b;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->ac()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->initNativeCrash()V

    const-string v3, "init native Crash hook"

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/networkbench/agent/impl/util/x;->a()Lcom/networkbench/agent/impl/util/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/x;->b()V

    :cond_f
    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->apmIsRunning:Z

    const-string p1, "instrument"

    invoke-virtual {v0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAgent not enabled."

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return-void

    :goto_0
    :try_start_b
    sget-object v1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "Error occurred while starting the NBS agent!"

    invoke-interface {v1, v2, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    const-string p1, "NBSAppAgent start method completed"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method public declared-synchronized startInApplication(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAgent starts at application! "

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->start(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public withAnrEnabled(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->anrReportEnabled:Z

    return-object p0
.end method

.method public withApmTraceIdLength(I)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "apmTraceIdLength length must bigger than 8,less or equals 32"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public withCrashReportEnabled(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->crashReportEnabled:Z

    return-object p0
.end method

.method public withOnlyMainProcEnabled(Z)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    sput-boolean p1, Lcom/networkbench/agent/impl/NBSAppAgent;->onlyMainProcess:Z

    return-object p0
.end method

.method public withSampleRatio(I)Lcom/networkbench/agent/impl/NBSAppAgent;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/NBSAppAgent;->ratio:I

    return-object p0
.end method
