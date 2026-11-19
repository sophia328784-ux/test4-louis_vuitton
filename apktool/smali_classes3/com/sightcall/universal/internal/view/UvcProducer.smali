.class public Lcom/sightcall/universal/internal/view/UvcProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/common/MyVideoProducer;
.implements Lcom/sightcall/uvc/DeviceListener;
.implements Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private call:Lnet/rtccloud/sdk/Call;

.field private cameraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final device:Lcom/sightcall/uvc/Device;

.field private isCapturing:Z

.field private isPaused:Z

.field private isStarted:Z

.field private parameters:Lnet/rtccloud/sdk/Call$Parameters;

.field private previewSize:Landroid/graphics/Point;

.field scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

.field private senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

.field private final session:Lcom/sightcall/universal/model/Session;

.field private sink:Lnet/rtccloud/sdk/Sink$Video;

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sightcall/uvc/Device;Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->textureViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    new-instance p2, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p1}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sightcall/uvc/DeviceManager;->addDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/UvcProducer;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->cameraCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/UvcProducer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/UvcProducer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/view/UvcProducer;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method private doPause()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doPause() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sightcall/uvc/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/UvcProducer$4;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/UvcProducer$4;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private doResume()V
    .locals 5

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doResume() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->call:Lnet/rtccloud/sdk/Call;

    if-nez v1, :cond_0

    const-string p0, "doResume: call is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    if-nez v1, :cond_1

    const-string p0, "doResume: !isStarted"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-nez v1, :cond_2

    const-string p0, "doResume: !isCapturing"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_3

    const-string p0, "doResume: surfaceTexture is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_4

    const-string p0, "doResume: surface is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-nez v1, :cond_5

    const-string p0, "doResume: device is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    :try_start_0
    invoke-virtual {v1}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Lcom/sightcall/uvc/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STOPPED_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v1}, Lcom/sightcall/common/DataChannelAction;->send()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v4, "Error while resuming the preview"

    invoke-virtual {v3, v4, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/UvcProducer$3;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/UvcProducer$3;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doSnapshot()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doSnapshot() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->a(Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/internal/view/UvcProducer;->saveSnapshot(Landroid/content/Context;Ljava/nio/ByteBuffer;Landroid/graphics/Point;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    sget-object v2, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->IMAGE_CAMERA:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iput-object v2, v1, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sightcall/universal/internal/view/UvcProducer$5;

    invoke-direct {v2, p0, v0}, Lcom/sightcall/universal/internal/view/UvcProducer$5;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private doStart()V
    .locals 5

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doStart() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->call:Lnet/rtccloud/sdk/Call;

    if-nez v1, :cond_0

    const-string p0, "doStart: call is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    if-nez v1, :cond_1

    const-string p0, "doStart: !isStarted"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-eqz v1, :cond_2

    const-string p0, "doStart: isCapturing"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_3

    const-string p0, "doStart: surfaceTexture is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_4

    const-string p0, "doStart: surface is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-nez v1, :cond_5

    const-string p0, "doStart: device is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p0, "doStart: device is not connected"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v2, v1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    iget v3, v1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-virtual {v0, v2, v3}, Lcom/sightcall/uvc/Camera;->setPreviewSize(II)V

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->getPreviewSize()Lcom/sightcall/uvc/Size;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v3, v2, Lcom/sightcall/uvc/Size;->width:I

    iget v4, v1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    if-ne v3, v4, :cond_7

    iget v4, v2, Lcom/sightcall/uvc/Size;->height:I

    iget v1, v1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    if-eq v4, v1, :cond_8

    :cond_7
    iget v1, v2, Lcom/sightcall/uvc/Size;->height:I

    invoke-virtual {v0, v3, v1}, Lcom/sightcall/uvc/Camera;->setPreviewSize(II)V

    :cond_8
    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->startPreview()V

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->updateCameraParams()V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/uvc/Camera;->setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->setZoom(I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->setAutoFocus(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->getPreviewSize()Lcom/sightcall/uvc/Size;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_9
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/sightcall/uvc/Size;->width:I

    iget v0, v0, Lcom/sightcall/uvc/Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/UvcProducer$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/UvcProducer$1;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doStart: "

    invoke-virtual {v0, v1, p0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private doStop()V
    .locals 5

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doStop() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-nez v1, :cond_0

    const-string p0, "doStart: device is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "doStop: device is not connected"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lcom/sightcall/uvc/Camera;->setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->stopPreview()V

    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v4, "doStop: "

    invoke-virtual {v1, v4, v0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sightcall/universal/internal/view/UvcProducer$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/UvcProducer$2;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doUpdate()V
    .locals 6

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "doUpdate() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-nez v1, :cond_0

    const-string p0, "doStart: device is null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "doUpdate: device is not connected"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-nez v1, :cond_2

    const-string p0, "doUpdate: !isCapturing"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->stopPreview()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/sightcall/uvc/Camera;->setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/sightcall/uvc/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v2, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    iget v4, v2, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-virtual {v0, v3, v4}, Lcom/sightcall/uvc/Camera;->setPreviewSize(II)V

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->getPreviewSize()Lcom/sightcall/uvc/Size;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v4, v3, Lcom/sightcall/uvc/Size;->width:I

    iget v5, v2, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    if-ne v4, v5, :cond_4

    iget v5, v3, Lcom/sightcall/uvc/Size;->height:I

    iget v2, v2, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    if-eq v5, v2, :cond_5

    :cond_4
    iget v2, v3, Lcom/sightcall/uvc/Size;->height:I

    invoke-virtual {v0, v4, v2}, Lcom/sightcall/uvc/Camera;->setPreviewSize(II)V

    :cond_5
    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->getPreviewSize()Lcom/sightcall/uvc/Size;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->startPreview()V

    invoke-virtual {v0}, Lcom/sightcall/uvc/Camera;->updateCameraParams()V

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    invoke-virtual {v0, v3, v1}, Lcom/sightcall/uvc/Camera;->setFrameCallback(Lcom/sightcall/uvc/FrameCallback;I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->setZoom(I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sightcall/uvc/Camera;->setAutoFocus(Z)V

    new-instance v0, Landroid/graphics/Point;

    if-nez v2, :cond_6

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_6
    iget v1, v2, Lcom/sightcall/uvc/Size;->width:I

    iget v2, v2, Lcom/sightcall/uvc/Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/view/UvcProducer;)Lnet/rtccloud/sdk/Sink$Video;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->sink:Lnet/rtccloud/sdk/Sink$Video;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doPause()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doResume()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doSnapshot()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doStart()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doStop()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->doUpdate()V

    return-void
.end method

.method private restartOnlyIfAlreadyStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    :cond_0
    return-void
.end method

.method private static saveSnapshot(Landroid/content/Context;Ljava/nio/ByteBuffer;Landroid/graphics/Point;)Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Snapshot PictureSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/internal/util/Snapshots;->save(Landroid/content/Context;Ljava/nio/ByteBuffer;Landroid/graphics/Point;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private update()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public device()Lcom/sightcall/uvc/Device;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    return-object p0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getProfile()Lnet/rtccloud/sdk/VideoModule$Profile;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object p0

    return-object p0
.end method

.method public getZoom()F
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {p0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/uvc/Camera;->getZoom()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAutofocusAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAutofocusEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused:Z

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted()Z

    move-result p0

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Video;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBind() called with: call = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], sink = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->sink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->configure(F)V

    return-void
.end method

.method public onDeviceAttached(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDeviceDetached(Lcom/sightcall/uvc/Device;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sightcall/uvc/DeviceManager;->removeDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->call:Lnet/rtccloud/sdk/Call;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDevicePermissionDenied(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDevicePermissionGranted(Lcom/sightcall/uvc/Device;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDevicePermissionGranted() called with: device = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    :cond_0
    return-void
.end method

.method public onScale(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/UvcProducer;->setZoom(F)V

    return-void
.end method

.method public onStartProducer()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onStart() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbSenderHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    invoke-direct {v2, p0, v1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;-><init>(Lcom/sightcall/universal/internal/view/UvcProducer;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    invoke-virtual {v2, v0}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->USB_CAMERA_ENABLED:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void
.end method

.method public onStopProducer()V
    .locals 4

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onStop() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->textureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    const-string v1, "onStop: surface.release()"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable() called with: textureView = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], surface = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->textureViewReference:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, p2, :cond_0

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surface:Landroid/view/Surface;

    :cond_0
    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->request(I)V

    :cond_1
    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onUnbind() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->call:Lnet/rtccloud/sdk/Call;

    iput-object v2, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->sink:Lnet/rtccloud/sdk/Sink$Video;

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->cameraCallback:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetZoom()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resetZoom()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->setZoom(F)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

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
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus(Z)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->update()V

    return-void
.end method

.method public setOnCameraCallback(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->cameraCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setProfile(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->update()V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/UvcProducer;->log:Lnet/rtccloud/sdk/util/OldLogger;

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
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom(F)Lnet/rtccloud/sdk/Call$Parameters;

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->isCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->device:Lcom/sightcall/uvc/Device;

    invoke-virtual {v0}, Lcom/sightcall/uvc/Device;->getCamera()Lcom/sightcall/uvc/Camera;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sightcall/uvc/Camera;->setZoom(I)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->getZoom()F

    move-result p1

    :cond_1
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->ZOOMED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->floatPercentToIntPercent(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    return-void
.end method

.method public snapshot()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->senderHandler:Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public surfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method
