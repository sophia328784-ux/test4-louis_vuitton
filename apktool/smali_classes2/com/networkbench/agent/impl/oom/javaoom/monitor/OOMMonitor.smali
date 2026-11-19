.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;
.super Lcom/networkbench/agent/impl/base/loop/LoopMonitor;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/agent/impl/base/loop/LoopMonitor<",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        ">;",
        "Landroidx/lifecycle/LifecycleEventObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0010H\u0014J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\u000bH\u0002J\u0008\u0010\u001e\u001a\u00020\u000bH\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u0018\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0017H\u0002J\u0008\u0010&\u001a\u00020\u0017H\u0002J \u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0006H\u0002J \u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0010H\u0016J\u0008\u00100\u001a\u00020\u0017H\u0016J\u0008\u00101\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;",
        "Lcom/networkbench/agent/impl/base/loop/LoopMonitor;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "()V",
        "TAG",
        "",
        "mForegroundPendingRunnables",
        "",
        "Ljava/lang/Runnable;",
        "mHasDumped",
        "",
        "mHasProcessOldHprof",
        "mIsLoopPendingStart",
        "mIsLoopStarted",
        "mMonitorInitTime",
        "",
        "mOOMTrackers",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "mTrackReasons",
        "call",
        "Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;",
        "dumpAndAnalysis",
        "",
        "getLoopInterval",
        "init",
        "commonConfig",
        "Lcom/networkbench/agent/impl/base/CommonConfig;",
        "monitorConfig",
        "isExceedAnalysisPeriod",
        "isExceedAnalysisTimes",
        "manualDumpHprof",
        "onStateChanged",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "processOldHprofFile",
        "reAnalysisHprof",
        "startAnalysisService",
        "hprofFile",
        "Ljava/io/File;",
        "jsonFile",
        "reason",
        "startLoop",
        "clearQueue",
        "postAtFront",
        "delayMillis",
        "stopLoop",
        "trackOOM",
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
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

.field private static final TAG:Ljava/lang/String; = "OOMMonitor"

.field private static mForegroundPendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mHasDumped:Z

.field private static volatile mHasProcessOldHprof:Z

.field private static volatile mIsLoopPendingStart:Z

.field private static volatile mIsLoopStarted:Z

.field private static mMonitorInitTime:J

