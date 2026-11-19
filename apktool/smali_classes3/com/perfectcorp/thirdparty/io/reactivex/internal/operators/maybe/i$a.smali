.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/d;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;
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
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

.field public d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b()V

    return-void
.end method

.method public final b()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->g:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->h:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->f:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onComplete()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
