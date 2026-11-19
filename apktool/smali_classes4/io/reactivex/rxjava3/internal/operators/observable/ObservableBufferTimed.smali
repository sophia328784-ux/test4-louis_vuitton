.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;
.super Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:Lio/reactivex/rxjava3/core/Scheduler;

.field public final g:Lio/reactivex/rxjava3/functions/Supplier;

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/functions/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lio/reactivex/rxjava3/functions/Supplier<",
            "TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->c:J

    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->d:J

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->f:Lio/reactivex/rxjava3/core/Scheduler;

    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->g:Lio/reactivex/rxjava3/functions/Supplier;

    iput p9, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->h:I

    iput-boolean p10, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->i:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 12

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->c:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->d:J

    cmp-long v0, v0, v2

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->b:Lio/reactivex/rxjava3/core/ObservableSource;

    if-nez v0, :cond_0

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->h:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    new-instance v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;

    new-instance v5, Lio/reactivex/rxjava3/observers/SerializedObserver;

    invoke-direct {v5, p1}, Lio/reactivex/rxjava3/observers/SerializedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->f:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->g:Lio/reactivex/rxjava3/functions/Supplier;

    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->c:J

    invoke-direct/range {v4 .. v10}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Supplier;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-interface {v1, v4}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->f:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Scheduler;->b()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v11

    if-nez v0, :cond_1

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;

    new-instance v4, Lio/reactivex/rxjava3/observers/SerializedObserver;

    invoke-direct {v4, p1}, Lio/reactivex/rxjava3/observers/SerializedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iget v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->h:I

    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->i:Z

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->g:Lio/reactivex/rxjava3/functions/Supplier;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->c:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->e:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v3 .. v11}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Supplier;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/rxjava3/core/Scheduler$Worker;)V

    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_1
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    new-instance v4, Lio/reactivex/rxjava3/observers/SerializedObserver;

    invoke-direct {v4, p1}, Lio/reactivex/rxjava3/observers/SerializedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->d:J

    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->g:Lio/reactivex/rxjava3/functions/Supplier;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed;->c:J

    invoke-direct/range {v3 .. v11}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Supplier;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    invoke-interface {v1, v3}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
