.class final Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;
.super Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ShadeFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadeFinderFrameProcessingThread"
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

.field private final d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

.field private final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

.field private volatile f:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;)V
    .locals 1

    const-string v0, "ShadeFinderFrameProcessingThread"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->c:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    return-void
.end method

.method private static synthetic a(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V

    return-void
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->f:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;

    return-void
.end method

.method public final processing(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
    .locals 14

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->c:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->f:Z

    iget v0, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->g:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->c:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->b:Landroid/hardware/Sensor;

    const/16 v4, 0x5a

    if-nez v3, :cond_0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    :cond_0
    aget v3, v2, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v5, v12

    const/4 v5, 0x2

    if-gez v3, :cond_1

    aget v3, v2, v11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v6, v12

    if-gez v3, :cond_1

    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v6, v12

    if-gez v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x41133333    # 9.2f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    aget v3, v2, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aget v5, v2, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    add-float/2addr v5, v6

    cmpl-float v3, v3, v5

    const/4 v5, 0x0

    if-lez v3, :cond_4

    aget v2, v2, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v2, v2, v5

    iget v0, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->h:I

    if-lez v2, :cond_3

    add-int/lit16 v0, v0, 0x10e

    :try_start_1
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_4
    aget v2, v2, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v2, v2, v5

    iget v0, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->h:I

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit16 v0, v0, 0xb4

    :try_start_2
    rem-int/lit16 v0, v0, 0x168

    :goto_1
    monitor-exit v1

    :cond_6
    move v7, v0

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :goto_3
    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-wide v1, v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_ResetShadeFinder(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ShadeFinder"

    const-string v1, "ResetShadeFinder failed."

    invoke-static {v0, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v5, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v6, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iget-boolean v9, p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    iget-wide v1, v3, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static/range {v1 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[BIIIZZ)Z

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget-wide v2, p1, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v2, v3, p1, v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderData__SWIG_1(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ShadeFinder"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetShadeFinderData failed. detectionMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p0, "ShadeFinder"

    const-string p1, "GetShadeFinderCheckResult failed."

    invoke-static {p0, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->f:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;

    if-eqz p1, :cond_b

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    invoke-direct {p0, v1}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/SkinCare3$SkinCareCheckResult;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/ShadeFinderData;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/perfectlib/ShadeFinderData;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/f;

    const/16 v3, 0x9

    invoke-direct {v2, p1, v1, p0, v3}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    iget p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    const/4 p1, 0x6

    if-lt p0, p1, :cond_a

    sget-boolean v0, Lcom/perfectcorp/perfectlib/ShadeFinder;->f:Z

    if-eqz v0, :cond_a

    sput-boolean v10, Lcom/perfectcorp/perfectlib/ShadeFinder;->f:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKShadeFinderDetectCompleteEvent;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKShadeFinderDetectCompleteEvent;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :cond_a
    if-ge p0, p1, :cond_b

    sput-boolean v11, Lcom/perfectcorp/perfectlib/ShadeFinder;->f:Z

    :cond_b
    return-void
.end method
