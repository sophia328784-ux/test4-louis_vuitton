.class public Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;
.super Lnet/rtccloud/sdk/FrameFetcherThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/FrameFetcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshareFrameFetcherThread"
.end annotation


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V
    .locals 1

    const-string v0, "ScreenshareFrameFetcherThread"

    invoke-direct {p0, v0, p1, p2}, Lnet/rtccloud/sdk/FrameFetcherThread;-><init>(Ljava/lang/String;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "new ScreenshareFrameFetcherThread()"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public fetchAndDispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->cache:Lnet/rtccloud/sdk/FrameCache;

    invoke-static {v0}, Lnet/rtccloud/sdk/Jni;->nCallGetShareFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;

    move-result-object v0

    iget-boolean v1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    if-nez v1, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Screenshare fetcher Thread is [paused]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Fetched screenshare frame is [null]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->consumer()Lnet/rtccloud/sdk/ScreenshareConsumer;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Fetched screenshare frame but [ScreenshareConsumer] is null"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Fetched screenshare frame but [ScreenshareConsumer] is not started"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {p0, v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onFrame(Lnet/rtccloud/sdk/Frame;)V

    return-void
.end method
