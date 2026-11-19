.class public Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSRunnableInspect"


# instance fields
.field private initTimeStamp:J

.field private runnableHandler:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "NBSRunnableInspect"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->requestEnvionmentFit()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "request envionment is ok"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->getTraceEngineAdapter()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->runnableHandler:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->initTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v1, "error init NBSRunnableInspect"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getTraceEngineAdapter()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    return-object p0
.end method

.method private requestEnvionmentFit()Z
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "NBSRunnableInspect"

    const-string v0, "ui is closed"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->getTraceEngineAdapter()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/q;->e()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public isOverTime()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->initTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public preRunMethod()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->runnableHandler:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->preMethod()V

    invoke-static {p0}, Lcom/networkbench/agent/impl/asyncaction/j;->a(Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSRunnableInspect"

    const-string v1, "error preRunMethod"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public releaseHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->runnableHandler:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    return-void
.end method

.method public sufRunMethod()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->runnableHandler:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->sufMethod()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->releaseHandler()V

    invoke-static {p0}, Lcom/networkbench/agent/impl/asyncaction/j;->b(Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSRunnableInspect"

    const-string v1, "error sufRunMethod"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
