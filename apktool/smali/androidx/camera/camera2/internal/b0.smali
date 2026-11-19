.class public final synthetic Landroidx/camera/camera2/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/camera/camera2/internal/b0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/b0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/camera2/internal/b0;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/internal/b0;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/camera/camera2/internal/b0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Landroidx/camera/camera2/internal/b0;->b:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/b0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/camera2/internal/b0;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/internal/b0;->e:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/camera/camera2/internal/b0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/camera/camera2/internal/b0;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroidx/camera/camera2/internal/b0;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v1, v0, Landroidx/camera/camera2/internal/b0;->e:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    iget-object v2, v0, Landroidx/camera/camera2/internal/b0;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    iget-object v0, v0, Landroidx/camera/camera2/internal/b0;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    iget-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->u:Landroidx/camera/camera2/internal/compat/workaround/SessionResetPolicy;

    iget-boolean v0, v0, Landroidx/camera/camera2/internal/compat/workaround/SessionResetPolicy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->b:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/CaptureSessionRepository;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    invoke-interface {v2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->w()V

    iget-object v8, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->a:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Opener is disabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->b:Landroidx/camera/camera2/internal/CaptureSessionRepository;

    iget-object v2, v0, Landroidx/camera/camera2/internal/CaptureSessionRepository;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/internal/CaptureSessionRepository;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    invoke-direct {v5, v1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    new-instance v2, Landroidx/camera/camera2/internal/b0;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/internal/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$1;

    invoke-direct {v1, v3}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$1;-><init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    iget-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, v0, Landroidx/camera/camera2/internal/b0;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;

    iget-object v2, v0, Landroidx/camera/camera2/internal/b0;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/core/impl/SessionConfig;

    iget-object v3, v0, Landroidx/camera/camera2/internal/b0;->e:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    iget-object v0, v0, Landroidx/camera/camera2/internal/b0;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$Opener;

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->b:Ljava/util/concurrent/Executor;

    const-string v6, "ProcessingCaptureSession"

    const/4 v7, 0x3

    invoke-static {v7, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v7, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->i:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    sget-object v8, Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;->DE_INITIALIZED:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    if-ne v7, v8, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SessionProcessorCaptureSession is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto/16 :goto_8

    :cond_2
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/DeferrableSurface;

    new-instance v1, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    const-string v2, "Surface closed"

    invoke-direct {v1, v2, v0}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/DeferrableSurface;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto/16 :goto_8

    :cond_3
    const/4 v4, 0x0

    move v8, v4

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    :goto_3
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_8

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v13, v12, Landroidx/camera/core/impl/DeferrableSurface;->j:Ljava/lang/Class;

    const-class v14, Landroidx/camera/core/Preview;

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    iget v14, v12, Landroidx/camera/core/impl/DeferrableSurface;->i:I

    iget-object v15, v12, Landroidx/camera/core/impl/DeferrableSurface;->h:Landroid/util/Size;

    if-nez v13, :cond_6

    iget-object v13, v12, Landroidx/camera/core/impl/DeferrableSurface;->j:Ljava/lang/Class;

    const-class v7, Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v12, Landroidx/camera/core/impl/DeferrableSurface;->j:Ljava/lang/Class;

    const-class v13, Landroidx/camera/core/ImageCapture;

    invoke-static {v7, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v12}, Landroidx/camera/core/impl/DeferrableSurface;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    invoke-static {v7, v15, v14}, Landroidx/camera/core/impl/OutputSurface;->a(Landroid/view/Surface;Landroid/util/Size;I)Landroidx/camera/core/impl/OutputSurface;

    move-result-object v10

    goto :goto_5

    :cond_5
    iget-object v7, v12, Landroidx/camera/core/impl/DeferrableSurface;->j:Ljava/lang/Class;

    const-class v13, Landroidx/camera/core/ImageAnalysis;

    invoke-static {v7, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v12}, Landroidx/camera/core/impl/DeferrableSurface;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    invoke-static {v7, v15, v14}, Landroidx/camera/core/impl/OutputSurface;->a(Landroid/view/Surface;Landroid/util/Size;I)Landroidx/camera/core/impl/OutputSurface;

    move-result-object v11

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {v12}, Landroidx/camera/core/impl/DeferrableSurface;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    invoke-static {v7, v15, v14}, Landroidx/camera/core/impl/OutputSurface;->a(Landroid/view/Surface;Landroid/util/Size;I)Landroidx/camera/core/impl/OutputSurface;

    move-result-object v9

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    iget-object v7, v2, Landroidx/camera/core/impl/SessionConfig;->b:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->f()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/impl/DeferrableSurface;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    iget-object v12, v7, Landroidx/camera/core/impl/DeferrableSurface;->h:Landroid/util/Size;

    iget v13, v7, Landroidx/camera/core/impl/DeferrableSurface;->i:I

    invoke-static {v8, v12, v13}, Landroidx/camera/core/impl/OutputSurface;->a(Landroid/view/Surface;Landroid/util/Size;I)Landroidx/camera/core/impl/OutputSurface;

    move-result-object v8

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    sget-object v12, Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;->SESSION_INITIALIZED:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    iput-object v12, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->i:Landroidx/camera/camera2/internal/ProcessingCaptureSession$ProcessorState;

    :try_start_5
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->e:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v7, :cond_a

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {v12}, Landroidx/camera/core/impl/DeferrableSurfaces;->b(Ljava/util/List;)V
    :try_end_5
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v12, 0x5

    invoke-static {v12, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :try_start_6
    iget-object v13, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->a:Landroidx/camera/core/impl/SessionProcessor;

    invoke-static {v9, v10, v11, v8}, Landroidx/camera/core/impl/OutputSurfaceConfiguration;->a(Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;Landroidx/camera/core/impl/OutputSurface;)Landroidx/camera/core/impl/OutputSurfaceConfiguration;

    invoke-interface {v13}, Landroidx/camera/core/impl/SessionProcessor;->e()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v8

    iput-object v8, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->h:Landroidx/camera/core/impl/SessionConfig;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v8}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v4, v4, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v6, Landroidx/camera/camera2/internal/d;

    invoke-direct {v6, v1, v7, v12}, Landroidx/camera/camera2/internal/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v4, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->h:Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/DeferrableSurface;

    sget-object v7, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v7}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    new-instance v8, Landroidx/camera/camera2/internal/m;

    invoke-direct {v8, v6, v12}, Landroidx/camera/camera2/internal/m;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v7, v8, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_7

    :cond_b
    new-instance v4, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v4}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    invoke-virtual {v4, v2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->a(Landroidx/camera/core/impl/SessionConfig;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->c()V

    iget-object v2, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->h:Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v4, v2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->a(Landroidx/camera/core/impl/SessionConfig;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->d()Z

    move-result v2

    const-string v6, "Cannot transform the SessionConfig"

    invoke-static {v2, v6}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->b()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    iget-object v4, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->d:Landroidx/camera/camera2/internal/CaptureSession;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2, v3, v0}, Landroidx/camera/camera2/internal/CaptureSession;->a(Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/SynchronizedCaptureSession$Opener;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/internal/ProcessingCaptureSession$1;

    invoke-direct {v2, v1}, Landroidx/camera/camera2/internal/ProcessingCaptureSession$1;-><init>(Landroidx/camera/camera2/internal/ProcessingCaptureSession;)V

    invoke-static {v0, v2, v5}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-static {v6}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/camera/camera2/internal/ProcessingCaptureSession;->e:Ljava/util/List;

    invoke-static {v1}, Landroidx/camera/core/impl/DeferrableSurfaces;->a(Ljava/util/List;)V

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroidx/camera/core/impl/DeferrableSurface;->b()V

    :cond_c
    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/internal/b0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/b0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/camera2/internal/b0;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    iget-object p0, p0, Landroidx/camera/camera2/internal/b0;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    const-string v3, "openCaptureSession[session="

    iget-object v4, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v7, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->j:Ljava/util/List;

    if-eqz v7, :cond_0

    invoke-static {v7}, Landroidx/camera/core/impl/DeferrableSurfaces;->a(Ljava/util/List;)V

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->j:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Landroidx/camera/core/impl/DeferrableSurfaces;->b(Ljava/util/List;)V

    iput-object v1, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->j:Ljava/util/List;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->h:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v5, "The openCaptureSessionCompleter can only set once!"

    invoke-static {v5, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object p1, v0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->h:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v2, p0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->a(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :goto_3
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :goto_4
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method
