.class public interface abstract Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u000e\u0010\u0017\u001a\u00020\u0018H\u00a6@\u00a2\u0006\u0002\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0018H&J4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u001cH\u00a6@\u00a2\u0006\u0002\u0010\'J\"\u0010(\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0006\u0010)\u001a\u00020*H\u00a6@\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u00020\u0018H&J6\u0010-\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0006\u0010.\u001a\u00020!2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010/\u001a\u0004\u0018\u00010\u001cH\u00a6@\u00a2\u0006\u0002\u00100J\u0010\u00101\u001a\u00020!2\u0006\u00102\u001a\u000203H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u00064\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
        "",
        "cameraProvider",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "getCameraProvider",
        "()Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "cameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "getCameraSelector",
        "()Landroidx/camera/core/CameraSelector;",
        "preview",
        "Landroidx/camera/core/Preview;",
        "getPreview",
        "()Landroidx/camera/core/Preview;",
        "imageCapture",
        "Landroidx/camera/core/ImageCapture;",
        "getImageCapture",
        "()Landroidx/camera/core/ImageCapture;",
        "videoCapture",
        "Landroidx/camera/video/VideoCapture;",
        "Landroidx/camera/video/Recorder;",
        "getVideoCapture",
        "()Landroidx/camera/video/VideoCapture;",
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
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopRecording",
        "resizeAndStore",
        "source",
        "targetWeight",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract extractMedia(Landroid/net/Uri;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
.end method

.method public abstract getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;
.end method

.method public abstract getCameraSelector()Landroidx/camera/core/CameraSelector;
.end method

.method public abstract getImageCapture()Landroidx/camera/core/ImageCapture;
.end method

.method public abstract getPreview()Landroidx/camera/core/Preview;
.end method

.method public abstract getVideoCapture()Landroidx/camera/video/VideoCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initCameraProvider(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract initImageCapture(Ljava/lang/Integer;)V
.end method

.method public abstract initVideoCapture()V
.end method

.method public abstract resizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract startRecording(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract stopRecording()V
.end method

.method public abstract takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
