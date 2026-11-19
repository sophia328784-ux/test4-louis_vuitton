.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/d;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/perfectcorp/thirdparty/io/reactivex/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/d;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
            "-TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->d:Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->c:Ljava/lang/Object;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->d:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onComplete()V

    return-void
.end method
