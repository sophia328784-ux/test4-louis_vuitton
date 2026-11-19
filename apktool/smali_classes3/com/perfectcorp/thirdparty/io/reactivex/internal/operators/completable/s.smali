.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Completable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TR;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            ">;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TR;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-boolean p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->e:Z

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->e:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/b;

    const-string v3, "The completableFunction returned a null CompletableSource"

    invoke-static {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iput-object v1, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iput-boolean v0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s$a;->d:Z

    invoke-interface {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    filled-new-array {p0, v0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    if-nez v0, :cond_1

    :try_start_3
    invoke-interface {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_3
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
