.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker$Companion;
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
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "()V",
        "mLastFdCount",
        "",
        "mOverThresholdCount",
        "dumpFdIfNeed",
        "",
        "getFdCount",
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
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker$Companion;

.field private static final FD_COUNT_THRESHOLD_GAP:I = 0x32

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_FdOOMTracker"


# instance fields
.field private mLastFdCount:I

.field private mOverThresholdCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;-><init>()V

    return-void
.end method

.method private final dumpFdIfNeed()V
    .locals 7

    const-string v0, "over threshold dumpFdIfNeed"

    const-string v1, "OOMMonitor_FdOOMTracker"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getMaxOverThresholdCount()I

    move-result p0

    if-le v0, p0, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/self/fd"

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
    const-string p0, "/proc/self/fd child files is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [Ljava/io/File;

    :goto_1
    check-cast p0, [Ljava/io/File;

    if-eqz p0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, p0, v2

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "failed to read link "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getFdDumpDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    :try_start_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ","

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private final getFdCount()I
    .locals 1

    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/self/fd"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public reason()Ljava/lang/String;
    .locals 0

    const-string p0, "reason_fd_oom"

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mLastFdCount:I

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    return-void
.end method

.method public track()Z
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->getFdCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getFdThreshold()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mLastFdCount:I

    add-int/lit8 v1, v1, -0x32

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[meet condition] overThresholdCount: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fdCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OOMMonitor_FdOOMTracker"

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->dumpFdIfNeed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->reset()V

    :goto_0
    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mLastFdCount:I

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->mOverThresholdCount:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;->getMonitorConfig()Ljava/lang/Object;

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
