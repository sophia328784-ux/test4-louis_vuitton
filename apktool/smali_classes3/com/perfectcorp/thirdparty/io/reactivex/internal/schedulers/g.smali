.class public Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# instance fields
.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile h:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    sget-boolean v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->a:Z

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-boolean v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 3

    .line 17
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 6

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    invoke-direct {v0, p1, p5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-gtz p1, :cond_1

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    if-eqz p5, :cond_2

    invoke-interface {p5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;->a(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :cond_2
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    return p0
.end method
