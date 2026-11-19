.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public synthetic c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
