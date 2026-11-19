.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/Executor;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->a:Z

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/Executor;

    const-string v1, "run is null"

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/a;->a(Ljava/util/concurrent/Future;)V

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->a:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$b;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$a;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$a;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0
.end method

.method public final c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->b:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/j;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-object v0
.end method
