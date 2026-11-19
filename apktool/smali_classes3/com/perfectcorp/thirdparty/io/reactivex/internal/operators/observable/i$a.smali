.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;

.field public i:Ljava/lang/Object;

.field public j:Z


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->j:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->j:Z

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;

    if-nez v2, :cond_0

    return-object v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->f:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;

    if-eqz v2, :cond_3

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->j:Z

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i$a;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
