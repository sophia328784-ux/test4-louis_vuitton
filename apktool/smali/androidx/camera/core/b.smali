.class public final synthetic Landroidx/camera/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/CameraX;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Landroidx/camera/core/b;->b:Landroidx/camera/core/CameraX;

    iput-object p4, p0, Landroidx/camera/core/b;->c:Landroid/content/Context;

    iput-object p7, p0, Landroidx/camera/core/b;->d:Ljava/util/concurrent/Executor;

    iput p1, p0, Landroidx/camera/core/b;->e:I

    iput-object p6, p0, Landroidx/camera/core/b;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p2, p0, Landroidx/camera/core/b;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/camera/core/b;->b:Landroidx/camera/core/CameraX;

    iget-object v1, v0, Landroidx/camera/core/b;->c:Landroid/content/Context;

    iget-object v7, v0, Landroidx/camera/core/b;->d:Ljava/util/concurrent/Executor;

    move-object v2, v1

    iget v1, v0, Landroidx/camera/core/b;->e:I

    iget-object v6, v0, Landroidx/camera/core/b;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v3, v0, Landroidx/camera/core/b;->g:J

    sget-object v0, Landroidx/camera/core/CameraX;->r:Ljava/lang/Object;

    const-string v0, "CX:initAndRetryRecursively"

    invoke-static {v0}, Landroidx/tracing/Trace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/camera/core/impl/utils/ContextUtil;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->d0()Landroidx/camera/core/impl/CameraFactory$Provider;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v0, v5, Landroidx/camera/core/CameraX;->d:Ljava/util/concurrent/Executor;

    iget-object v10, v5, Landroidx/camera/core/CameraX;->e:Landroid/os/Handler;

    invoke-static {v0, v10}, Landroidx/camera/core/impl/CameraThreadConfig;->a(Ljava/util/concurrent/Executor;Landroid/os/Handler;)Landroidx/camera/core/impl/CameraThreadConfig;

    move-result-object v10

    iget-object v0, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->c0()Landroidx/camera/core/CameraSelector;

    move-result-object v11

    iget-object v0, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->e0()J

    move-result-wide v12

    iget-object v0, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->g0()Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v9}, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;->a(Landroid/content/Context;)Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;

    move-result-object v0

    iput-object v0, v5, Landroidx/camera/core/CameraX;->i:Landroidx/camera/core/impl/UseCaseConfigFactory;

    new-instance v15, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;

    invoke-direct {v15, v0, v2}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;-><init>(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V

    iput-object v15, v5, Landroidx/camera/core/CameraX;->j:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;

    iget-object v14, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-interface/range {v8 .. v15}, Landroidx/camera/core/impl/CameraFactory$Provider;->a(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;JLandroidx/camera/core/CameraXConfig;Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;)Landroidx/camera/camera2/internal/Camera2CameraFactory;

    move-result-object v0

    iput-object v0, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    iget-object v0, v5, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->f0()Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v8, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-interface {v8}, Landroidx/camera/core/impl/CameraFactory;->a()Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object v8

    iget-object v10, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-interface {v10}, Landroidx/camera/core/impl/CameraFactory;->d()Ljava/util/LinkedHashSet;

    move-result-object v10

    invoke-interface {v0, v9, v8, v10}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;

    move-result-object v0

    iput-object v0, v5, Landroidx/camera/core/CameraX;->h:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->j:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v8, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->c:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    instance-of v0, v7, Landroidx/camera/core/CameraExecutor;

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Landroidx/camera/core/CameraExecutor;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-virtual {v0, v8}, Landroidx/camera/core/CameraExecutor;->a(Landroidx/camera/core/impl/CameraFactory;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, v5, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-virtual {v0, v8}, Landroidx/camera/core/impl/CameraRepository;->h(Landroidx/camera/core/impl/CameraFactory;)V

    iget-object v0, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;

    iget-object v10, v5, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    iget-object v12, v5, Landroidx/camera/core/CameraX;->i:Landroidx/camera/core/impl/UseCaseConfigFactory;

    iget-object v13, v5, Landroidx/camera/core/CameraX;->j:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;

    invoke-direct {v8, v10, v0, v12, v13}, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;-><init>(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    iput-object v8, v5, Landroidx/camera/core/CameraX;->k:Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;

    iget-object v0, v5, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v8}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v8

    iget-object v10, v5, Landroidx/camera/core/CameraX;->k:Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;

    invoke-interface {v8, v10}, Landroidx/camera/core/impl/CameraInfoInternal;->x(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V

    goto :goto_1

    :cond_1
    iget-object v0, v5, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    iget-object v10, v5, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0, v8, v10}, Landroidx/camera/core/impl/CameraPresenceProvider;->e(Landroidx/camera/core/impl/CameraFactory;Landroidx/camera/core/impl/CameraRepository;)V

    iget-object v0, v5, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->h:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object v8, v5, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    invoke-interface {v8}, Landroidx/camera/core/impl/CameraFactory;->f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    invoke-static {v9, v0, v11}, Landroidx/camera/core/impl/CameraValidator;->a(Landroid/content/Context;Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/CameraSelector;)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    invoke-static {}, Landroidx/tracing/Trace;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CX:CameraProvider-RetryStatus"

    invoke-static {v0}, Landroidx/tracing/Trace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    int-to-long v10, v8

    invoke-static {v0, v10, v11}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_2
    iget-object v8, v5, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/camera/core/InitializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, v5, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroidx/camera/core/InitializationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    new-instance v0, Landroidx/camera/core/InitializationException;

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Landroidx/camera/core/InitializationException;

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance v0, Landroidx/camera/core/InitializationException;

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid app configuration provided. Missing CameraFactory."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroidx/camera/core/InitializationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    :try_start_5
    new-instance v8, Landroidx/camera/core/impl/CameraProviderExecutionState;

    invoke-direct {v8, v3, v4, v1, v0}, Landroidx/camera/core/impl/CameraProviderExecutionState;-><init>(JILjava/lang/Throwable;)V

    iget-object v10, v5, Landroidx/camera/core/CameraX;->l:Landroidx/camera/core/RetryPolicy;

    invoke-interface {v10, v8}, Landroidx/camera/core/RetryPolicy;->c(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    move-result-object v10

    invoke-static {}, Landroidx/tracing/Trace;->a()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v8, v8, Landroidx/camera/core/impl/CameraProviderExecutionState;->a:I

    const-string v11, "CX:CameraProvider-RetryStatus"

    invoke-static {v11}, Landroidx/tracing/Trace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    int-to-long v12, v8

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_6
    iget-object v8, v5, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-virtual {v8}, Landroidx/camera/core/impl/CameraPresenceProvider;->d()V

    iget-boolean v8, v10, Landroidx/camera/core/RetryPolicy$RetryConfig;->b:Z

    if-eqz v8, :cond_7

    const v8, 0x7fffffff

    if-ge v1, v8, :cond_7

    const-string v0, "CameraX"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v2, 0x5

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v8, v5, Landroidx/camera/core/CameraX;->e:Landroid/os/Handler;

    new-instance v0, Lbj;

    move-wide v2, v3

    move-object v4, v9

    invoke-direct/range {v0 .. v7}, Lbj;-><init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    const-string v1, "retry_token"

    iget-wide v2, v10, Landroidx/camera/core/RetryPolicy$RetryConfig;->a:J

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_3

    :cond_7
    iget-object v1, v5, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    sget-object v3, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING_ERROR:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v3, v5, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-boolean v1, v10, Landroidx/camera/core/RetryPolicy$RetryConfig;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, v5, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, v5, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v6, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    :cond_8
    instance-of v1, v0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    iget v0, v0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraX"

    invoke-static {v1}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/core/InitializationException;

    new-instance v2, Landroidx/camera/core/CameraUnavailableException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v6, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_9
    instance-of v1, v0, Landroidx/camera/core/InitializationException;

    if-eqz v1, :cond_a

    invoke-virtual {v6, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_a
    new-instance v1, Landroidx/camera/core/InitializationException;

    invoke-direct {v1, v0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v6, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method
