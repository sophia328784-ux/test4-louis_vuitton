.class public Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/d;


# static fields
.field private static final a:Ljava/lang/String; = "NBSRunnableHandler"


# instance fields
.field private b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

.field private c:Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

.field private d:Lcom/networkbench/agent/impl/asyncaction/q;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->d:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/q;->e()Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    const-string v1, "NBSRunnableHandler"

    if-nez v0, :cond_0

    const-string v0, "error root trace is null, please check"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->c:Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;
    :try_end_0
    .catch Lcom/networkbench/agent/impl/asyncaction/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "error metricEventListener is set, please check"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runnable handler push rootTrac:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSRunnableHandler"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->d:Lcom/networkbench/agent/impl/asyncaction/q;

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->c:Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->d:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;)Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 45
    iget-wide v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public preMethod()V
    .locals 2

    const-string v0, "preMethod invoke"

    const-string v1, "NBSRunnableHandler"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "preMethod invoke in rootUnit same thread, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->a()V

    return-void
.end method

.method public sufMethod()V
    .locals 2

    const-string v0, "sufMethod invoke"

    const-string v1, "NBSRunnableHandler"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "sufMethod invoke in rootUnit same thread, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->d:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/q;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->b:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->c:Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    :cond_1
    return-void
.end method
