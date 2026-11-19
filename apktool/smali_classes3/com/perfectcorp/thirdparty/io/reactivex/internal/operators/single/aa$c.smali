.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

.field public c:I


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->c:I

    invoke-virtual {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->c:I

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->e:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    aput-object p1, v1, p0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->e:[Ljava/lang/Object;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
