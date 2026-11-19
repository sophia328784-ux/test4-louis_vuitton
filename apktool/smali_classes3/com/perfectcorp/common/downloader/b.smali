.class public Lcom/perfectcorp/common/downloader/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/common/downloader/s;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/perfectcorp/common/downloader/s;

    new-instance v0, Lcom/perfectcorp/common/downloader/q;

    invoke-direct {v0}, Lcom/perfectcorp/common/downloader/q;-><init>()V

    invoke-direct {p1, v0, p2}, Lcom/perfectcorp/common/downloader/s;-><init>(Lcom/perfectcorp/common/downloader/q;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/b;->a:Lcom/perfectcorp/common/downloader/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/util/HashSet;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/b;->a:Lcom/perfectcorp/common/downloader/s;

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v0

    :try_start_0
    const-string v1, "key == null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/s;->c:Ljava/util/Set;

    invoke-virtual {v1, p0, p1}, Lcom/perfectcorp/common/downloader/q;->h(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/b;->a:Lcom/perfectcorp/common/downloader/s;

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
