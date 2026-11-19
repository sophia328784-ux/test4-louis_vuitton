.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
