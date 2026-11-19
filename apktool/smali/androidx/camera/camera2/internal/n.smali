.class public final synthetic Landroidx/camera/camera2/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/camera/camera2/internal/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/camera/camera2/internal/n;->b:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    iget-object p0, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    check-cast p1, Ljava/lang/Boolean;

    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-wide v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->g:J

    iget-object v4, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->d:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    new-instance p1, Landroidx/camera/camera2/internal/q;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Landroidx/camera/camera2/internal/q;-><init>(I)V

    const-wide/32 v2, 0xf4240

    .line 99
    div-long v5, v0, v2

    .line 100
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;-><init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;)V

    .line 101
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->n(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 102
    new-instance p1, Landroidx/camera/camera2/internal/d;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Landroidx/camera/camera2/internal/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, p1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 103
    new-instance v2, Lr00;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lr00;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JI)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 104
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->d:Landroidx/camera/camera2/internal/CaptureSession;

    iget-object v0, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->i:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    sget-object v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;->SESSION_INITIALIZED:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/Camera2RequestProcessor;

    iget-object v1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->h:Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/DeferrableSurface;

    instance-of v5, v4, Landroidx/camera/core/impl/SessionProcessorSurface;

    const-string v6, "Surface must be SessionProcessorSurface"

    invoke-static {v5, v6}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    check-cast v4, Landroidx/camera/core/impl/SessionProcessorSurface;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1, v3}, Landroidx/camera/camera2/internal/Camera2RequestProcessor;-><init>(Landroidx/camera/camera2/internal/CaptureSession;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->g:Landroidx/camera/camera2/internal/Camera2RequestProcessor;

    const-string p1, "ProcessingCaptureSession"

    const/4 v0, 0x3

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->a:Landroidx/camera/core/impl/SessionProcessor;

    invoke-interface {p1}, Landroidx/camera/core/impl/SessionProcessor;->f()V

    sget-object p1, Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;->ON_CAPTURE_SESSION_STARTED:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    iput-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->i:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->f:Landroidx/camera/core/impl/SessionConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->h(Landroidx/camera/core/impl/SessionConfig;)V

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->j:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->j:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->b(Ljava/util/List;)V

    iput-object v2, p0, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->j:Ljava/util/List;

    :cond_3
    :goto_1
    return-object v2
.end method

.method public d(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/internal/ZslControlImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->a()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->c:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {p0, p1}, Landroidx/camera/core/internal/utils/ZslRingBuffer;->d(Landroidx/camera/core/ImageProxy;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string p0, "ZslControlImpl"

    invoke-static {p0}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/internal/n;->b:I

    iget-object p0, p0, Landroidx/camera/camera2/internal/n;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/internal/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "triggerAePrecapture"

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;->a:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p0, "waitFor3AResult"

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    new-instance v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$2;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$2;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->b(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    const-string p0, "submitStillCapture"

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$CameraCapturePipelineImpl;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$CameraCapturePipelineImpl;->b:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->i:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$1;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$1;->c()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    const-string p0, "invokePostCaptureFuture"

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->h:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->b(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;->b:Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->b:Z

    const-string p0, "AePreCapture"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
