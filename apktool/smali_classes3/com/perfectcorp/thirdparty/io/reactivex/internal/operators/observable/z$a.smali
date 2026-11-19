.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final e:I

.field public final f:Z

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-",
            "Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TK;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->e:I

    iput-boolean p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->f:Z

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->f:Z

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->g:Ljava/lang/Throwable;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->f:Z

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->j:Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->e:I

    iget-boolean v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->f:Z

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;-><init>(ILcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;Ljava/lang/Object;Z)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;

    invoke-direct {v4, v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;-><init>(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    move-object v3, v4

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The value supplied is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$c;->a()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
