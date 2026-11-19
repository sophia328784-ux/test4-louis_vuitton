.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/Executor;

.field private c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    iput-boolean p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    .line 96
    :cond_0
    const-string v0, "run is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$b;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$b;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$a;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->a(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->c()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    const-string v2, "run is null"

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;

    invoke-direct {v3, p0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2, v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->b:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;->a(Ljava/util/concurrent/Future;)V

    :goto_0
    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-object v1
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->c()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;

    const/4 v1, 0x1

    :cond_0
    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->c()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->c()V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/a;->c()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method
