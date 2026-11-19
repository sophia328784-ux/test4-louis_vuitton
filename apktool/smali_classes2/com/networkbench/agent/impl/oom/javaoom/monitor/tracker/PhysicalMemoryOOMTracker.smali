.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;
.super Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "()V",
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
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker$Companion;

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_PhysicalMemoryTracker"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker$Companion;

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

    const-string p0, "reason_lmk_oom"

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public track()Z
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result v1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getDeviceMemoryThreshold()F

    move-result v2

    cmpg-float v1, v1, v2

    const-string v2, "OOMMonitor_PhysicalMemoryTracker"

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oom meminfo.rate < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getDeviceMemoryThreshold()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    const-string p0, "oom meminfo.rate < 10.0%"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result p0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_2

    const-string p0, "oom meminfo.rate < 15.0%"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result p0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_3

    const-string p0, "oom meminfo.rate < 20.0%"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result p0

    const v0, 0x3e99999a    # 0.3f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_4

    const-string p0, "oom meminfo.rate < 30.0%"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
