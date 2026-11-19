.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;
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
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->j:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->g:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->j:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
