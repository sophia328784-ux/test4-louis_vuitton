.class public final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c3\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u00010\u0008\u0000\u0018\u00002\u00020\u0001Bg\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u00102\u001a\u000203H\u0096@\u00a2\u0006\u0002\u00104J\u0017\u00105\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u000107H\u0017\u00a2\u0006\u0002\u00108J\u0008\u00109\u001a\u000203H\u0017J4\u0010:\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010@\u001a\u0002072\u0006\u0010A\u001a\u000207H\u0097@\u00a2\u0006\u0002\u0010BJ\"\u0010C\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010\u0002\u001a\u00020\u0003H\u0097@\u00a2\u0006\u0002\u0010DJ\u0008\u0010E\u001a\u000203H\u0017J6\u0010F\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u0010H\u001a\u0004\u0018\u000107H\u0096@\u00a2\u0006\u0002\u0010IJ\u0010\u0010J\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0002J\u0010\u0010N\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0002J\"\u0010O\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<H\u0082@\u00a2\u0006\u0002\u0010PJ6\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u0010H\u001a\u0004\u0018\u000107H\u0082@\u00a2\u0006\u0002\u0010IJ*\u0010R\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\u0006\u0010S\u001a\u00020TH\u0082@\u00a2\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020\u00142\u0006\u0010W\u001a\u00020XH\u0002J(\u0010Y\u001a\u00020T2\u0006\u0010G\u001a\u00020<2\u0006\u0010Z\u001a\u00020[2\u0008\u0010H\u001a\u0004\u0018\u000107H\u0082@\u00a2\u0006\u0002\u0010\\J,\u0010]\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\u0008\u00106\u001a\u0004\u0018\u000107H\u0082@\u00a2\u0006\u0002\u0010^J\u001e\u0010_\u001a\u0002032\u0006\u0010G\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0082@\u00a2\u0006\u0002\u0010cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00101\u00a8\u0006d"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
        "context",
        "Landroid/content/Context;",
        "mediaRepository",
        "Lcom/sightcall/getmedia/MediaRepository;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "listenableFutureProcessCameraProvider",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "cameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "preview",
        "Landroidx/camera/core/Preview;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "cacheDir",
        "Ljava/io/File;",
        "storageDir",
        "videoConverter",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
        "<init>",
        "(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V",
        "getCameraSelector",
        "()Landroidx/camera/core/CameraSelector;",
        "getPreview",
        "()Landroidx/camera/core/Preview;",
        "_cameraProvider",
        "cameraProvider",
        "getCameraProvider",
        "()Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "_imageCapture",
        "Landroidx/camera/core/ImageCapture;",
        "imageCapture",
        "getImageCapture",
        "()Landroidx/camera/core/ImageCapture;",
        "_videoCapture",
        "Landroidx/camera/video/VideoCapture;",
        "Landroidx/camera/video/Recorder;",
        "videoCapture",
        "getVideoCapture",
        "()Landroidx/camera/video/VideoCapture;",
        "recording",
        "Landroidx/camera/video/Recording;",
        "orientationListener",
        "com/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;",
        "initCameraProvider",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initImageCapture",
        "maxSize",
        "",
        "(Ljava/lang/Integer;)V",
        "initVideoCapture",
        "takePhoto",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "collimator",
        "LSCCollimator;",
        "collimatorViewWitdh",
        "collimatorViewHeight",
        "(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startRecording",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopRecording",
        "resizeAndStore",
        "source",
        "targetWeight",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "extractMedia",
        "uri",
        "Landroid/net/Uri;",
        "extractVideos",
        "extractPhotos",
        "noResizeAndStore",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resizeAndStorePhoto",
        "store",
        "resizeResult",
        "Lcom/sightcall/mediacapture/repo/entities/ResizeResult;",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "newUuidStorageFile",
        "mimeType",
        "",
        "resizePhoto",
        "scaleFactor",
        "",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resizeAndStoreVideo",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copy",
        "Ljava/io/InputStream;",
        "target",
        "Ljava/io/OutputStream;",
        "(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private _cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private _imageCapture:Landroidx/camera/core/ImageCapture;

.field private _videoCapture:Landroidx/camera/video/VideoCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheDir:Ljava/io/File;

.field private final cameraSelector:Landroidx/camera/core/CameraSelector;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listenableFutureProcessCameraProvider:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaRepository:Lcom/sightcall/getmedia/MediaRepository;

.field private final orientationListener:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;

.field private final preview:Landroidx/camera/core/Preview;

.field private recording:Landroidx/camera/video/Recording;

.field private final storageDir:Ljava/io/File;

