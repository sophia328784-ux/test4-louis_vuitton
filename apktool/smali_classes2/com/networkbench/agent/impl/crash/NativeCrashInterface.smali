.class public Lcom/networkbench/agent/impl/crash/NativeCrashInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answerAnomalousCallBack(ILjava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->answerAnomalousCallBack(ILjava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)V

    return-void
.end method

.method public static getAddAppInfo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllStackTraces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    .line 19
    const-string v0, "2"

    invoke-static {v0}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->getAppInfo(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->c(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "getAppInfo error"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object p0
.end method

.method public static getAppPhase()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result v0

    return v0
.end method

.method public static getAppSoPath()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    sget-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "get app so path error"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getCpuArch()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getCrashStackCount()I
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->az()I

    move-result v0

    return v0
.end method

.method public static getCurrentActivity()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustData()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->p()Lcom/networkbench/agent/impl/k/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTag()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceData()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->g(Landroid/content/Context;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "getDeviceData error"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object v0
.end method

.method public static getExcursionOfMsNotConvert(J)J
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/util/r;->g(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getInitAgentTime()J
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->R()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    sget-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "getInitAgentTime error"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getNativeContext()Landroid/content/Context;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    sget-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "getNativeContext error"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNativeVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/nbslens/nativecrashlib/NativeInterface;->getNativeVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public static getNetworkTimestamp()J
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceLimitCount()I
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getStackTraceLimit()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getStackTraceLimit()I

    move-result v0

    return v0
.end method

.method public static getSuuid()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLogs()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/util/r;->q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getUserActionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initNativeCrash()V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->isClassExist()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/b/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/networkbench/nbslens/nativecrashlib/NativeInterface;->initNativeCrash()Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/b/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initNativeCrash failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_0
    return-void
.end method

.method private static isClassExist()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnableBrsAgent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isInitSuccess()Z
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static saveFeature()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->isInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "init failed ,native crash set feature 0"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(I)V

    :cond_0
    return-void
.end method

.method public static storeCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    new-instance v0, Lcom/networkbench/agent/impl/crash/j;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/crash/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TingyunSDK_crash"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "storeCrashInfo debugLog has error"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/crash/f;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/crash/f;->isSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "native storeCrashInfo listeners span   isSpan: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/networkbench/agent/impl/crash/f;->isSpan()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->s(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Lcom/networkbench/agent/impl/crash/f;->notifyCrash(Ljava/lang/Thread;Ljava/lang/Throwable;J)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->saveSDKData()V

    const-wide/16 p0, 0x1f4

    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    sget-object p0, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "process error"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string p0, "error storeCrashInfo params is null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static storeUUID(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->crash:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;)V

    return-void
.end method
