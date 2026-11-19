.class Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SenderHandler"
.end annotation


# static fields
.field public static final FINISH:I = 0x0

.field public static final SEND:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0xc8

    iput-wide p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->timeout:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->c(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->e(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Lnet/rtccloud/sdk/Sink$Screenshare;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Sink$Screenshare;->push(Landroid/graphics/Bitmap;)Z

    move-result v0

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {v4}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->a(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq p1, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->c(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-wide v4, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->timeout:J

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->a(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->a(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->g(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)V

    :cond_7
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->b(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/graphics/Canvas;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->h(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)V

    :cond_8
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->d(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->this$0:Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;->f(Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public setFps(I)V
    .locals 4

    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sightcall/universal/internal/view/ScreenshareProducerHandler$SenderHandler;->timeout:J

    return-void
.end method
