.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

.field public final c:Ljava/util/Iterator;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/a;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->c:Ljava/util/Iterator;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->c:Ljava/util/Iterator;

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;->isDisposed()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    return-void

    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/b;

    const-string v4, "The CompletableSource returned is null"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
