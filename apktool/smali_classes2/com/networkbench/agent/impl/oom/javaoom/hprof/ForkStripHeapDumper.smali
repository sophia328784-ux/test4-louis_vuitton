.class public Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/oom/fastdump/HeapDumper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OOMMonitor_ForkStripHeapDumper"


# instance fields
.field private mLoadSuccess:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$Holder;->access$100()Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->mLoadSuccess:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tingyun-strip-dump"

    invoke-static {v0}, Lcom/networkbench/agent/impl/base/Monitor_SoKt;->loadSoQuietly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->mLoadSuccess:Z

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->initStripDump()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "dump failed caused by "

    const-string v1, "dump result "

    const-string v2, "dump "

    monitor-enter p0

    :try_start_0
    const-string v3, "OOMMonitor_ForkStripHeapDumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/base/Monitor_ApplicationKt;->sdkVersionMatch()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->init()V

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->mLoadSuccess:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p1, "OOMMonitor_ForkStripHeapDumper"

    const-string v0, "dump failed caused by so not loaded!"

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;->hprofName(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;->getInstance()Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;->dump(Ljava/lang/String;)Z

    move-result v3

    const-string p1, "OOMMonitor_ForkStripHeapDumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "OOMMonitor_ForkStripHeapDumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "dump failed caused by sdk version not supported!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public native hprofName(Ljava/lang/String;)V
.end method

.method public native initStripDump()V
.end method
