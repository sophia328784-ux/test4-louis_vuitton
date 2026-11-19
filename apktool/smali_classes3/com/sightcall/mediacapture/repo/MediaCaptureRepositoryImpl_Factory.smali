.class public final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraSelectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/CameraSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final listenableFutureProcessCameraProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mediaRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final previewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/Preview;",
            ">;"
        }
    .end annotation
.end field

.field private final storageDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConverterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/CameraSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/Preview;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->contextProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->mediaRepositoryProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->dispatcherProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->listenableFutureProcessCameraProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->cameraSelectorProvider:Ldagger/internal/Provider;

    iput-object p6, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->previewProvider:Ldagger/internal/Provider;

    iput-object p7, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->contentResolverProvider:Ldagger/internal/Provider;

    iput-object p8, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->executorProvider:Ldagger/internal/Provider;

    iput-object p9, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->cacheDirProvider:Ldagger/internal/Provider;

    iput-object p10, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->storageDirProvider:Ldagger/internal/Provider;

    iput-object p11, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->videoConverterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/CameraSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroidx/camera/core/Preview;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;)",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sightcall/getmedia/MediaRepository;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/Preview;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ")",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;-><init>(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;
    .locals 12

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->mediaRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sightcall/getmedia/MediaRepository;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->dispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->listenableFutureProcessCameraProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->cameraSelectorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/core/CameraSelector;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->previewProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/core/Preview;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->contentResolverProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->executorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->cacheDirProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/io/File;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->storageDirProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/io/File;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->videoConverterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/sightcall/mediacapture/repo/converter/VideoConverter;

    invoke-static/range {v1 .. v11}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->newInstance(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl_Factory;->get()Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
