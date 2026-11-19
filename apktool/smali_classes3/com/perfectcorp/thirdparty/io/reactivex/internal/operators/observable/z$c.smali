.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;

.field public final e:Z

.field public volatile f:Z

.field public g:Ljava/lang/Throwable;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(ILcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->e:Z

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/e;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_a

    :goto_1
    iget-boolean v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->f:Z

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->a()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget-object v9, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v10, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->j:Ljava/lang/Object;

    :goto_3
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz v5, :cond_9

    if-eqz v1, :cond_7

    if-eqz v7, :cond_9

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->g:Ljava/lang/Throwable;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p0, :cond_6

    invoke-interface {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_7
    iget-object v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->g:Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_9
    if-nez v7, :cond_a

    invoke-interface {v2, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/e;

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-void
.end method

.method public final dispose()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->j:Ljava/lang/Object;

    :goto_0
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->a()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one Observer allowed!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->c(Ljava/lang/Throwable;Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
