.class public abstract Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Runnable;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Let;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Let;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->c:Ljava/lang/Runnable;

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-super {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->processing(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->a()V

    return-void
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract processing(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
.end method

.method public final quit()Z
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sendNewFrame(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->e:J

    :goto_0
    iget-wide v2, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->d:J

    return-void
.end method

.method public final declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
