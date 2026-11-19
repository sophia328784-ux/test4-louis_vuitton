.class final Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;

.field public final c:Lio/reactivex/rxjava3/core/ObservableSource;

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->e:Z

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->f:Z

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->c:Lio/reactivex/rxjava3/core/ObservableSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->b:Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->f:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->b:Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;

    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->h:Z

    if-nez v4, :cond_1

    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->h:Z

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->c:Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-direct {v4, v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    invoke-virtual {v4, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextObserver;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/core/Notification;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/Notification;->b()Z

    move-result v0

    iget-object v4, v3, Lio/reactivex/rxjava3/core/Notification;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->f:Z

    if-eqz v4, :cond_2

    invoke-static {v4}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->d:Ljava/lang/Object;

    return v2

    :cond_3
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->e:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/Notification;->a()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->g:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lio/reactivex/rxjava3/observers/DisposableObserver;->dispose()V

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->g:Ljava/lang/Throwable;

    invoke-static {v1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5
    return v2

    :cond_6
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->f:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/BlockingObservableNext$NextIterator;->d:Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string p0, "No more elements"

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Read only iterator"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
