.class public Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSRunnableInstrumentation"

.field private static final controller:Lcom/networkbench/agent/impl/asyncaction/g;

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/g;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->controller:Lcom/networkbench/agent/impl/asyncaction/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    return-object v0
.end method

.method private static getRunnableInspect(Ljava/lang/Object;)Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "nbsHandler"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "NBSRunnableInstrumentation"

    const-string v0, "not find nbsHandler, please check"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isObjectValid(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/Handler;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/concurrent/Callable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static preRunMethod(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->isObjectValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->getRunnableInspect(Ljava/lang/Object;)Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->preRunMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSRunnableInstrumentation"

    const-string v1, "preRunMethod error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sufRunMethod(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->isObjectValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->getRunnableInspect(Ljava/lang/Object;)Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInspect;->sufRunMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSRunnableInstrumentation"

    const-string v1, "sufRunMethod error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static threadStartInstrument(Ljava/lang/Thread;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->controller:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    :try_start_1
    instance-of v0, p0, Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "thread is HandlerThread, not instrument"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->wrapperThread(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_0
    :try_start_3
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "threadStartInstrument error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    throw v0
.end method

.method private static wrapperThread(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSRunnableInstrumentation;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/k;

    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-direct {v2, v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    invoke-direct {v1, p0, v2}, Lcom/networkbench/agent/impl/asyncaction/k;-><init>(Ljava/lang/Thread;Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;)V

    return-object v1
.end method
