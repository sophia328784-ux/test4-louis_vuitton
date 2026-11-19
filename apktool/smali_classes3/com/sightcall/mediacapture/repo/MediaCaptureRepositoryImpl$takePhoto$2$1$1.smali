.class public final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1",
        "Landroidx/camera/core/ImageCapture$OnImageSavedCallback;",
        "onImageSaved",
        "",
        "outputFileResults",
        "Landroidx/camera/core/ImageCapture$OutputFileResults;",
        "onError",
        "exception",
        "Landroidx/camera/core/ImageCaptureException;",
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
.field final synthetic $collimator:LSCCollimator;

.field final synthetic $collimatorViewHeight:I

.field final synthetic $collimatorViewWitdh:I

.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $outputFile:Ljava/io/File;

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Ljava/io/File;LSCCollimator;Lkotlin/coroutines/Continuation;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "LSCCollimator;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$outputFile:Ljava/io/File;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimator:LSCCollimator;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iput p5, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimatorViewWitdh:I

    iput p6, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimatorViewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureProcessProgressed(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lcom/sightcall/pratik/Result$Error;

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;

    invoke-direct {v1, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v0, v1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$outputFile:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimator:LSCCollimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimatorViewWitdh:I

    iget v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$collimatorViewHeight:I

    iget-object v4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$outputFile:Ljava/io/File;

    invoke-static {v1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getContext$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v5, v2, v3}, Lcom/sightcall/pratik/utils/UtilsKt;->rectThatFits(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v3, v5, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, LSCCollimator;->a(II)LSCCollimator$Rect;

    move-result-object v0

    iget v2, v0, LSCCollimator$Rect;->b:F

    float-to-int v2, v2

    iget v3, v0, LSCCollimator$Rect;->a:F

    float-to-int v3, v3

    iget v5, v0, LSCCollimator$Rect;->c:F

    float-to-int v5, v5

    iget v0, v0, LSCCollimator$Rect;->d:F

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lcom/sightcall/pratik/Result$Success;

    new-instance v2, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getMediaRepository$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Lcom/sightcall/getmedia/MediaRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/getmedia/MediaRepository;->getPhotoSize(Landroid/net/Uri;)Landroid/util/Size;

    move-result-object p0

    const-string v3, "image/jpeg"

    invoke-direct {v2, p1, v3, p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    invoke-direct {v1, v2}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
