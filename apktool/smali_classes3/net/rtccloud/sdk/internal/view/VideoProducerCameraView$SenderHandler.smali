.class Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderHandler"
.end annotation


# static fields
.field private static final OCR:I = 0x9

.field private static final PAUSE:I = 0x4

.field private static final RESTART:I = 0x3

.field private static final RESUME:I = 0x2

.field private static final SNAPSHOT:I = 0x8

.field private static final START:I = 0x1

.field private static final STILL:I = 0x7

.field private static final STOP:I = 0x5

.field private static final TEARDOWN:I = 0x6


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private lastFrame:[B

.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;Landroid/os/HandlerThread;)V
    .locals 2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->timeout:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;)[B
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->lastFrame:[B

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->sendFrame([B)V

    return-void
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->sendPause()V

    return-void
.end method

.method private sendFrame([B)V
    .locals 8

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->g(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/Sink$Video;

    move-result-object v1

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->f(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->e(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->d(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->lastFrame:[B

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->c(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)I

    move-result v6

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lnet/rtccloud/sdk/Sink$Video;->push([BIIIII)Z

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->a(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Landroid/hardware/Camera;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendPause()V
    .locals 10

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->g(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/Sink$Video;

    move-result-object v1

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->f(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->e(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->d(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->lastFrame:[B

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v2

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->lastFrame:[B

    move-object v4, v3

    iget v3, v4, Landroid/hardware/Camera$Size;->width:I

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->c(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)I

    move-result v6

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lnet/rtccloud/sdk/Sink$Video;->push([BIIIII)Z

    move-result v0

    iget-wide v1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->timeout:J

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v8

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    if-eqz v0, :cond_5

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->k(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->h(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->k(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->j(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->i(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->j(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    :try_start_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_6
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->sendPause()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    :try_start_7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->lastFrame:[B

    iget-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$SenderHandler;->timeout:J

    return-void
.end method