.field private final videoConverter:Lcom/sightcall/mediacapture/repo/converter/VideoConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->mediaRepository:Lcom/sightcall/getmedia/MediaRepository;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->listenableFutureProcessCameraProvider:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p5, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iput-object p6, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->preview:Landroidx/camera/core/Preview;

    iput-object p7, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    iput-object p8, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->executor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->cacheDir:Ljava/io/File;

    iput-object p10, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->storageDir:Ljava/io/File;

    iput-object p11, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->videoConverter:Lcom/sightcall/mediacapture/repo/converter/VideoConverter;

    new-instance p2, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;

    invoke-direct {p2, p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->orientationListener:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;

    return-void
.end method

.method public static final synthetic access$copy(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCacheDir$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getListenableFutureProcessCameraProvider$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->listenableFutureProcessCameraProvider:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public static final synthetic access$getMediaRepository$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Lcom/sightcall/getmedia/MediaRepository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->mediaRepository:Lcom/sightcall/getmedia/MediaRepository;

    return-object p0
.end method

.method public static final synthetic access$get_imageCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/core/ImageCapture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_imageCapture:Landroidx/camera/core/ImageCapture;

    return-object p0
.end method

.method public static final synthetic access$get_videoCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/video/VideoCapture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_videoCapture:Landroidx/camera/video/VideoCapture;

    return-object p0
.end method

.method public static final synthetic access$noResizeAndStore(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->noResizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resizeAndStorePhoto(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->resizeAndStorePhoto(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resizeAndStoreVideo(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->resizeAndStoreVideo(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resizePhoto(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->resizePhoto(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRecording$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroidx/camera/video/Recording;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->recording:Landroidx/camera/video/Recording;

    return-void
.end method

.method public static final synthetic access$set_cameraProvider$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-void
.end method

.method public static final synthetic access$store(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->store(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 p0, 0x400

    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    :goto_0
    if-lez p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final extractPhotos(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "ImageWidth"

    invoke-virtual {v0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v3

    const-string v4, "ImageLength"

    invoke-virtual {v0, v2, v4}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v4

    const-string v5, "Orientation"

    invoke-virtual {v0, v2, v5}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/sightcall/pratik/utils/BitmapUtilsKt;->getSizeFromOrientation(III)Landroid/util/Size;

    move-result-object v0

    invoke-direct {v1, p1, p0, v0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    return-object v1
.end method

.method private final extractVideos(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 4

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    new-instance v0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p0, v1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    return-object v0
.end method

.method private final newUuidStorageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->storageDir:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p1}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->toExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final noResizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;Landroid/util/Size;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->store(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final resizeAndStorePhoto(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;

    iget v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p4

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_3
    iget p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->F$0:F

    iget-object p1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$2:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    iget-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    iget-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, p2

    move p2, p0

    move-object p0, v7

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sightcall/pratik/utils/BitmapUtilsKt;->calculateScaleFactor(Landroid/util/Size;I)F

    move-result p2

    goto :goto_1

    :cond_5
    move p2, p4

    :goto_1
    if-nez p3, :cond_7

    cmpg-float p4, p2, p4

    if-nez p4, :cond_7

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->F$0:F

    iput v5, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->noResizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    return-object p0

    :cond_7
    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$4:Ljava/lang/Object;

    iput p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->F$0:F

    iput v4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->resizePhoto(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    check-cast p4, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->L$4:Ljava/lang/Object;

    iput p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->F$0:F

    iput v3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStorePhoto$1;->label:I

    invoke-direct {p0, p1, p4, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->store(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    return-object p0
.end method

.method private final resizeAndStoreVideo(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sightcall/pratik/utils/BitmapUtilsKt;->calculateScaleFactor(Landroid/util/Size;I)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    cmpg-float v0, v1, v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->noResizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "video/mp4"

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->newUuidStorageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->videoConverter:Lcom/sightcall/mediacapture/repo/converter/VideoConverter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/sightcall/mediacapture/repo/converter/VideoConverter;->process(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final resizePhoto(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "F",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/repo/entities/ResizeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;

    iget v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    iget-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$2:Ljava/lang/Object;

    check-cast p3, Landroid/util/Size;

    iget-object v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getSize()Landroid/util/Size;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/sightcall/pratik/utils/BitmapUtilsKt;->calculateScaledSize(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object p4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->mediaRepository:Lcom/sightcall/getmedia/MediaRepository;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object v3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->L$5:Ljava/lang/Object;

    iput p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->F$0:F

    iput v4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizePhoto$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/sightcall/getmedia/MediaRepository;->getBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p3

    move-object p3, p4

    move-object p2, v2

    move-object p1, v5

    move-object p4, p0

    move-object p0, p1

    :goto_1
    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {p4, v0, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p4, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-le p0, p4, :cond_7

    const/16 p4, 0x4b

    const/16 v0, 0x5f

    const/4 v2, -0x5

    invoke-static {v0, p4, v2}, Lkotlin/internal/ProgressionUtilKt;->a(III)I

    move-result p4

    const/4 v2, 0x0

    if-gt p4, v0, :cond_6

    const p0, 0x7fffffff

    :goto_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_5

    if-ge v3, p0, :cond_4

    move v2, v0

    move p0, v3

    :cond_4
    if-eq v0, p4, :cond_5

    add-int/lit8 v0, v0, -0x5

    goto :goto_2

    :cond_5
    move p0, v3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-le p0, p4, :cond_7

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p4, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_7
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p0, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "image/jpeg"

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;Landroid/util/Size;)V

    return-object p0
.end method

.method private final store(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/entities/ResizeResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;

    iget v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;

    invoke-direct {v0, p0, p3}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$6:Ljava/lang/Object;

    check-cast p0, Ljava/io/FileOutputStream;

    iget-object p1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$5:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$4:Ljava/lang/Object;

    check-cast p2, Landroid/util/Size;

    iget-object v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    iget-object v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;

    iget-object v0, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;->component1()Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;->component2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/entities/ResizeResult;->component3()Landroid/util/Size;

    move-result-object p2

    if-eqz p3, :cond_4

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->newUuidStorageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->L$6:Ljava/lang/Object;

    iput v4, v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$store$1;->label:I

    invoke-direct {p0, p3, v5, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object v1, p3

    move-object p1, v2

    move-object p0, v5

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Success;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->copy$default(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;ILjava/lang/Object;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getUri()Landroid/net/Uri;

    move-result-object p0

    const-string p1, "No InputSteam found for media="

    invoke-static {p0, p1}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public extractMedia(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->extractVideos(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->extractPhotos(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p0

    return-object p0
.end method

.method public getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_cameraProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getCameraSelector()Landroidx/camera/core/CameraSelector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->cameraSelector:Landroidx/camera/core/CameraSelector;

    return-object p0
.end method

.method public getImageCapture()Landroidx/camera/core/ImageCapture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_imageCapture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getPreview()Landroidx/camera/core/Preview;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->preview:Landroidx/camera/core/Preview;

    return-object p0
.end method

.method public getVideoCapture()Landroidx/camera/video/VideoCapture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_videoCapture:Landroidx/camera/video/VideoCapture;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_videoCapture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initCameraProvider(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public initImageCapture(Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->orientationListener:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->O:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/core/ImageCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v3, v1, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v4}, Lcom/sightcall/pratik/camera/CameraUtilsKt;->getClosestSize$default([Landroid/util/Size;IILjava/lang/Object;)Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    :cond_0
    sget-object p1, Landroidx/camera/core/impl/ImageOutputConfig;->q:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v3, p1, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->e()Landroidx/camera/core/ImageCapture;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_imageCapture:Landroidx/camera/core/ImageCapture;

    return-void
.end method

.method public initVideoCapture()V
    .locals 12

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->orientationListener:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    sget-object v0, Landroidx/camera/video/Quality;->c:Landroidx/camera/video/Quality;

    sget-object v1, Landroidx/camera/video/Quality;->b:Landroidx/camera/video/Quality;

    sget-object v2, Landroidx/camera/video/Quality;->a:Landroidx/camera/video/Quality;

    filled-new-array {v0, v1, v2}, [Landroidx/camera/video/Quality;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Landroidx/camera/video/FallbackStrategy;->a(Landroidx/camera/video/Quality;)Landroidx/camera/video/FallbackStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/video/QualitySelector;->a(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/Recorder$Builder;

    invoke-direct {v1}, Landroidx/camera/video/Recorder$Builder;-><init>()V

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->executor:Ljava/util/concurrent/Executor;

    const-string v3, "The specified executor can\'t be null."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Landroidx/camera/video/Recorder$Builder;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, Landroidx/camera/video/Recorder$Builder;->a(Landroidx/camera/video/QualitySelector;)V

    new-instance v4, Landroidx/camera/video/Recorder;

    iget-object v5, v1, Landroidx/camera/video/Recorder$Builder;->b:Ljava/util/concurrent/Executor;

    iget-object v0, v1, Landroidx/camera/video/Recorder$Builder;->a:Landroidx/camera/video/MediaSpec$Builder;

    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Builder;->a()Landroidx/camera/video/MediaSpec;

    move-result-object v6

    iget-object v9, v1, Landroidx/camera/video/Recorder$Builder;->e:Lno0;

    iget-wide v10, v1, Landroidx/camera/video/Recorder$Builder;->f:J

    iget-object v7, v1, Landroidx/camera/video/Recorder$Builder;->c:Lno0;

    iget-object v8, v1, Landroidx/camera/video/Recorder$Builder;->d:Lno0;

    invoke-direct/range {v4 .. v11}, Landroidx/camera/video/Recorder;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/OutputStorage$Factory;J)V

    sget-object v0, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    new-instance v0, Landroidx/camera/video/VideoCapture$Builder;

    invoke-direct {v0, v4}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/video/VideoOutput;)V

    new-instance v1, Landroidx/camera/video/VideoCapture;

    new-instance v2, Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object v0, v0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {v0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/camera/video/impl/VideoCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    invoke-direct {v1, v2}, Landroidx/camera/video/VideoCapture;-><init>(Landroidx/camera/video/impl/VideoCaptureConfig;)V

    iput-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->_videoCapture:Landroidx/camera/video/VideoCapture;

    return-void
.end method

.method public resizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;-><init>(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public startRecording(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public stopRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->recording:Landroidx/camera/video/Recording;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/video/Recording;->close()V

    :cond_0
    return-void
.end method

.method public takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSCCollimator;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;LSCCollimator;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
