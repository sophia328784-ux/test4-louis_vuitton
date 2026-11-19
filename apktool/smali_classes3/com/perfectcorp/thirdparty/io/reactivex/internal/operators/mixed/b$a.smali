.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

.field public final f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

.field public final g:I

.field public h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ljava/lang/Object;

.field public volatile l:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->g:I

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-direct {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->g:I

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->j:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    iput-object v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    iget v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->l:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    sget v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->a:I

    if-eq v1, v8, :cond_3

    sget v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->b:I

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    iput-object v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    :goto_1
    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->i:Z

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->a()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    move v8, v4

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_6
    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-nez v8, :cond_9

    :try_start_0
    iget-object v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    const-string v7, "The mapper returned a null SingleSource"

    invoke-static {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->l:I

    iget-object v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

    invoke-interface {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    invoke-static {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_8
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    iget-object v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    iput-object v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    invoke-interface {v0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    iput v8, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->l:I

    goto :goto_0

    :cond_9
    :goto_2
    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    :goto_3
    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->j:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->k:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->j:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->i:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->g:I

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a$a;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->i:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->a()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
