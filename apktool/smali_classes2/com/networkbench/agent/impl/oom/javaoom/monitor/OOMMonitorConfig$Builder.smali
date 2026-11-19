.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/base/MonitorConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/networkbench/agent/impl/base/MonitorConfig$Builder<",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\"\u0018\u0000 72\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0008J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0008J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0011J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0016J\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;",
        "Lcom/networkbench/agent/impl/base/MonitorConfig$Builder;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        "()V",
        "mAnalysisMaxTimesPerVersion",
        "",
        "mAnalysisPeriodPerVersion",
        "mDeviceMemoryThreshold",
        "",
        "mEnableHprofDumpAnalysis",
        "",
        "mFdThreshold",
        "mForceDumpJavaHeapDeltaThreshold",
        "mForceDumpJavaHeapMaxThreshold",
        "mHeapThreshold",
        "Ljava/lang/Float;",
        "mHprofUploader",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;",
        "mLoopInterval",
        "",
        "mMaxOverThresholdCount",
        "mReportUploader",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;",
        "mThreadThreshold",
        "Ljava/lang/Integer;",
        "mVssSizeThreshold",
        "build",
        "setAnalysisMaxTimesPerVersion",
        "analysisMaxTimesPerVersion",
        "setAnalysisPeriodPerVersion",
        "analysisPeriodPerVersion",
        "setDeviceMemoryThreshold",
        "deviceMemoryThreshold",
        "setEnableHprofDumpAnalysis",
        "enableHprofDumpAnalysis",
        "setFdThreshold",
        "fdThreshold",
        "setForceDumpJavaHeapDeltaThreshold",
        "forceDumpJavaHeapDeltaThreshold",
        "setForceDumpJavaHeapMaxThreshold",
        "forceDumpJavaHeapMaxThreshold",
        "setHeapThreshold",
        "heapThreshold",
        "setHprofUploader",
        "hprofUploader",
        "setLoopInterval",
        "loopInterval",
        "setMaxOverThresholdCount",
        "maxOverThresholdCount",
        "setReportUploader",
        "reportUploader",
        "setThreadThreshold",
        "threadThreshold",
        "setVssSizeThreshold",
        "vssSizeThreshold",
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
.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;

.field private static final DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;

.field private static final DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;


# instance fields
.field private mAnalysisMaxTimesPerVersion:I

.field private mAnalysisPeriodPerVersion:I

.field private mDeviceMemoryThreshold:F

.field private mEnableHprofDumpAnalysis:Z

.field private mFdThreshold:I

.field private mForceDumpJavaHeapDeltaThreshold:I

.field private mForceDumpJavaHeapMaxThreshold:F

.field private mHeapThreshold:Ljava/lang/Float;

.field private mHprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

.field private mLoopInterval:J

.field private mMaxOverThresholdCount:I

.field private mReportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

.field private mThreadThreshold:Ljava/lang/Integer;

.field private mVssSizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion$DEFAULT_THREAD_THRESHOLD$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion$DEFAULT_THREAD_THRESHOLD$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    const v0, 0x4d3f6400

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    const v0, 0x37b1d0

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mVssSizeThreshold:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mFdThreshold:I

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    const v0, 0x55730

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mLoopInterval:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    return-void
.end method

.method public static final synthetic access$getDEFAULT_HEAP_THRESHOLD$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_THREAD_THRESHOLD$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/networkbench/agent/impl/base/MonitorConfig;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->build()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/base/MonitorConfig;

    return-object p0
.end method

.method public build()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;
    .locals 15

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    iget-object v3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mHeapThreshold:Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;

    invoke-static {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;->access$getDEFAULT_HEAP_THRESHOLD$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;)F

    move-result v3

    :goto_0
    iget v4, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mFdThreshold:I

    iget-object v5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mThreadThreshold:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;

    invoke-static {v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;->access$getDEFAULT_THREAD_THRESHOLD$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;)I

    move-result v5

    :goto_1
    iget v6, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    iget v7, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    iget-wide v10, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mLoopInterval:J

    iget-boolean v12, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    iget v8, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    iget v9, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    iget-object v13, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mHprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    iget-object v14, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mReportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

    invoke-direct/range {v0 .. v14}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;-><init>(IIFIIFIFIJZLcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)V

    return-object v0
.end method

.method public final setAnalysisMaxTimesPerVersion(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    return-object p0
.end method

.method public final setAnalysisPeriodPerVersion(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    return-object p0
.end method

.method public final setDeviceMemoryThreshold(F)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    return-object p0
.end method

.method public final setEnableHprofDumpAnalysis(Z)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    return-object p0
.end method

.method public final setFdThreshold(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mFdThreshold:I

    return-object p0
.end method

.method public final setForceDumpJavaHeapDeltaThreshold(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    return-object p0
.end method

.method public final setForceDumpJavaHeapMaxThreshold(F)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    return-object p0
.end method

.method public final setHeapThreshold(F)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mHeapThreshold:Ljava/lang/Float;

    return-object p0
.end method

.method public final setHprofUploader(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mHprofUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    return-object p0
.end method

.method public final setLoopInterval(J)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mLoopInterval:J

    return-object p0
.end method

.method public final setMaxOverThresholdCount(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    return-object p0
.end method

.method public final setReportUploader(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mReportUploader:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

    return-object p0
.end method

.method public final setThreadThreshold(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mThreadThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setVssSizeThreshold(I)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->mVssSizeThreshold:I

    return-object p0
.end method
