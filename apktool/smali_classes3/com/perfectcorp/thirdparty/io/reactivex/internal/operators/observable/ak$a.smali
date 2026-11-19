.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak;
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
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public d:Ljava/lang/Object;

.field public e:Z


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->e:Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence contains more than one element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
