.class final Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

.field public c:Z

.field public d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

.field public volatile e:Z


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method

.method public final e()V
    .locals 5

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a:[Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_0

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->d(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    aget-object v0, v0, v3

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onComplete()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->onComplete()V

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

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

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
    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    move v1, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->c:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->e()V

    return-void
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->d(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
