.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
