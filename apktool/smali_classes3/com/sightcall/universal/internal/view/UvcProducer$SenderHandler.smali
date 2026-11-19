.class Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/uvc/FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/UvcProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderHandler"
.end annotation


# static fields
.field private static final ACTION_PAUSE:I = 0x3

.field private static final ACTION_RESTART:I = 0x5

.field private static final ACTION_RESUME:I = 0x4

.field private static final ACTION_SEND_FRAME:I = 0x6

.field private static final ACTION_SNAPSHOT:I = 0x7

.field private static final ACTION_START:I = 0x1

.field private static final ACTION_STOP:I = 0x2

.field private static final ACTION_TEARDOWN:I = -0x1

.field private static final ACTION_UPDATE:I = 0x8

.field private static final TIMEOUT:J = 0x21L


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private lastFrame:Ljava/nio/ByteBuffer;

.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/universal/internal/view/UvcProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/UvcProducer;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private sendPausedFrame(Ljava/nio/ByteBuffer;)V
    .locals 10

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->e(Lcom/sightcall/universal/internal/view/UvcProducer;)Lnet/rtccloud/sdk/Sink$Video;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->d(Lcom/sightcall/universal/internal/view/UvcProducer;)Landroid/graphics/Point;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->c(Lcom/sightcall/universal/internal/view/UvcProducer;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->b(Lcom/sightcall/universal/internal/view/UvcProducer;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lnet/rtccloud/sdk/Sink$Video;->push(Ljava/nio/ByteBuffer;IIIII)Z

    move-result p1

    const-wide/16 v0, 0x21

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v8

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_3
    const/4 p1, 0x6

    invoke-static {p0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->k(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_2
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->h(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->sendPausedFrame(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->sendPausedFrame(Ljava/nio/ByteBuffer;)V

    return-void

    :pswitch_4
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->j(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->i(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_5
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->g(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_6
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->f(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->j(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    return-void

    :pswitch_8
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->i(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFrame(Ljava/nio/ByteBuffer;)V
    .locals 8

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->e(Lcom/sightcall/universal/internal/view/UvcProducer;)Lnet/rtccloud/sdk/Sink$Video;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->d(Lcom/sightcall/universal/internal/view/UvcProducer;)Landroid/graphics/Point;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->c(Lcom/sightcall/universal/internal/view/UvcProducer;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->b(Lcom/sightcall/universal/internal/view/UvcProducer;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_1
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lnet/rtccloud/sdk/Sink$Video;->push(Ljava/nio/ByteBuffer;IIIII)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$SenderHandler;->lastFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_5
    :goto_2
    return-void
.end method

.method public request(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
