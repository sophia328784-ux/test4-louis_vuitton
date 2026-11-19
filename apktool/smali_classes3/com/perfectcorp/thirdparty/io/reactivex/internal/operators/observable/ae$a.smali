.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The mapper function returned a null value."

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->f:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
