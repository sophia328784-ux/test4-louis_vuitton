.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/a;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

.field private b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

.field private c:Lcom/perfectcorp/thirdparty/io/reactivex/b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/a;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method
