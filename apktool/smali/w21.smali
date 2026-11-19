.class public final synthetic Lw21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lw21;->b:I

    iput-object p1, p0, Lw21;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw21;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw21;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lw21;->d:Ljava/lang/Object;

    iget-object p0, p0, Lw21;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/v0/i;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/batch/android/v0/i;->i(Lcom/batch/android/v0/i;Landroid/content/Context;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/v0/f;

    check-cast v2, Lcom/batch/android/x/d;

    invoke-static {p0, v2}, Lcom/batch/android/v0/f;->k(Lcom/batch/android/v0/f;Lcom/batch/android/x/d;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/batch/android/v0/f;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/batch/android/v0/f;->i(Lcom/batch/android/v0/f;Landroid/content/Context;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/batch/android/v0/d;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/batch/android/v0/d;->i(Lcom/batch/android/v0/d;Landroid/content/Context;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/batch/android/u/c;

    check-cast v2, Lcom/batch/android/t/b;

    invoke-static {p0, v2}, Lcom/batch/android/u/c;->b(Lcom/batch/android/u/c;Lcom/batch/android/t/b;)V

    return-void

    :pswitch_4
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-virtual {v0, p0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/batch/android/a;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/batch/android/a;->a(Lcom/batch/android/a;Landroid/widget/FrameLayout;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/batch/android/s/a;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/batch/android/s/a;->a(Lcom/batch/android/s/a;Landroid/content/Context;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/batch/android/a;

    check-cast v2, Landroid/view/View;

    invoke-static {p0, v2}, Lcom/batch/android/a;->b(Lcom/batch/android/a;Landroid/view/View;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/batch/android/t0/a;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/batch/android/t0/a;->a(Lcom/batch/android/t0/a;Landroid/content/Context;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/linkplay/ota2/model/OTAStatus;

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    invoke-virtual {p0}, Lcom/linkplay/ota2/model/OTAStatus;->getRebootPercent()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->REBOOT:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/ota2/model/OTAStatus;->getUpdatePercent()I

    move-result p0

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    if-lez p0, :cond_1

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->INSTALL:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;->DOWNLOAD:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_a
    check-cast p0, Landroidx/media3/common/util/WakeLockManager;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroidx/media3/common/util/c;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Landroidx/media3/common/util/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p0, "ExoPlayer:WakeLockManager"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :pswitch_b
    check-cast p0, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-static {p0, v2}, Lcom/sightcall/universal/internal/util/Views;->a(Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_c
    check-cast p0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    check-cast v2, [Landroid/view/View;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->p:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    array-length v0, v2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_4

    aget-object v5, v2, v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->p:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->q:I

    if-eq v0, v3, :cond_5

    array-length v0, v2

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v3, v2, v1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->q:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :pswitch_d
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v2, Landroidx/media3/exoplayer/CodecParameters;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->h(Landroidx/media3/exoplayer/CodecParameters;)V

    return-void

    :pswitch_e
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v2, Ljava/lang/Exception;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->q(Ljava/lang/Exception;)V

    return-void

    :pswitch_f
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v2, Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->b(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_10
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->c(Ljava/lang/String;)V

    return-void

    :pswitch_11
    check-cast p0, Landroidx/camera/video/VideoCapture;

    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    if-ne v2, v0, :cond_6

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->H()V

    :cond_6
    return-void

    :pswitch_12
    check-cast p0, Lcom/google/common/util/concurrent/SettableFuture;

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return-void

    :pswitch_13
    check-cast p0, Lcom/sightcall/universal/media/Media;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/sightcall/universal/media/UploaderService;->c(Lcom/sightcall/universal/media/Media;Landroid/content/Context;)V

    return-void

    :pswitch_14
    check-cast p0, Ljava/lang/Runnable;

    check-cast v2, Landroidx/room/TransactionExecutor;

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->h()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->h()V

    throw p0

    :pswitch_15
    check-cast p0, Landroidx/work/impl/background/greedy/TimeLimiter;

    check-cast v2, Landroidx/work/impl/StartStopToken;

    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->b:Landroidx/work/impl/WorkLauncher;

    const/4 v0, 0x3

    invoke-interface {p0, v2, v0}, Landroidx/work/impl/WorkLauncher;->d(Landroidx/work/impl/StartStopToken;I)V

    return-void

    :pswitch_16
    check-cast p0, Landroidx/camera/lifecycle/a;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    :try_start_1
    invoke-virtual {p0}, Landroidx/camera/lifecycle/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0

    :pswitch_17
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->h(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    return-void

    :pswitch_18
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v2, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void

    :pswitch_19
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object p0

    invoke-interface {p0, v2}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    :goto_3
    return-void

    :pswitch_1a
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v2, Landroidx/camera/core/ImageProxy;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1b
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v2, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v4

    if-eqz v4, :cond_b

    move v1, v3

    :cond_b
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->d()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    if-eqz v1, :cond_d

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_5

    :cond_d
    const-string p0, "One and only one callback is allowed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_1c
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    check-cast v2, Landroidx/camera/core/imagecapture/RequestWithCallback;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
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
