.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;
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

.field public final d:I

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

.field public final f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;

.field public final g:Z

.field public h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

.field public i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->d:I

    iput-boolean p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->g:Z

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p0, p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->j:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    iput-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    :goto_1
    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->k:Z

    :try_start_0
    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    iput-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_6
    if-nez v6, :cond_8

    :try_start_1
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of v5, v3, Ljava/util/concurrent/Callable;

    if-eqz v5, :cond_7

    :try_start_2
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_7
    iput-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->j:Z

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;

    invoke-interface {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    goto :goto_3

    :catchall_1
    move-exception v3

    iput-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->c()V

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_2
    move-exception v1

    iput-boolean v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    :goto_4
    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a$a;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->l:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->k:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->k:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->m:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->m:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->k:Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->m:I

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :cond_1
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->d:I

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method
