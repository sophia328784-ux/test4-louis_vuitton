.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
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
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;->b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;->b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
