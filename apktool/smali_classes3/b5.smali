.class public final synthetic Lb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb5;->b:I

    iput-object p1, p0, Lb5;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb5;->d:Ljava/lang/Object;

    iput-object p3, p0, Lb5;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lb5;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/q/f;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/batch/android/n1/c;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/s/a;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/batch/android/g1/c;

    invoke-static {v0, v1, p0}, Lcom/batch/android/s/a;->c(Lcom/batch/android/s/a;Landroid/content/Context;Lcom/batch/android/g1/c;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->D(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    sget-object v2, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->b()Z

    move-result v2

    const-string v4, "Surface update cancellation should only occur on main thread."

    invoke-static {v4, v2}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1, p0}, Landroidx/camera/core/impl/SessionConfig$Builder;->o(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/g0;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/SessionResult;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/session/g0;->run()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_5
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/AsyncFunction;

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    :try_start_2
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v2, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {v2, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    invoke-virtual {v2, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_2
    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    :goto_3
    return-void

    :pswitch_6
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/media/Media;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/media/Metadata;

    invoke-static {v0, v1, p0}, Lcom/sightcall/universal/media/UploaderService;->a(Lcom/sightcall/universal/media/Media;Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Llv/nfc/reader/TagNfcExecutor;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Llv/nfc/reader/data/models/LVTagInput;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Llv/nfc/reader/TagNfcExecutorCallback;

    invoke-static {v0, v1, p0}, Llv/nfc/reader/TagNfcExecutor;->a(Llv/nfc/reader/TagNfcExecutor;Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->a(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    sget v2, Landroidx/work/impl/Processor;->l:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object v1, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v2

    iget-object v4, v2, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/work/impl/Processor;->d(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v5

    if-ne v5, p0, :cond_3

    invoke-virtual {v0, v4}, Landroidx/work/impl/Processor;->c(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_3
    :goto_4
    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    sget v4, Landroidx/work/impl/Processor;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Landroidx/work/impl/Processor;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/ExecutionListener;

    invoke-interface {v0, v2, v3}, Landroidx/work/impl/ExecutionListener;->c(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_5

    :cond_4
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :pswitch_a
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam$PupilAnalysisCallback;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/PupilData;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck;

    invoke-interface {v0, v1, p0}, Lcom/perfectcorp/perfectlib/MakeupCam$PupilAnalysisCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/PupilData;Lcom/perfectcorp/perfectlib/PupilQualityCheck;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lb41;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lb41;->invoke()Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_7
    return-void

    :pswitch_c
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/lightup/sdk/device/features/Feature;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;

    invoke-virtual {v0, v1, p0}, Lcom/lightup/sdk/device/features/Feature;->onBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v3, Lcom/google/firebase/messaging/EnhancedIntentService;->b:I

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/EnhancedIntentService;->handleIntent(Landroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    return-void

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-boolean v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->g:Z

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    :cond_6
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_8
    return-void

    :pswitch_f
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->a:I

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->T(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->a:I

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->a0(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-boolean v0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->k:Z

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    :cond_7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_9
    return-void

    :pswitch_12
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Landroidx/fragment/app/FragmentTransitionImpl;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable;->a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    goto :goto_a

    :cond_8
    return-void

    :pswitch_14
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/Observer;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget v3, Landroidx/camera/core/impl/CameraPresenceProvider;->l:I

    :try_start_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v4}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v2, v3

    :cond_a
    check-cast v2, Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->c()Landroidx/lifecycle/LiveData;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_b
    return-void

    :pswitch_15
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/internal/ui/CallActivity;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Lnet/rtccloud/sdk/VideoModule;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-static {v0, v1, p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->A(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/audio/BufferedAudioStream;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->g:Landroidx/camera/video/internal/audio/AudioStream;

    invoke-interface {v0, v1, p0}, Landroidx/camera/video/internal/audio/AudioStream;->a(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    const/16 v4, 0xb

    :try_start_9
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lz1;

    invoke-direct {v0, p0, v4}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    sget p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    sub-int/2addr p0, v3

    sput p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    if-nez p0, :cond_d

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_b

    :catchall_6
    move-exception p0

    goto :goto_c

    :cond_d
    :goto_b
    monitor-exit v0

    return-void

    :goto_c
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0

    :catchall_7
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lz1;

    invoke-direct {v5, p0, v4}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    sget-object v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    sub-int/2addr p0, v3

    sput p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    if-nez p0, :cond_f

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_d

    :catchall_8
    move-exception p0

    goto :goto_e

    :cond_f
    :goto_d
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    throw v0

    :goto_e
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw p0

    :pswitch_18
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    iget-object v2, v0, Landroidx/camera/video/internal/audio/AudioSource;->g:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_11

    if-eq v2, v3, :cond_10

    const/4 p0, 0x2

    if-eq v2, p0, :cond_10

    goto :goto_f

    :cond_10
    const-string p0, "The audio recording callback must be registered before the audio source is started."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    goto :goto_f

    :cond_11
    iput-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->j:Ljava/util/concurrent/Executor;

    iput-object p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->k:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    :goto_f
    return-void

    :pswitch_19
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->p(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lb5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lb5;->d:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    iget-object p0, p0, Lb5;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-ltz v3, :cond_13

    :goto_10
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;->c(I)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f1406a6

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_12
    if-eq v1, v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
