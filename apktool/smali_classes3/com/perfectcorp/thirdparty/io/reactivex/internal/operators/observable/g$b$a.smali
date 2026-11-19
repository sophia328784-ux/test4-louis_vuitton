.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->h:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
