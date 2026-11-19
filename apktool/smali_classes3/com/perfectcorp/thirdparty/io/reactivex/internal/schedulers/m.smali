.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

.field public static final c:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-string v0, "pf.rx2.single-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v3, "PfRxSingleScheduler"

    invoke-direct {v2, v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-boolean p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->a:Z

    const/4 p0, 0x1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    sget-boolean v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->a:Z

    if-eqz v1, :cond_0

    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m$a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    if-gtz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0
.end method
