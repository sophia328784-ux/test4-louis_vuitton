.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/a;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
