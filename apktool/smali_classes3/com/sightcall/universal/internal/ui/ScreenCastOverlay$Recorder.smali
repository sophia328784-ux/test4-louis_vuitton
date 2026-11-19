.class Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recorder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Landroid/content/Intent;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private imageReader:Landroid/media/ImageReader;

.field private isRecording:Z

.field private final lock:Ljava/lang/Object;

.field private final mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private profile:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field private projection:Landroid/media/projection/MediaProjection;

.field private resultCode:I

.field private sink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$1;-><init>(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Lnet/rtccloud/sdk/Sink$Screenshare;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-object p0
.end method

.method private static getRecordingSize(Landroid/util/DisplayMetrics;Lnet/rtccloud/sdk/ScreenshareModule$Profile;)Landroid/graphics/Point;
    .locals 5

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v1, v0, p0

    const v2, 0x1fa400

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    iget v3, p1, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->high:I

    iget p1, p1, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->low:I

    mul-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-le v1, p1, :cond_1

    invoke-static {v0, p0, v2}, Lnet/rtccloud/sdk/Sink;->scalingFactor(III)D

    move-result-wide v1

    new-instance p1, Landroid/graphics/Point;

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public isReady()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->data:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public load(ILandroid/content/Intent;)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->resultCode:I

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->data:Landroid/content/Intent;

    return-void
.end method

.method public onBind(Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-void
.end method

.method public onUnbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-void
.end method

.method public restart()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->stop()Z

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->start()Z

    const/4 p0, 0x1

    return p0
.end method

.method public setProfile(Lnet/rtccloud/sdk/ScreenshareModule$Profile;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->profile:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    return-void
.end method

.method public start()Z
    .locals 12

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->profile:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->getRecordingSize(Landroid/util/DisplayMetrics;Lnet/rtccloud/sdk/ScreenshareModule$Profile;)Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ScreencastHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->context:Landroid/content/Context;

    const-string v2, "media_projection"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    iget v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->resultCode:I

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->data:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->projection:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    const/4 v1, 0x2

    const/4 v11, 0x1

    invoke-static {v4, v5, v11, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->imageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;-><init>(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->projection:Landroid/media/projection/MediaProjection;

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "universal_screencast"

    const/16 v7, 0x8

    invoke-virtual/range {v2 .. v10}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iput-boolean v11, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    return v11

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->isRecording:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->imageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->projection:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->imageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->handler:Landroid/os/Handler;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unload()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->resultCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->data:Landroid/content/Intent;

    return-void
.end method
