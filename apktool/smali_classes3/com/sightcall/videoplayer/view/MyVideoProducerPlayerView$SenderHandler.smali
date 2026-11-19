.class Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderHandler"
.end annotation


# static fields
.field public static final FINISH:I = 0x2

.field public static final SEND:I = 0x1

.field private static final TIMEOUT_PAUSED:I = 0xc8


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private final handler:Landroid/os/HandlerThread;

.field private isTeardown:Z

.field private final player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method private constructor <init>(Landroid/os/HandlerThread;Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->timeout:J

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->handler:Landroid/os/HandlerThread;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->player:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static create(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoPlayerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    invoke-direct {v1, v0, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;-><init>(Landroid/os/HandlerThread;Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->isTeardown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    :cond_2
    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->handler:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->teardown()V

    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->s(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Lnet/rtccloud/sdk/Sink$Video;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->o(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Landroid/graphics/Point;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->m(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44200000    # 640.0f

    div-float/2addr v9, v7

    const/high16 v7, 0x43f00000    # 480.0f

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v4, :cond_6

    iget-object v7, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v6, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v4, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lnet/rtccloud/sdk/Sink$Video;->push(Landroid/graphics/Bitmap;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v4, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->l(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/16 v6, 0xc8

    goto :goto_4

    :cond_8
    iget-wide v6, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->timeout:J

    :goto_4
    if-eqz v5, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr v6, v4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_9
    invoke-virtual {p0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->isTeardown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->isTeardown:Z

    :cond_0
    return-void
.end method

.method public updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->timeout:J

    return-void
.end method
