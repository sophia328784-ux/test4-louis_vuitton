.class public Lnet/rtccloud/sdk/VideoModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/VideoModule$Profile;,
        Lnet/rtccloud/sdk/VideoModule$CameraSource;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final call:Lnet/rtccloud/sdk/Call;

.field private final frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

.field private final isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTeardown:Z

.field private producerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/VideoProducer;",
            ">;"
        }
    .end annotation
.end field

.field requestedProfile:Lnet/rtccloud/sdk/VideoModule$Profile;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->requestedProfile:Lnet/rtccloud/sdk/VideoModule$Profile;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/VideoModule;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    return-void
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/VideoModule;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "VideoModule must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private teardownProducer()V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/VideoProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoProducer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoProducer;->onStopProducer()V

    :cond_0
    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoProducer;->onUnbind()V

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    return-void
.end method

.method private declared-synchronized updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lnet/rtccloud/sdk/VideoModule;->requestedProfile:Lnet/rtccloud/sdk/VideoModule$Profile;

    .line 57
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    .line 58
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/call/VideoProfileEvent;

    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v1, v2, p1}, Lnet/rtccloud/sdk/event/call/VideoProfileEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/VideoModule$Profile;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateReceivingStatus(ZZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/rtccloud/sdk/VideoModule;->isTeardown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcher;->startVideo()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcher;->stopVideo()V

    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lnet/rtccloud/sdk/VideoConsumer;->isStarted()Z

    move-result v2

    if-eq v2, p1, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lnet/rtccloud/sdk/VideoConsumer;->onStart()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lnet/rtccloud/sdk/VideoConsumer;->onStop()V

    :cond_4
    :goto_1
    iget-object v0, v0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    :goto_2
    new-instance p1, Lnet/rtccloud/sdk/event/call/VideoEvent;

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lnet/rtccloud/sdk/event/call/VideoEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    if-nez p2, :cond_6

    iget-object p2, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p2, p2, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateSendingStatus(ZZ)V
    .locals 3

    const-string v0, "{\"evt\":\"callstatus\",\"id\":"

    const-string v1, "{\"evt\":\"callstatus\",\"id\":"

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lnet/rtccloud/sdk/VideoModule;->isTeardown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/rtccloud/sdk/VideoProducer;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {v2}, Lnet/rtccloud/sdk/VideoProducer;->onStartProducer()V

    iget-object p1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget v1, v1, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"type\":\"video_local\",\"status\":\"start\",\"sipcallid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, v1, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lnet/rtccloud/sdk/VideoProducer;->onStopProducer()V

    iget-object p1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget v0, v0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"type\":\"video_local\",\"status\":\"stop\",\"sipcallid\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance p1, Lnet/rtccloud/sdk/event/call/VideoEvent;

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lnet/rtccloud/sdk/event/call/VideoEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallEvent(Lnet/rtccloud/sdk/event/call/CallEvent;)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p2, p2, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public call()Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public isReceiving()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isSending()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public producer()Lnet/rtccloud/sdk/VideoProducer;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/VideoProducer;

    return-object p0
.end method

.method public producer(Lnet/rtccloud/sdk/VideoProducer;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "producer(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->teardownProducer()V

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, v0, Lnet/rtccloud/sdk/Call;->videoSink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-interface {p1, v0, v1}, Lnet/rtccloud/sdk/VideoProducer;->onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Video;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoProducer;->onStartProducer()V

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/VideoModule;->producerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public releaseProducer()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "releaseProducer()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->teardownProducer()V

    return-void
.end method

.method public requestedProfile()Lnet/rtccloud/sdk/VideoModule$Profile;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->requestedProfile:Lnet/rtccloud/sdk/VideoModule$Profile;

    return-object p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public start()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "start()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->ensureNotTeardown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Call is already [sending] video"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STARTVIDEO:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/VideoModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "stop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->ensureNotTeardown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Call must be [sending] video"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STOPVIDEO:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/VideoModule;->isTeardown:Z

    invoke-direct {p0}, Lnet/rtccloud/sdk/VideoModule;->teardownProducer()V

    return-void
.end method

.method public declared-synchronized updateProfile(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :try_start_0
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->HD_720:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->WVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->QVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$Profile;->QCIF:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateReceivingStatus(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/VideoModule;->updateReceivingStatus(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateSendingStatus(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/VideoModule;->updateSendingStatus(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateStatus(Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/VideoModule;->updateSendingStatus(ZZ)V

    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/VideoModule;->updateReceivingStatus(ZZ)V

    iget-object p1, p0, Lnet/rtccloud/sdk/VideoModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/VideoEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/VideoModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v2, p0, Lnet/rtccloud/sdk/VideoModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v3, p0, Lnet/rtccloud/sdk/VideoModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/event/call/VideoEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
