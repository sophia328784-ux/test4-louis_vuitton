.class public final Lcom/sightcall/mediacapture/repo/di/RepositoryModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007JD\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000eH\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/di/RepositoryModule;",
        "",
        "<init>",
        "()V",
        "getContentResolver",
        "Landroid/content/ContentResolver;",
        "context",
        "Landroid/content/Context;",
        "providesExecutor",
        "Ljava/util/concurrent/Executor;",
        "getCacheDir",
        "Ljava/io/File;",
        "getStorageDir",
        "getVideoConverter",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
        "getMediaCaptureRepository",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
        "mediaRepository",
        "Lcom/sightcall/getmedia/MediaRepository;",
        "contentResolver",
        "executor",
        "cacheDir",
        "storageDir",
        "videoConverter",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getMediaCaptureRepository(Lcom/sightcall/getmedia/MediaRepository;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;
    .locals 12
    .param p5    # Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
        .end annotation
    .end param
    .param p6    # Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
        .end annotation
    .end param
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    sget-object p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->b:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->c:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->b:Landroidx/camera/core/impl/utils/futures/FutureChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroidx/camera/core/CameraX;

    const/4 v4, 0x0

    invoke-direct {v2, p3, v4}, Landroidx/camera/core/CameraX;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;)V

    iget-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v4

    new-instance v5, Ll00;

    const/16 v6, 0x18

    invoke-direct {v5, v2, v6}, Ll00;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lfw;

    const/16 v7, 0xc

    invoke-direct {v6, v5, v7}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->b:Landroidx/camera/core/impl/utils/futures/FutureChain;

    new-instance v5, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;

    invoke-direct {v5, p0, v2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v4, v5, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {v4}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_0
    new-instance p0, Lyn0;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lyn0;-><init>(I)V

    new-instance v1, Lno0;

    const/4 v4, 0x5

    invoke-direct {v1, p0, v4}, Lno0;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/CameraSelector;->c:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {p0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/PreviewConfig;

    iget-object p0, p0, Landroidx/camera/core/Preview$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/camera/core/impl/PreviewConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    invoke-static {v1}, Landroidx/camera/core/impl/ImageOutputConfig;->u(Landroidx/camera/core/impl/ImageOutputConfig;)V

    new-instance v6, Landroidx/camera/core/Preview;

    invoke-direct {v6, v1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    sget-object p0, Landroidx/camera/core/Preview;->y:Ljava/util/concurrent/Executor;

    iput-object p0, v6, Landroidx/camera/core/Preview;->r:Ljava/util/concurrent/Executor;

    move-object v2, p1

    move-object v7, p2

    move-object v1, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;-><init>(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method

.method public final getStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getVideoConverter(Landroid/content/Context;)Lcom/sightcall/mediacapture/repo/converter/VideoConverter;
    .locals 0
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final providesExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation runtime Lcom/sightcall/mediacapture/di/MediaCaptureScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
