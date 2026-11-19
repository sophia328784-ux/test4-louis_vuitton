.class public final synthetic Landroidx/camera/camera2/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/o;->b:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iput-object p2, p0, Landroidx/camera/camera2/internal/o;->c:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/o;->d:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    const-string v2, "ZslControlImpl"

    iget-object v3, v1, Landroidx/camera/camera2/internal/o;->b:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iget-object v4, v3, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->d:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Landroidx/camera/camera2/internal/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x5

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CaptureConfig;

    new-instance v9, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v9, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>(Landroidx/camera/core/impl/CaptureConfig;)V

    iget v10, v0, Landroidx/camera/core/impl/CaptureConfig;->c:I

    const/4 v12, 0x3

    const-string v13, "Camera2CapturePipeline"

    if-ne v10, v8, :cond_3

    iget-object v0, v4, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->m:Landroidx/camera/camera2/internal/ZslControlImpl;

    iget-boolean v14, v0, Landroidx/camera/camera2/internal/ZslControlImpl;->e:Z

    if-nez v14, :cond_3

    iget-boolean v14, v0, Landroidx/camera/camera2/internal/ZslControlImpl;->d:Z

    if-nez v14, :cond_3

    :try_start_0
    iget-object v0, v0, Landroidx/camera/camera2/internal/ZslControlImpl;->c:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    goto :goto_1

    :catch_0
    invoke-static {v2}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_2

    iget-object v0, v4, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->m:Landroidx/camera/camera2/internal/ZslControlImpl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZslControlImpl;->j:Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;

    if-eqz v0, :cond_0

    invoke-interface {v14}, Landroidx/camera/core/ImageProxy;->O()Landroid/media/Image;

    move-result-object v15

    iget-object v11, v0, Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;->a:Landroid/media/ImageWriter;

    if-eqz v11, :cond_0

    if-eqz v15, :cond_0

    :try_start_1
    invoke-virtual {v11, v15}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    iget-object v11, v0, Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;->a:Landroid/media/ImageWriter;

    new-instance v15, Lr71;

    invoke-direct {v15, v14}, Lr71;-><init>(Landroidx/camera/core/ImageProxy;)V

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;->c:Ljava/util/concurrent/Executor;

    new-instance v8, Ls20;

    invoke-direct {v8, v0, v15}, Ls20;-><init>(Ljava/util/concurrent/Executor;Lr71;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v14}, Landroidx/camera/core/ImageProxy;->p1()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    instance-of v8, v0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    if-eqz v8, :cond_1

    check-cast v0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    iget-object v11, v0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->a:Landroidx/camera/core/impl/CameraCaptureResult;

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v2}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {v13}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_4

    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_3

    :cond_2
    invoke-static {v12, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_3
    const/4 v11, 0x0

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    iput-object v11, v9, Landroidx/camera/core/impl/CaptureConfig$Builder;->h:Landroidx/camera/core/impl/CameraCaptureResult;

    goto :goto_6

    :cond_5
    iget v0, v3, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->a:I

    const/4 v8, -0x1

    if-ne v0, v12, :cond_6

    iget-boolean v0, v3, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->f:Z

    if-nez v0, :cond_6

    const/4 v0, 0x4

    goto :goto_5

    :cond_6
    if-eq v10, v8, :cond_8

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x2

    :goto_5
    if-eq v0, v8, :cond_9

    iput v0, v9, Landroidx/camera/core/impl/CaptureConfig$Builder;->c:I

    :cond_9
    invoke-static {v12, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_6
    iget-object v0, v3, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->e:Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;

    iget-boolean v8, v0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->b:Z

    if-eqz v8, :cond_a

    iget v8, v1, Landroidx/camera/camera2/internal/o;->d:I

    if-nez v8, :cond_a

    iget-boolean v0, v0, Landroidx/camera/camera2/internal/compat/workaround/OverrideAeModeForStillCapture;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->b()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->c(Landroidx/camera/core/impl/Config;)V

    :cond_a
    new-instance v0, Landroidx/camera/camera2/internal/n;

    invoke-direct {v0, v3, v9}, Landroidx/camera/camera2/internal/n;-><init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroidx/camera/core/impl/CaptureConfig$Builder;->e()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, v4, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->f:Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$ControlUpdateListenerInternal;

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$ControlUpdateListenerInternal;->a:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CaptureConfig;

    new-instance v4, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v4, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>(Landroidx/camera/core/impl/CaptureConfig;)V

    iget v6, v3, Landroidx/camera/core/impl/CaptureConfig;->c:I

    const/4 v11, 0x5

    if-ne v6, v11, :cond_c

    iget-object v6, v3, Landroidx/camera/core/impl/CaptureConfig;->h:Landroidx/camera/core/impl/CameraCaptureResult;

    if-eqz v6, :cond_c

    iput-object v6, v4, Landroidx/camera/core/impl/CaptureConfig$Builder;->h:Landroidx/camera/core/impl/CameraCaptureResult;

    :cond_c
    iget-object v6, v3, Landroidx/camera/core/impl/CaptureConfig;->a:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v3, v3, Landroidx/camera/core/impl/CaptureConfig;->f:Z

    if-eqz v3, :cond_14

    iget-object v3, v4, Landroidx/camera/core/impl/CaptureConfig$Builder;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    const-string v7, "Camera2CameraImpl"

    if-nez v6, :cond_d

    const/4 v11, 0x5

    invoke-static {v11, v7}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_7

    :cond_d
    iget-object v6, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->b:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v6, Landroidx/camera/core/impl/UseCaseAttachState;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    iget-boolean v11, v10, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->f:Z

    if-eqz v11, :cond_e

    iget-boolean v10, v10, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->e:Z

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    iget-object v9, v9, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->a:Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/SessionConfig;

    iget-object v8, v8, Landroidx/camera/core/impl/SessionConfig;->g:Landroidx/camera/core/impl/CaptureConfig;

    iget-object v9, v8, Landroidx/camera/core/impl/CaptureConfig;->a:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v8}, Landroidx/camera/core/impl/CaptureConfig;->c()I

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v8}, Landroidx/camera/core/impl/CaptureConfig;->c()I

    move-result v10

    if-eqz v10, :cond_11

    sget-object v11, Landroidx/camera/core/impl/UseCaseConfig;->F:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v12, v4, Landroidx/camera/core/impl/CaptureConfig$Builder;->b:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v12, v11, v10}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v8}, Landroidx/camera/core/impl/CaptureConfig;->d()I

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v8}, Landroidx/camera/core/impl/CaptureConfig;->d()I

    move-result v8

    if-eqz v8, :cond_12

    sget-object v10, Landroidx/camera/core/impl/UseCaseConfig;->G:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v11, v4, Landroidx/camera/core/impl/CaptureConfig$Builder;->b:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v11, v10, v8}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_12
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v4, v9}, Landroidx/camera/core/impl/CaptureConfig$Builder;->d(Landroidx/camera/core/impl/DeferrableSurface;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v11, 0x5

    invoke-static {v11, v7}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_7

    :cond_14
    const/4 v11, 0x5

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->e()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    const-string v2, "Issue capture request"

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->w(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->n:Landroidx/camera/camera2/internal/CaptureSessionInterface;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/internal/CaptureSessionInterface;->b(Ljava/util/List;)V

    invoke-static {v5}, Landroidx/camera/core/impl/utils/futures/Futures;->b(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
