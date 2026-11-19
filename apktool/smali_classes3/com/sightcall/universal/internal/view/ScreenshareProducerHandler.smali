.class public Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;,
        Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$ScreenshareProducerHandlerCallback;
    }
.end annotation


# static fields
.field private static final CAPTURE:I = 0x1

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private isTeardown:Z

.field private final senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

.field private final senderHandlerThread:Landroid/os/HandlerThread;

.field private final sink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field private final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREEN_SHARE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->view:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "ScreenshareSenderHandlerThread"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;-><init>(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    instance-of p1, p1, Landroid/webkit/WebView;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->setFps(I)V

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->isTeardown:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private declared-synchronized doCapture()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->isTeardown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    instance-of v3, v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v6, v4, v5

    if-lez v4, :cond_d

    if-gtz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const v9, 0x1fa400

    if-le v6, v9, :cond_3

    invoke-static {v4, v5, v9}, Lnet/rtccloud/sdk/Sink;->scalingFactor(III)D

    move-result-wide v9

    int-to-double v11, v4

    mul-double/2addr v11, v9

    double-to-int v4, v11

    int-to-double v5, v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    move-wide v9, v7

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_7

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    double-to-float v5, v9

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    cmpg-double v4, v9, v7

    if-gez v4, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    double-to-float v5, v9

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_9
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-gez v4, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    iput-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->isTeardown:Z

    if-nez v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :cond_d
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Lnet/rtccloud/sdk/Sink$Screenshare;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->canvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->doCapture()V

    return-void
.end method

.method public teardown()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->isTeardown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->isTeardown:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->senderHandler:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