.field private static final mOOMTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrackReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;-><init>()V

    new-instance v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;-><init>()V

    new-instance v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;-><init>()V

    new-instance v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;

    invoke-direct {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;-><init>()V

    new-instance v4, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/base/loop/LoopMonitor;-><init>()V

    return-void
.end method

.method public static final synthetic access$dumpAndAnalysis(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->dumpAndAnalysis()V

    return-void
.end method

.method public static final synthetic access$getMTrackReasons$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMonitorConfig$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    return-object p0
.end method

.method public static final synthetic access$processOldHprofFile(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->processOldHprofFile()V

    return-void
.end method

.method public static final synthetic access$startAnalysisService(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final dumpAndAnalysis()V
    .locals 13

    const-string v0, "hprof analysis dir:"

    const-string v1, "dumpAndAnalysis"

    const-string v2, "OOMMonitor"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->isSpaceEnough()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "available space not enough"

    invoke-static {v2, p0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    sget-boolean v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasDumped:Z

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    sput-boolean v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasDumped:Z

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createJsonAnalysisFile(Ljava/util/Date;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createOOMContextFile(Ljava/util/Date;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createHprofAnalysisFile(Ljava/util/Date;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v6, v1}, Ljava/io/File;->setWritable(Z)Z

    invoke-virtual {v6, v1}, Ljava/io/File;->setReadable(Z)Z

    const-string v7, "write crash content to file"

    invoke-static {v2, v7}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/networkbench/agent/impl/crash/oom/NBSCrashTransaction;->formatCrashAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;->getInstance()Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/oom/fastdump/ForkJvmHeapDumper;->dump(Ljava/lang/String;)Z

    const-string v0, "end hprof dump"

    invoke-static {v2, v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "start hprof analysis"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v4, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onJvmThreshold Exception "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    :goto_3
    return-void
.end method

.method private final isExceedAnalysisPeriod()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OOMPreferenceManager.getFirstAnalysisTime():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getFirstLaunchTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OOMMonitor"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getDEBUG()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getFirstLaunchTime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getAnalysisPeriodPerVersion()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, v4, v0

    if-lez p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    const-string p0, "current version is out of max analysis period!"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method private final isExceedAnalysisTimes()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OOMPreferenceManager.getAnalysisTimes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getAnalysisTimes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OOMMonitor"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getDEBUG()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getAnalysisTimes()I

    move-result v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getAnalysisMaxTimesPerVersion()I

    move-result p0

    if-le v0, p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    const-string p0, "current version is out of max analysis times!"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method private final manualDumpHprof()V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/io/File;

    :goto_0
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "manualDumpHprof upload:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OOMMonitor"

    invoke-static {v5, v4}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getHprofUploader()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;->STRIPPED:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;

    invoke-interface {v4, v3, v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;->upload(Ljava/io/File;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final processOldHprofFile()V
    .locals 2

    const-string v0, "OOMMonitor"

    const-string v1, "processHprofFile"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasProcessOldHprof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasProcessOldHprof:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->reAnalysisHprof()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->manualDumpHprof()V

    return-void
.end method

.method private final reAnalysisHprof()V
    .locals 11

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/io/File;

    :goto_0
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file canonicalPath is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OOMMonitor"

    invoke-static {v6, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getVERSION_NAME()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "delete other version files "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, ".hprof"

    invoke-static {v5, v7, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, ".json"

    invoke-static {v8, v7, v9}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "create json file and then start service"

    invoke-static {v6, v7}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    const-string v6, "reanalysis"

    invoke-direct {p0, v4, v5, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_4

    const-string v5, "last analysis isn\'t succeed, delete file"

    goto :goto_2

    :cond_4
    const-string v5, "delete old files"

    :goto_2
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private final startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string v0, "OOMMonitor"

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string p0, "hprof file size 0"

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/base/Monitor_ApplicationKt;->isForeground(Landroid/app/Application;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "try startAnalysisService, but not foreground"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->increaseAnalysisTimes()V

    new-instance v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;-><init>()V

    invoke-virtual {v5, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;->setReason(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/base/Monitor_ApplicationKt;->getCurrentActivity(Landroid/app/Application;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    invoke-virtual {v5, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;->setCurrentPage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mMonitorInitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;->setUsageSeconds(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    new-instance v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;

    invoke-direct {v6, p1, p2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;->startAnalysisService(Landroid/app/Application;Ljava/util/List;Ljava/io/File;Ljava/io/File;Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;)V

    return-void
.end method

.method private final trackOOM()Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->refresh()V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;->track()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mTrackReasons:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getEnableHprofDumpAnalysis()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$trackOOM$1;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$trackOOM$1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0, v0, v1}, Lcom/networkbench/agent/impl/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    sget-object p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Continue;->INSTANCE:Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Continue;

    check-cast p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    return-object p0
.end method


# virtual methods
.method public call()Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/base/Monitor_ApplicationKt;->sdkVersionMatch()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasDumped:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast p0, Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->trackOOM()Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->call()Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;

    move-result-object p0

    return-object p0
.end method

.method public getLoopInterval()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getLoopInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/networkbench/agent/impl/base/CommonConfig;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/base/loop/LoopMonitor;->init(Lcom/networkbench/agent/impl/base/CommonConfig;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mMonitorInitTime:J

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/base/CommonConfig;->getSharedPreferencesInvoker()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->init(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/base/CommonConfig;->getRootFileInvoker()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->init(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;

    invoke-virtual {v1, p1, p2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;->init(Lcom/networkbench/agent/impl/base/CommonConfig;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/base/Monitor_ApplicationKt;->registerProcessLifecycleObserver(Landroid/app/Application;Landroidx/lifecycle/LifecycleEventObserver;)Z

    return-void
.end method

.method public bridge synthetic init(Lcom/networkbench/agent/impl/base/CommonConfig;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->init(Lcom/networkbench/agent/impl/base/CommonConfig;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const-string v0, "OOMMonitor"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopStarted:Z

    sput-boolean p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopPendingStart:Z

    const-string p1, "background"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->stopLoop()V

    return-void

    :cond_1
    sget-boolean p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mHasDumped:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopPendingStart:Z

    if-eqz p1, :cond_2

    const-string p1, "foreground"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/networkbench/agent/impl/base/loop/LoopMonitor;->startLoop$default(Lcom/networkbench/agent/impl/base/loop/LoopMonitor;ZZJILjava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public startLoop(ZZJ)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/networkbench/agent/impl/base/Monitor;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/base/Monitor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/base/Monitor_ProcessKt;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OOMMonitor"

    const-string v1, "startLoop()"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopStarted:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopStarted:Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/base/loop/LoopMonitor;->startLoop(ZZJ)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->getLoopHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startLoop$2;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getDEBUG()Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string p0, "Monitor is not initialized"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public stopLoop()V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/networkbench/agent/impl/base/Monitor;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/base/Monitor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/base/Monitor_ProcessKt;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/networkbench/agent/impl/base/loop/LoopMonitor;->stopLoop()V

    const-string p0, "OOMMonitor"

    const-string v0, "stopLoop()"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->mIsLoopStarted:Z

    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getDEBUG()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p0, "Monitor is not initialized"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
