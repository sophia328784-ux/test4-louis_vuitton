.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final m:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

.field public final n:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final o:Z

.field public final p:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public volatile r:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->o:Z

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->m:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->p:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->r:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->p:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->m:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->m:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->o:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->dispose()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->n:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/b;

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;)V

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->r:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->p:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->q:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/q$a;->l:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
