.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;
.super Lcom/networkbench/agent/impl/base/MonitorConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/agent/impl/base/MonitorConfig<",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0018R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        "Lcom/networkbench/agent/impl/base/MonitorConfig;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;",
        "analysisMaxTimesPerVersion",
        "",
        "analysisPeriodPerVersion",
        "heapThreshold",
        "",
        "fdThreshold",
        "threadThreshold",
        "deviceMemoryThreshold",
        "maxOverThresholdCount",
        "forceDumpJavaHeapMaxThreshold",
        "forceDumpJavaHeapDeltaThreshold",
        "loopInterval",
        "",
        "enableHprofDumpAnalysis",
        "",
        "hprofUploader",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;",
        "reportUploader",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;",
        "(IIFIIFIFIJZLcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)V",
        "getAnalysisMaxTimesPerVersion",
        "()I",
        "getAnalysisPeriodPerVersion",
        "getDeviceMemoryThreshold",
        "()F",
        "getEnableHprofDumpAnalysis",
        "()Z",
        "getFdThreshold",
        "getForceDumpJavaHeapDeltaThreshold",
        "getForceDumpJavaHeapMaxThreshold",
        "getHeapThreshold",
        "getHprofUploader",
        "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;",
        "getLoopInterval",
        "()J",
        "getMaxOverThresholdCount",
        "getReportUploader",
        "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;",
        "getThreadThreshold",
        "Builder",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final analysisMaxTimesPerVersion:I

.field private final analysisPeriodPerVersion:I

.field private final deviceMemoryThreshold:F

.field private final enableHprofDumpAnalysis:Z

.field private final fdThreshold:I

.field private final forceDumpJavaHeapDeltaThreshold:I

.field private final forceDumpJavaHeapMaxThreshold:F

.field private final heapThreshold:F

.field private final hprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

.field private final loopInterval:J

.field private final maxOverThresholdCount:I

.field private final reportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

.field private final threadThreshold:I


# direct methods
.method public constructor <init>(IIFIIFIFIJZLcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/base/MonitorConfig;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->analysisMaxTimesPerVersion:I

    iput p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->analysisPeriodPerVersion:I

    iput p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->heapThreshold:F

    iput p4, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->fdThreshold:I

    iput p5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->threadThreshold:I

    iput p6, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->deviceMemoryThreshold:F

    iput p7, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->maxOverThresholdCount:I

    iput p8, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->forceDumpJavaHeapMaxThreshold:F

    iput p9, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->forceDumpJavaHeapDeltaThreshold:I

    iput-wide p10, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->loopInterval:J

    iput-boolean p12, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->enableHprofDumpAnalysis:Z

    iput-object p13, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->hprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    iput-object p14, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->reportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

    return-void
.end method


# virtual methods
.method public final getAnalysisMaxTimesPerVersion()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->analysisMaxTimesPerVersion:I

    return p0
.end method

.method public final getAnalysisPeriodPerVersion()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->analysisPeriodPerVersion:I

    return p0
.end method

.method public final getDeviceMemoryThreshold()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->deviceMemoryThreshold:F

    return p0
.end method

.method public final getEnableHprofDumpAnalysis()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->enableHprofDumpAnalysis:Z

    return p0
.end method

.method public final getFdThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->fdThreshold:I

    return p0
.end method

.method public final getForceDumpJavaHeapDeltaThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->forceDumpJavaHeapDeltaThreshold:I

    return p0
.end method

.method public final getForceDumpJavaHeapMaxThreshold()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->forceDumpJavaHeapMaxThreshold:F

    return p0
.end method

.method public final getHeapThreshold()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->heapThreshold:F

    return p0
.end method

.method public final getHprofUploader()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->hprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    return-object p0
.end method

.method public final getLoopInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->loopInterval:J

    return-wide v0
.end method

.method public final getMaxOverThresholdCount()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->maxOverThresholdCount:I

    return p0
.end method

.method public final getReportUploader()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->reportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

    return-object p0
.end method

.method public final getThreadThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->threadThreshold:I

    return p0
.end method
