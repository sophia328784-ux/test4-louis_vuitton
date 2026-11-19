.class public abstract Lnet/rtccloud/sdk/FrameFetcherThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/FrameFetcherThread$ScreenshareFrameFetcherThread;,
        Lnet/rtccloud/sdk/FrameFetcherThread$VideoFrameFetcherThread;
    }
.end annotation


# static fields
.field private static final SLEEP_TIMEOUT:I = 0x32

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field final cache:Lnet/rtccloud/sdk/FrameCache;

.field final call:Lnet/rtccloud/sdk/Call;

.field volatile isRunning:Z

.field private final lock:Ljava/lang/Object;

.field private volatile teardown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->ENGINE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameCache;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->lock:Ljava/lang/Object;

    iput-object p2, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->cache:Lnet/rtccloud/sdk/FrameCache;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    return-void
.end method

.method public static bridge synthetic b()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method


# virtual methods
.method public doPause()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPause("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    return-void
.end method

.method public doResume()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doResume("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract fetchAndDispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->teardown:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " interrupted [paused]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lnet/rtccloud/sdk/FrameFetcherThread;->fetchAndDispatch()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " interrupted [active]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public teardown()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/FrameFetcherThread;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "teardown("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->isRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/FrameFetcherThread;->teardown:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
