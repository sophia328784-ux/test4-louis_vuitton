.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong;
.super Lio/reactivex/rxjava3/core/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/Observable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong;->b:J

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong;->c:J

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 8

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong;->c:J

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong;->b:J

    add-long/2addr v1, v3

    move-wide v6, v3

    move-wide v4, v1

    move-wide v2, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;JJ)V

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-boolean p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;->e:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;->d:J

    :goto_0
    iget-wide v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;->c:J

    cmp-long v1, p0, v1

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRangeLong$RangeDisposable;->b:Lio/reactivex/rxjava3/core/Observer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
