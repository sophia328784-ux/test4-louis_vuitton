.class public Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoProducer;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;,
        Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;
    }
.end annotation


# static fields
.field private static final PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

.field private static final buffers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/rtccloud/sdk/Call;",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private call:Lnet/rtccloud/sdk/Call;

.field private camera:Landroid/hardware/Camera;

.field private cameraCallback:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

.field private final dst:Landroid/graphics/RectF;

.field private internalCorrection:I

.field private isCapturing:Z

.field private isPaused:Z

.field private isStarted:Z

.field private isSurfaceAvailable:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final measureDim:Lnet/rtccloud/sdk/util/Dimension;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private parameters:Lnet/rtccloud/sdk/Call$Parameters;

.field private previewSize:Landroid/graphics/Point;

.field private previewSizeRaw:Landroid/hardware/Camera$Size;

.field private scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

.field private sink:Lnet/rtccloud/sdk/Sink$Video;

.field private final src:Landroid/graphics/RectF;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v0, Lnet/rtccloud/sdk/util/Permission;->CAMERA:Lnet/rtccloud/sdk/util/Permission;

    filled-new-array {v0}, [Lnet/rtccloud/sdk/util/Permission;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->buffers:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->dst:Landroid/graphics/RectF;

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 48
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->dst:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 53
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 56
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 57
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->dst:Landroid/graphics/RectF;

    .line 60
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 61
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->cameraCallback:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->internalCorrection:I

    return p0
.end method

.method public static bridge synthetic d(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    return p0
.end method

.method private declared-synchronized doPause()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doPause()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->c(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized doResume()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doResume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    iget-boolean v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->a(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraFlash()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$6;

    invoke-direct {v4, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$6;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v4, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v5, "Error while resuming the preview"

    invoke-virtual {v4, v5, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    iput-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iput-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iput-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private declared-synchronized doStart()V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doStart()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isSurfaceAvailable:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->PERMISSIONS:[Lnet/rtccloud/sdk/util/Permission;

    invoke-static {v0, v1, v2, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforcePermissions(Lnet/rtccloud/sdk/util/OldLogger;Landroid/content/Context;Ljava/lang/String;[Lnet/rtccloud/sdk/util/Permission;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-static {v4, v3, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->initCamera(Lnet/rtccloud/sdk/Call$Parameters;Landroid/util/Size;Landroid/view/Display;)Landroid/hardware/Camera;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v6, "Unable to init Camera"

    invoke-virtual {v5, v6, v4}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v3, :cond_1

    iput-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Invalid Camera"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    sget-object v5, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->buffers:Ljava/util/WeakHashMap;

    iget-object v6, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-nez v6, :cond_2

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6, v7}, Lnet/rtccloud/sdk/util/CameraUtils;->createYuvByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7, v8}, Lnet/rtccloud/sdk/util/CameraUtils;->createYuvByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v5, v7, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    iput-object v4, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->getInternalPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I

    move-result v1

    iput v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->internalCorrection:I

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v2

    iget v2, v2, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    :cond_3
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    :cond_4
    new-instance v0, Landroid/graphics/Point;

    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    iget v2, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    :goto_2
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$3;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$3;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    sget-object v2, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v4, "Error while starting the preview"

    invoke-virtual {v2, v4, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private declared-synchronized doStop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "doStop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$4;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$4;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static bridge synthetic e(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    return p0
.end method

.method public static bridge synthetic f(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Landroid/hardware/Camera$Size;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSizeRaw:Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method public static bridge synthetic g(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/Sink$Video;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    return-object p0
.end method

.method public static bridge synthetic h(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->doPause()V

    return-void
.end method

.method public static bridge synthetic i(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->doResume()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$1;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public static bridge synthetic j(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->doStart()V

    return-void
.end method

.method public static bridge synthetic k(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->doStop()V

    return-void
.end method

.method public static bridge synthetic l(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public static bridge synthetic m(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->updateScaling()V

    return-void
.end method

.method private postRequestLayout()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$2;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$2;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restartOnlyIfAlreadyStarted()V
    .locals 1

    iget-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private updateScaling()V
    .locals 8

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->dst:Landroid/graphics/RectF;

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v7}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->src:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->dst:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->dump(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getEffect(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFramerate()I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate()I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getProfile()Lnet/rtccloud/sdk/VideoModule$Profile;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object p0

    return-object p0
.end method

.method public getScaleType()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    return-object p0
.end method

.method public getZoom()F
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getZoom(Landroid/hardware/Camera;)F

    move-result p0

    return p0
.end method

.method public isAutofocusAvailable()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutofocusAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isAutofocusEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutoFocusEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isColorEffectAvailable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isEffectAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFlashAvailable()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isFlashEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    return p0
.end method

.method public isStabilizationAvailable()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isStabilizationEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationEnabled(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isZoomAvailable(Landroid/hardware/Camera;)Z

    move-result p0

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Video;)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onBind()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->previewSize:Landroid/graphics/Point;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-static {v1, v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;II)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V

    :goto_0
    iget-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->b(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;[B)V

    :cond_0
    return-void
.end method

.method public onRequestFocus()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onRequestFocus()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    const-string v2, "auto"

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->isFocusModeAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    new-instance v1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$7;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$7;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->updateScaling()V

    return-void
.end method

.method public onStartProducer()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SenderHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    invoke-direct {v2, p0, v1}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;-><init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v2, v1}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStopProducer()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isPaused:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    sget-object p1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "onSurfaceTextureAvailable(%d, %d)"

    invoke-virtual {p1, p3, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isSurfaceAvailable:Z

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    sget-object p1, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureDestroyed() isStarted:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isSurfaceAvailable:Z

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    sget-object p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onSurfaceTextureSizeChanged(%d, %d)"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onUnbind()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onUnbind()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->postRequestLayout()V

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "pause()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetZoom()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resetZoom()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->setZoom(F)V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setAutoFocusEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setAutoFocusEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setEffect(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraEffect(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setEffect(Landroid/hardware/Camera;Ljava/lang/String;)V

    return-void
.end method

.method public setFlashEnabled(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFlashEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraFlash(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setFramerate(I)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFramerate(%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate(I)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewFps(Landroid/hardware/Camera;I)V

    iget-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->senderHandler:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V

    :cond_1
    return-void
.end method

.method public setOnCameraCallback(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->cameraCallback:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

    return-void
.end method

.method public setProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setProfile(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public setScaleType(Lnet/rtccloud/sdk/util/ScaleType;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setScaleType(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->updateScaling()V

    return-void
.end method

.method public setSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "setSource(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->resetZoom()V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->restartOnlyIfAlreadyStarted()V

    return-void
.end method

.method public setStabilizationEnabled(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setStabilizationEnabled(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraStabilization(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setStabilizationEnabled(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setZoom(%f)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom(F)Lnet/rtccloud/sdk/Call$Parameters;

    iget-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->isCapturing:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->camera:Landroid/hardware/Camera;

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setZoom(Landroid/hardware/Camera;F)V

    :cond_1
    return-void
.end method
