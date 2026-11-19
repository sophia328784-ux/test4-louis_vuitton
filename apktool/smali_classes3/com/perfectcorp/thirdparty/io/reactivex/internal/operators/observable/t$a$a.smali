.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->c:Z

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->a()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    move p0, v1

    :cond_0
    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_4
    :goto_0
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    if-eqz p0, :cond_5

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :goto_2
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->a(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-nez p0, :cond_7

    :goto_3
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t$a;->b()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_0
.end method
