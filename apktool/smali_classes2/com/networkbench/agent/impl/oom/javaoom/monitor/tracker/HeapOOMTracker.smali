.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "()V",
        "mLastHeapRatio",
        "",
        "mOverThresholdCount",
        "",
        "reason",
        "",
        "reset",
        "",
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
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker$Companion;

.field private static final HEAP_RATIO_THRESHOLD_GAP:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_HeapOOMTracker"


# instance fields
.field private mLastHeapRatio:F

.field private mOverThresholdCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public reason()Ljava/lang/String;
    .locals 0

    const-string p0, "reason_heap_oom"

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mLastHeapRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mOverThresholdCount:I

    return-void
.end method

.method public track()Z
    .locals 8

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getRate()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heapRatio:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", heapThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getHeapThreshold()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mLastHeapRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mLastHeapRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OOMMonitor_HeapOOMTracker"

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getHeapThreshold()F

    move-result v2

    cmpl-float v2, v1, v2

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mLastHeapRatio:F

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v5

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mOverThresholdCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mOverThresholdCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[meet condition] overThresholdCount: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mOverThresholdCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", heapRatio: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", usedMem: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getUsed()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;->toMB(J)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "mb, max: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getMax()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;->toMB(J)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "mb"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->reset()V

    :goto_0
    iput v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mLastHeapRatio:F

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->mOverThresholdCount:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getMaxOverThresholdCount()I

    move-result p0

    if-lt v0, p0, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
