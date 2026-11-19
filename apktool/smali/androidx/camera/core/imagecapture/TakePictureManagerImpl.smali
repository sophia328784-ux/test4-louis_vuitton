.class public Landroidx/camera/core/imagecapture/TakePictureManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/imagecapture/TakePictureManager;
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
.implements Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field public c:Landroidx/camera/core/imagecapture/ImagePipeline;

.field public d:Landroidx/camera/core/imagecapture/RequestWithCallback;

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->f:Z

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->b:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x3

    const-string v2, "Camera is closed."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lw21;

    invoke-direct {v7, v4, v0, v5}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v2, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iput-boolean v5, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    iget-object v2, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->i:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v2, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    iget-object v2, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, v1, Landroidx/camera/core/imagecapture/RequestWithCallback;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lw21;

    invoke-direct {v4, v1, v0, v5}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d()V

    return-void
.end method

.method public final c(Landroidx/camera/core/imagecapture/ImagePipeline;)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->c:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object p1, p1, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p1, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object p1, p1, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v0, p1, Landroidx/camera/core/SafeCloseImageReaderProxy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p0, p1, Landroidx/camera/core/SafeCloseImageReaderProxy;->f:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d:Landroidx/camera/core/imagecapture/RequestWithCallback;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->f:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->c:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, v1, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/CaptureNode;->a()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/core/imagecapture/TakePictureRequest;

    if-nez v4, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v5, Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-direct {v5, v4, v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureManagerImpl;)V

    iget-object v6, v5, Landroidx/camera/core/imagecapture/RequestWithCallback;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d:Landroidx/camera/core/imagecapture/RequestWithCallback;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_4

    move v1, v9

    goto :goto_1

    :cond_4
    move v1, v8

    :goto_1
    xor-int/2addr v1, v9

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object v5, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d:Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    new-instance v1, Lv21;

    invoke-direct {v1, v0, v8}, Lv21;-><init>(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, v5, Landroidx/camera/core/imagecapture/RequestWithCallback;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lw21;

    invoke-direct {v2, v0, v5, v8}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->c:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v2, v1, Landroidx/camera/core/imagecapture/ImagePipeline;->a:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->a()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v3

    sget-object v7, Landroidx/camera/core/impl/ImageCaptureConfig;->P:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v2, v7, v3}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/core/impl/CaptureBundle;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v7, Landroidx/camera/core/imagecapture/ImagePipeline;->f:I

    add-int/lit8 v2, v7, 0x1

    sput v2, Landroidx/camera/core/imagecapture/ImagePipeline;->f:I

    new-instance v10, Landroidx/core/util/Pair;

    iget-object v2, v1, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureBundle;->a()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/camera/core/impl/CaptureStage;

    new-instance v15, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v15}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    move/from16 v16, v8

    iget-object v8, v1, Landroidx/camera/core/imagecapture/ImagePipeline;->b:Landroidx/camera/core/impl/CaptureConfig;

    iget v9, v8, Landroidx/camera/core/impl/CaptureConfig;->c:I

    iput v9, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->c:I

    iget-object v8, v8, Landroidx/camera/core/impl/CaptureConfig;->b:Landroidx/camera/core/impl/OptionsBundle;

    invoke-virtual {v15, v8}, Landroidx/camera/core/impl/CaptureConfig$Builder;->c(Landroidx/camera/core/impl/Config;)V

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->k()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/camera/core/impl/CaptureConfig$Builder;->a(Ljava/util/Collection;)V

    iget-object v8, v2, Landroidx/camera/core/imagecapture/CaptureNode$In;->c:Landroidx/camera/core/impl/ImmediateSurface;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v8}, Landroidx/camera/core/impl/CaptureConfig$Builder;->d(Landroidx/camera/core/impl/DeferrableSurface;)V

    iget v8, v2, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->g:I

    iget-object v9, v2, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->h:Ljava/util/ArrayList;

    move-object/from16 v17, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    iget-object v1, v2, Landroidx/camera/core/imagecapture/CaptureNode$In;->d:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz v1, :cond_5

    invoke-virtual {v15, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->d(Landroidx/camera/core/impl/DeferrableSurface;)V

    :cond_5
    iget-object v1, v2, Landroidx/camera/core/imagecapture/CaptureNode$In;->e:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    move/from16 v3, v16

    :goto_3
    if-eqz v3, :cond_7

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->d(Landroidx/camera/core/impl/DeferrableSurface;)V

    :cond_7
    iput-boolean v3, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->d:Z

    invoke-static {v8}, Landroidx/camera/core/internal/utils/ImageUtil;->c(I)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x20

    if-ne v8, v1, :cond_d

    :cond_8
    sget-object v1, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    sget-object v3, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v3, v1}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->i:Landroidx/camera/core/impl/Config$Option;

    goto :goto_4

    :cond_9
    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->i:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v8, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->b:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v8, v1, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :goto_4
    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->j:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    move/from16 v3, v16

    :goto_5
    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->c()Landroid/graphics/Rect;

    move-result-object v8

    move/from16 v19, v3

    iget-object v3, v2, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->f:Landroid/util/Size;

    invoke-static {v8, v3}, Landroidx/camera/core/impl/utils/TransformUtils;->c(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v3

    if-eqz v19, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->b()I

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0x64

    goto :goto_6

    :cond_b
    const/16 v3, 0x5f

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/TakePictureRequest;->e()I

    move-result v3

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v8, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->b:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v8, v1, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v14}, Landroidx/camera/core/impl/CaptureStage;->a()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    iget-object v1, v1, Landroidx/camera/core/impl/CaptureConfig;->b:Landroidx/camera/core/impl/OptionsBundle;

    invoke-virtual {v15, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->c(Landroidx/camera/core/impl/Config;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->g:Landroidx/camera/core/impl/MutableTagBundle;

    iget-object v3, v3, Landroidx/camera/core/impl/TagBundle;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v15, Landroidx/camera/core/impl/CaptureConfig$Builder;->g:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Landroidx/camera/core/impl/TagBundle;->a:Landroid/util/ArrayMap;

    const-string v8, "CAPTURE_CONFIG_ID_KEY"

    invoke-virtual {v1, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Landroidx/camera/core/imagecapture/CaptureNode$In;->a:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v15, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->b(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_e

    iget-object v1, v2, Landroidx/camera/core/imagecapture/CaptureNode$In;->b:Landroidx/camera/core/impl/CameraCaptureCallback;

    if-eqz v1, :cond_e

    invoke-virtual {v15, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->b(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    :cond_e
    invoke-virtual {v15}, Landroidx/camera/core/impl/CaptureConfig$Builder;->e()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v8

    move/from16 v8, v16

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto/16 :goto_2

    :cond_f
    move-object/from16 v18, v3

    move/from16 v16, v8

    move v8, v9

    new-instance v1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-direct {v1, v11, v5}, Landroidx/camera/core/imagecapture/CameraRequest;-><init>(Ljava/util/List;Landroidx/camera/core/imagecapture/TakePictureCallback;)V

    new-instance v2, Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/imagecapture/ProcessingRequest;-><init>(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/RequestWithCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-direct {v10, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v10, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->c:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v3, v3, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    iget-object v3, v3, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->l:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v3, v2}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v2, v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->b:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {v2}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->b()V

    iget-object v3, v1, Landroidx/camera/core/imagecapture/CameraRequest;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->a(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/imagecapture/TakePictureManagerImpl$1;

    invoke-direct {v3, v0, v1}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl$1;-><init>(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;Landroidx/camera/core/imagecapture/CameraRequest;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, v5, Landroidx/camera/core/imagecapture/RequestWithCallback;->i:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    move/from16 v8, v16

    :goto_7
    const-string v0, "CaptureRequestFuture can only be set once."

    invoke-static {v0, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object v2, v5, Landroidx/camera/core/imagecapture/RequestWithCallback;->i:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final e(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    const-string v0, "TakePictureManagerImpl"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d()V

    return-void
.end method

.method public final f(Landroidx/camera/core/ForwardingImageProxy;)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lv21;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lv21;-><init>(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final pause()V
    .locals 5

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->f:Z

    iget-object p0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d:Landroidx/camera/core/imagecapture/RequestWithCallback;

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const/4 v2, 0x3

    const-string v3, "The request is aborted silently and retried."

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    iget-object v2, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->i:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->b:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->f:Z

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d()V

    return-void
.end method
