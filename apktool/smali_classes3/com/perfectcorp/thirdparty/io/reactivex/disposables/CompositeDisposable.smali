.class public final Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

.field public volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disposables is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    const-string v1, "A Disposable item in the disposables sequence is null"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disposables is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "A Disposable in the disposables array is null"

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    .locals 1

    const-string v0, "disposable is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    .locals 7

    const-string v0, "disposables is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->e:[Ljava/lang/Object;

    iget v3, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x61c88647

    mul-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x10

    xor-int/2addr v4, v5

    and-int/2addr v4, v3

    aget-object v5, v2, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v0, v4, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->a(II[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/2addr v4, v6

    and-int/2addr v4, v3

    aget-object v5, v2, v4

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :goto_1
    monitor-exit p0

    return v6

    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final dispose()V
    .locals 7

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/g;->e:[Ljava/lang/Object;

    array-length v1, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, p0, v4

    instance-of v6, v5, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    if-eqz v6, :cond_4

    :try_start_1
    check-cast v5, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    throw p0

    :cond_6
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;

    invoke-direct {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p0

    :cond_7
    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    return p0
.end method
