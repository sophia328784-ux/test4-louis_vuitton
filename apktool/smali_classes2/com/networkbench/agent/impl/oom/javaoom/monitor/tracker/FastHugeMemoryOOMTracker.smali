.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "()V",
        "mDumpReason",
        "",
        "reason",
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
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker$Companion;

.field private static final REASON_HIGH_WATERMARK:Ljava/lang/String; = "high_watermark"

.field private static final REASON_HUGE_DELTA:Ljava/lang/String; = "delta"

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_FastHugeMemoryTracker"


# instance fields
.field private mDumpReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->mDumpReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reason()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reason_fast_huge_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->mDumpReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public track()Z
    .locals 9

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getRate()F

    move-result v2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getForceDumpJavaHeapMaxThreshold()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "OOMMonitor_FastHugeMemoryTracker"

    if-lez v2, :cond_0

    const-string v0, "high_watermark"

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->mDumpReason:Ljava/lang/String;

    const-string p0, "[meet condition] fast huge memory allocated detected, high memory watermark, force dump analysis!"

    invoke-static {v4, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getLastJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getMax()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getUsed()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getUsed()J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-float v0, v1

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$KB;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$KB;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getForceDumpJavaHeapDeltaThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$KB;->toByte(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const-string v0, "delta"

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;->mDumpReason:Ljava/lang/String;

    const-string p0, "[meet condition] fast huge memory allocated detected, over the delta threshold!"

    invoke-static {v4, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
