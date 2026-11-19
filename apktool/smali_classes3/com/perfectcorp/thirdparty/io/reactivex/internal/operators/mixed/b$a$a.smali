.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;
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
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->g:I

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->c:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->l:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->a()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->l:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->a()V

    return-void
.end method
