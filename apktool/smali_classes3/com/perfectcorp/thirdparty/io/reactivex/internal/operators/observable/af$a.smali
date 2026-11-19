.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;
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
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/perfectcorp/thirdparty/io/reactivex/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

.field private c:Z

.field private d:I

.field private e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field private g:Ljava/lang/Throwable;

.field private volatile h:Z

.field private volatile i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/b;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->c:Z

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d:I

    return-void
.end method

.method private a(ZZLcom/perfectcorp/thirdparty/io/reactivex/e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->g:Ljava/lang/Throwable;

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->c:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    invoke-interface {p3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    invoke-interface {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;->a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 72
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->k:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->b()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d()V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->j:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->j:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :cond_1
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->d:I

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method

.method public final run()V
    .locals 7

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->g:Ljava/lang/Throwable;

    iget-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->c:Z

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->g:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->g:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    goto :goto_1

    :cond_2
    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    move v3, v1

    :cond_4
    iget-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->b()Z

    move-result v5

    invoke-direct {p0, v4, v5, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a(ZZLcom/perfectcorp/thirdparty/io/reactivex/e;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_2
    iget-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->h:Z

    :try_start_0
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-direct {p0, v4, v6, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->a(ZZLcom/perfectcorp/thirdparty/io/reactivex/e;)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v6, :cond_6

    invoke-interface {v2, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :catchall_0
    move-exception v3

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->i:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    invoke-interface {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method
