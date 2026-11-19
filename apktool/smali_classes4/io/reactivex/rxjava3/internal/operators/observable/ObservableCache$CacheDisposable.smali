.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5df4ba2ba2d80afaL


# instance fields
.field public final b:Lio/reactivex/rxjava3/core/Observer;

.field public final c:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;

.field public d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

.field public e:I

.field public f:J

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->b:Lio/reactivex/rxjava3/core/Observer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->c:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;

    iget-object p1, p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->g:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->d:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$Node;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 7

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->g:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->g:Z

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->c:Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->e:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    if-ne v6, p0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-gez v5, :cond_3

    goto :goto_4

    :cond_3
    if-ne v3, v0, :cond_4

    sget-object v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache;->l:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v3, -0x1

    new-array v6, v6, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-static {v2, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v5, 0x1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v0

    invoke-static {v2, v4, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v6

    :cond_5
    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_5

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->g:Z

    return p0
.end method
