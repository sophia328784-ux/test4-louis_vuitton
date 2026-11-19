.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "()V",
        "mLastThreadCount",
        "",
        "mOverThresholdCount",
        "dumpThreadIfNeed",
        "",
        "getThreadCount",
        "reason",
        "",
        "reset",
        "track",
        "",
        "Companion",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker$Companion;

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_ThreadOOMTracker"

.field private static final THREAD_COUNT_THRESHOLD_GAP:I = 0x32


# instance fields
.field private mLastThreadCount:I

.field private mOverThresholdCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;-><init>()V

    return-void
.end method

.method private final dumpThreadIfNeed()V
    .locals 8

    const-string v0, "over threshold dumpThreadIfNeed"

    const-string v1, "OOMMonitor_ThreadOOMTracker"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getMaxOverThresholdCount()I

    move-result p0

    if-le v0, p0, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/self/task"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

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

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "/proc/self/task child files is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [Ljava/io/File;

    :goto_1
    check-cast p0, [Ljava/io/File;

    if-eqz p0, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p0

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v0, p0, v5

    :try_start_1
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Ljava/io/File;

    const-string v7, "comm"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/io/FilesKt;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    const-string v0, "failed to read "

    const-string v7, "/comm"

    invoke-static {v0, v7, v6}, Ld21;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    const-string v0, "threadNames = "

    invoke-static {p0, v0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getThreadDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    const-string v3, ","

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private final getThreadCount()I
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getThread()I

    move-result p0

    return p0
.end method


# virtual methods
.method public reason()Ljava/lang/String;
    .locals 0

    const-string p0, "reason_thread_oom"

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mLastThreadCount:I

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    return-void
.end method

.method public track()Z
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->getThreadCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getThreadThreshold()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mLastThreadCount:I

    add-int/lit8 v1, v1, -0x32

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[meet condition] overThresholdCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", threadCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OOMMonitor_ThreadOOMTracker"

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->dumpThreadIfNeed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->reset()V

    :goto_0
    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mLastThreadCount:I

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->mOverThresholdCount:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getMaxOverThresholdCount()I

    move-result p0

    if-lt v0, p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
