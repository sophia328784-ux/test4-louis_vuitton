.class public final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;-><init>(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1",
        "Landroid/view/OrientationEventListener;",
        "onOrientationChanged",
        "",
        "orientation",
        "",
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
.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/16 v0, 0x2d

    const/16 v1, 0x87

    if-gt v0, p1, :cond_0

    if-ge p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0xe1

    if-gt v1, p1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-gt v0, p1, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$get_videoCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/video/VideoCapture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$get_videoCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/video/VideoCapture;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/camera/core/UseCase;->A(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->O()V

    goto :goto_1

    :cond_3
    const-string p0, "_videoCapture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {v0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$get_imageCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/core/ImageCapture;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$get_imageCapture$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroidx/camera/core/ImageCapture;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->l()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->A(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->b(I)I

    move-result v0

    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->b(I)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    invoke-static {v0, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->b(Landroid/util/Rational;I)Landroid/util/Rational;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->u:Landroid/util/Rational;

    return-void

    :cond_5
    const-string p0, "_imageCapture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method
