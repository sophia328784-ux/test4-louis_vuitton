.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :goto_0
    move-wide v2, p1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :goto_1
    iput-wide v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->a:J

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->f:Ljava/util/concurrent/ThreadFactory;

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-object v1, p0

    const/4 v0, 0x0

    move-object p0, v0

    :goto_2
    iput-object v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->e:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v0
.end method

.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->a:J

    add-long/2addr v0, v2

    .line 41
    iput-wide v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;->i:J

    .line 42
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    iget-wide v4, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;->i:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
