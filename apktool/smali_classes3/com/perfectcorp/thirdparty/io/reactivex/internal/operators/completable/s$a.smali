.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/a;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public d:Z

.field public e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->a()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->a()V

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
