.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

.field public volatile d:Z

.field public volatile e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->b:J

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    iget-boolean v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e()Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->f:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f:I

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    :cond_1
    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->c()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->d(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->f:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->f:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    :cond_1
    return-void
.end method
