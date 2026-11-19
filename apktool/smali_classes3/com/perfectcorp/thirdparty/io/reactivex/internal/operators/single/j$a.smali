.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;
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

.field public synthetic c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
