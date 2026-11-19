.class public final Lcom/perfectcorp/perfectlib/makeupcam/video/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

.field public b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

.field public c:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-direct {p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    iget-object v1, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_0
    iget-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iput-object p0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    iget-object v2, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->E:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    invoke-direct {v0, v4, p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    const-string v3, "AudioEncoding"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Recording"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->D:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->E:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Landroid/os/Looper;Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V

    iput-object v3, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->d:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->e:I

    iget-object v2, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/video/b;

    invoke-direct {v2, v4, v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/b;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;II)V

    invoke-virtual {v4, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object p0, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, v2, :cond_1

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->j()V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-ne v0, v2, :cond_4

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->j()V

    :cond_4
    return-void

    :cond_5
    :goto_2
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final b()V
    .locals 6

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->r:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->F:Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->r:Ljava/lang/Thread;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->b(Ljava/lang/Thread;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->F:Z

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->s:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->b(Ljava/lang/Thread;)V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->s:Landroid/os/HandlerThread;

    :cond_3
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    if-eqz v2, :cond_5

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->a()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
