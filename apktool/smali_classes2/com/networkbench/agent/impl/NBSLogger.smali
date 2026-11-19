.class public Lcom/networkbench/agent/impl/NBSLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TYPE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NBSLogger"

.field private static instance:Lcom/networkbench/agent/impl/plugin/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customLogInvokeStackTrace(I)V
    .locals 2

    const-string v0, "NBSLogger"

    if-gez p0, :cond_0

    :try_start_0
    const-string p0, "nIncIndex is small than 0, skip"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sput p0, Lcom/networkbench/agent/impl/plugin/c/g;->a:I

    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v1, "error customLogInvokeStackTrace"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static emergencyStop()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    return-void
.end method

.method private static flush()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/plugin/c/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSLogger"

    const-string v2, "flush log to file error"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    return-object v0
.end method

.method public static initLogTrack(Landroid/content/Context;Lcom/networkbench/agent/impl/plugin/c/b;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    if-nez v0, :cond_0

    const-class v0, Lcom/networkbench/agent/impl/NBSLogger;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/networkbench/agent/impl/plugin/c/g;

    const-string v2, "com.networkbench.agent.impl.logtrack.Logan"

    new-instance v3, Lcom/networkbench/agent/impl/util/c;

    invoke-direct {v3, p0}, Lcom/networkbench/agent/impl/util/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, p1}, Lcom/networkbench/agent/impl/plugin/c/g;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/util/c;Lcom/networkbench/agent/impl/plugin/c/b;)V

    sput-object v1, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "NBSLogger"

    const-string v0, "initLogTrack error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isInit()Z
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, v1}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSLogger"

    const-string v0, "debug log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, v1}, Lcom/networkbench/agent/impl/plugin/c/g;->d(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSLogger"

    const-string v0, "error log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, v1}, Lcom/networkbench/agent/impl/plugin/c/g;->b(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSLogger"

    const-string v0, "info log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logWaring(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/NBSLogger;->instance:Lcom/networkbench/agent/impl/plugin/c/g;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, p1, v1}, Lcom/networkbench/agent/impl/plugin/c/g;->c(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSLogger"

    const-string v0, "warning log error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
