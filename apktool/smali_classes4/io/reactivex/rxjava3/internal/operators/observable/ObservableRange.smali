.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange;
.super Lio/reactivex/rxjava3/core/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/Observable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange;->b:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 6

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange;->b:I

    int-to-long v2, v1

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange;->c:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;JJ)V

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-boolean p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;->e:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;->d:J

    :goto_0
    iget-wide v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;->c:J

    cmp-long v1, p0, v1

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRange$RangeDisposable;->b:Lio/reactivex/rxjava3/core/Observer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    long-to-int v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-interface {v2}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :cond_2
    :goto_1
    return-void
.end method
