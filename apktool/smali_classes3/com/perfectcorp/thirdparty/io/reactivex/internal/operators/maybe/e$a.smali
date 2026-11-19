.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;
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
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
