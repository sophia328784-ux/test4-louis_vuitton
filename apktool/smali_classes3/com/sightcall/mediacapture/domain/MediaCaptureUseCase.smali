.class public final Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017J4\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010!J\"\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010#\u001a\u00020$H\u0086@\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u0007J6\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010(\u001a\u00020\u001b2\u0008\u0010)\u001a\u0004\u0018\u00010\u000b2\u0008\u0010*\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;",
        "",
        "mediaCaptureRepository",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
        "<init>",
        "(Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;)V",
        "initCamera",
        "",
        "initPhotoCapture",
        "",
        "photoMaxSize",
        "",
        "initVideoCapture",
        "(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCameraProvider",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "getCameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "getCameraPreview",
        "Landroidx/camera/core/Preview;",
        "getImageCapture",
        "Landroidx/camera/core/ImageCapture;",
        "getVideoCapture",
        "Landroidx/camera/video/VideoCapture;",
        "Landroidx/camera/video/Recorder;",
        "takePhoto",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "collimator",
        "LSCCollimator;",
        "collimatorViewWitdh",
        "collimatorViewHeight",
        "(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordVideo",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopRecording",
        "resizeAndSave",
        "media",
        "maxSize",
        "targetWeight",
        "(Lcom/sightcall/mediacapture/domain/entities/Media;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "extractMedia",
        "uri",
        "Landroid/net/Uri;",
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
.field private final mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    return-void
.end method


# virtual methods
.method public final extractMedia(Landroid/net/Uri;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->extractMedia(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p0

    sget-object p1, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->Gallery:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia$default(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/domain/entities/MediaSource;Lcom/sightcall/mediacapture/domain/entities/MediaType;ILjava/lang/Object;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraPreview()Landroidx/camera/core/Preview;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->getPreview()Landroidx/camera/core/Preview;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraSelector()Landroidx/camera/core/CameraSelector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object p0

    return-object p0
.end method

.method public final getImageCapture()Landroidx/camera/core/ImageCapture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->getImageCapture()Landroidx/camera/core/ImageCapture;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Image capture was not initialized"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVideoCapture()Landroidx/camera/video/VideoCapture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->getVideoCapture()Landroidx/camera/video/VideoCapture;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Video capture was not initialized"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initCamera(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;

    iget v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->Z$0:Z

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    iget-object p2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    iput-object p2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->Z$0:Z

    iput-boolean p3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->Z$1:Z

    const/4 p4, 0x0

    iput p4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->I$0:I

    iput v3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$initCamera$1;->label:I

    invoke-interface {p0, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->initCameraProvider(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p0, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->initImageCapture(Ljava/lang/Integer;)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->initVideoCapture()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final recordVideo(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;

    iget v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    iput-object v3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$recordVideo$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->startRecording(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/sightcall/pratik/Result;

    sget-object p0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    sget-object p1, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->Camera:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    invoke-static {p2, p0, p1}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia(Lcom/sightcall/pratik/Result;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method

.method public final resizeAndSave(Lcom/sightcall/mediacapture/domain/entities/Media;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;

    iget v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-static {p1}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMediaRepo(Lcom/sightcall/mediacapture/domain/entities/Media;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p4

    iput-object p1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$resizeAndSave$1;->label:I

    invoke-interface {p0, p4, p2, p3, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->resizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/sightcall/pratik/Result;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getType()Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getSource()Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    move-result-object p1

    invoke-static {p4, p0, p1}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia(Lcom/sightcall/pratik/Result;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method

.method public final stopRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-interface {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->stopRecording()V

    return-void
.end method

.method public final takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSCCollimator;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;

    iget v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->L$0:Ljava/lang/Object;

    check-cast p0, LSCCollimator;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->mediaCaptureRepository:Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    iput-object v3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->I$0:I

    iput p3, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->I$1:I

    iput v4, v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase$takePhoto$1;->label:I

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;->takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/sightcall/pratik/Result;

    sget-object p0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    sget-object p1, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->Camera:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    invoke-static {p4, p0, p1}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia(Lcom/sightcall/pratik/Result;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method
