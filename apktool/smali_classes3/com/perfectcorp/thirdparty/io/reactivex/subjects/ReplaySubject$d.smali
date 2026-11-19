.class final Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public volatile d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

.field public e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

.field public volatile f:Z


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    iget-boolean v4, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iput-object v5, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->d:Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    if-eqz v4, :cond_6

    iget-object v1, v4, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;->b:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->f:Z

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v5, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->d:Ljava/lang/Object;

    iput-boolean v2, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    return-void

    :cond_5
    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->d:Ljava/lang/Object;

    neg-int v3, v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    return-void
.end method

.method public final b(Ljava/io/Serializable;)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iget v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    :cond_0
    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->f:Z

    return-void
.end method
