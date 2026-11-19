.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public m:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

.field public p:Z


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/e;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->p:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->d()V

    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->b()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->m:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
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

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->d()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->d()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->o:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_1
    return-void
.end method
