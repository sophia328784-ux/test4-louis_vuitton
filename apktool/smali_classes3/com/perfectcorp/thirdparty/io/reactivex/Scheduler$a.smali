.class final Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    instance-of v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->h:Z

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->dispose()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->c:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->dispose()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;->c:Ljava/lang/Thread;

    throw v1
.end method
