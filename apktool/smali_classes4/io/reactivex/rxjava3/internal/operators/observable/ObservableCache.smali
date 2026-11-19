.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;
.super Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

.field public static final m:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile f:J

.field public final g:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

.field public h:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

.field public i:I

.field public j:Ljava/lang/Throwable;

.field public volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->l:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    new-array v0, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->m:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Observable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->d:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    invoke-direct {p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->g:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->h:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->l:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final c(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 12

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->f:J

    iget v2, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->e:I

    iget-object v3, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iget-object v4, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->b:Lio/reactivex/rxjava3/core/Observer;

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->d:I

    const/4 v6, 0x1

    move v7, v6

    :cond_1
    :goto_0
    iget-boolean v8, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->g:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    iput-object v9, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    return-void

    :cond_2
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->k:Z

    iget-wide v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->f:J

    cmp-long v10, v10, v0

    const/4 v11, 0x0

    if-nez v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v11

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    iput-object v9, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->j:Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-interface {v4, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-interface {v4}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void

    :cond_5
    if-nez v10, :cond_7

    if-ne v2, v5, :cond_6

    iget-object v2, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    move-object v3, v2

    move v2, v11

    :cond_6
    iget-object v8, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-interface {v4, v8}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    add-int/2addr v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_7
    iput-wide v0, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->f:J

    iput v2, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->e:I

    iput-object v3, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    neg-int v7, v7

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    :goto_2
    return-void
.end method

.method public final onComplete()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->k:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->m:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->k:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->m:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->i:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iput v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->i:I

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->h:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iput-object v1, p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->h:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->h:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->i:I

    :goto_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->f:J

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 5

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :goto_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    sget-object v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->m:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v1

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, v2

    :cond_1
    invoke-virtual {p1, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->b:Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->c(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_0
.end method
