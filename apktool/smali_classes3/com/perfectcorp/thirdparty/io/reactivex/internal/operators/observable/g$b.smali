.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;

.field public e:I

.field public f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

.field public g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public k:I


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->i:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->h:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->i:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onComplete()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->h:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->dispose()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->dispose()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->i:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->i:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->a()V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->k:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->j:Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->k:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :cond_1
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->e:I

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method
