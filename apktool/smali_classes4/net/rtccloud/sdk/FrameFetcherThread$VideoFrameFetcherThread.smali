.class public Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;
.super Lnet/rtccloud/sdk/FrameFetcherThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/FrameFetcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFrameFetcherThread"
.end annotation


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V
    .locals 1

    const-string v0, "VideoFrameFetcherThread"

    invoke-direct {p0, v0, p1, p2}, Lnet/rtccloud/sdk/FrameFetcherThread;-><init>(Ljava/lang/String;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "new VideoFrameFetcherThread()"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public fetchAndDispatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->cache:Lnet/rtccloud/sdk/FrameCache;

    invoke-static {v0}, Lnet/rtccloud/sdk/Jni;->nCallGetVideoFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;

    move-result-object v0

    iget-boolean v1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    if-nez v1, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Video fetcher Thread is [paused]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Fetched video frame is [null]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lnet/rtccloud/sdk/Frame;->pid:I

    iget-object v2, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->call:Lnet/rtccloud/sdk/Call;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    iget v2, v0, Lnet/rtccloud/sdk/Frame;->pid:I

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/ConferenceModule;->participant(I)Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    :goto_0
    const-string v2, "] is null"

    const-string v3, "Fetched video frame but [Participant "

    if-nez v1, :cond_4

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lnet/rtccloud/sdk/Frame;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Participant;->videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->i()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fetched video frame but [VideoConsumer of participant "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lnet/rtccloud/sdk/Frame;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Participant;->isSendingVideo()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/rtccloud/sdk/Frame;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] is not sending video -> dropping frame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->cache:Lnet/rtccloud/sdk/FrameCache;

    iget-object v0, v0, Lnet/rtccloud/sdk/Frame;->id:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    invoke-interface {v4}, Lnet/rtccloud/sdk/VideoConsumer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lnet/rtccloud/sdk/FrameFetcherThread;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetched video frame but ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of participant "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lnet/rtccloud/sdk/Frame;->id:Ljava/lang/Integer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] is not started"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-interface {v4, v0}, Lnet/rtccloud/sdk/VideoConsumer;->onFrame(Lnet/rtccloud/sdk/Frame;)V

    return-void
.end method
