.class public Lnet/rtccloud/sdk/ScreenshareModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final call:Lnet/rtccloud/sdk/Call;

.field private consumerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/ScreenshareConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

.field private final isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTeardown:Z

.field private producerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/ScreenshareProducer;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREEN_SHARE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/ScreenshareModule;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    return-void
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "ScreenshareModule must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private teardownConsumer()V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/ScreenshareConsumer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onStop()V

    :cond_0
    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onUnbind()V

    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    return-void
.end method

.method private teardownProducer()V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/ScreenshareProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareProducer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareProducer;->onStop()V

    :cond_0
    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareProducer;->onUnbind()V

    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public consumer()Lnet/rtccloud/sdk/ScreenshareConsumer;
    .locals 0

    .line 82
    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/ScreenshareConsumer;

    return-object p0
.end method

.method public consumer(Lnet/rtccloud/sdk/ScreenshareConsumer;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "consumer(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownConsumer()V

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-interface {p1, v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onBind(Lnet/rtccloud/sdk/Call;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onStart()V

    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, v0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    iget-object v0, v0, Lnet/rtccloud/sdk/FrameFetcher;->screenshareFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameCache;->lastFrame()Lnet/rtccloud/sdk/Frame;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onFrame(Lnet/rtccloud/sdk/Frame;)V

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public isReceiving()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isSending()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public producer()Lnet/rtccloud/sdk/ScreenshareProducer;
    .locals 0

    .line 69
    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/ScreenshareProducer;

    return-object p0
.end method

.method public producer(Lnet/rtccloud/sdk/ScreenshareProducer;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

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
    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->ensureNotTeardown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownProducer()V

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, v0, Lnet/rtccloud/sdk/Call;->screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-interface {p1, v0, v1}, Lnet/rtccloud/sdk/ScreenshareProducer;->onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Screenshare;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/rtccloud/sdk/ScreenshareProducer;->onStart()V

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public releaseConsumer()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "releaseConsumer()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownConsumer()V

    return-void
.end method

.method public releaseProducer()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "releaseProducer()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownProducer()V

    return-void
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public start()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "start()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->ensureNotTeardown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Call must not be [receiving] screenshare"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Call is already [sending] screenshare"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STARTSHARE:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "stop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->ensureNotTeardown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Call must be [sending] screenshare"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STOPSHARE:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isTeardown:Z

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownConsumer()V

    invoke-direct {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardownProducer()V

    return-void
.end method

.method public declared-synchronized updateReceivingStatus(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isTeardown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcher;->startShare()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcher;->stopShare()V

    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->consumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/ScreenshareConsumer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onStart()V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareConsumer;->onStop()V

    iget-object p1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    iget-object p1, p1, Lnet/rtccloud/sdk/FrameFetcher;->screenshareFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/FrameCache;->teardown()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/ScreenshareEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v2, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v3, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/event/call/ScreenshareEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateSendingStatus(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isTeardown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/rtccloud/sdk/ScreenshareModule;->producerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/ScreenshareProducer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareProducer;->onStart()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lnet/rtccloud/sdk/ScreenshareProducer;->onStop()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/ScreenshareEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/ScreenshareModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v2, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v3, p0, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/event/call/ScreenshareEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
