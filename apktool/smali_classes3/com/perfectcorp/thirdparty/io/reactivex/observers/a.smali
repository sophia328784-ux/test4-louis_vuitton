.class public final Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public d:Z

.field public e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    move v1, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->f:Z

    if-eqz v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    :cond_5
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->d:Z

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a:[Ljava/lang/Object;

    :goto_1
    if-eqz p1, :cond_5

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_8

    aget-object v4, p1, v3

    if-eqz v4, :cond_8

    invoke-static {v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->d(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    return-void

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_1

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/observers/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
