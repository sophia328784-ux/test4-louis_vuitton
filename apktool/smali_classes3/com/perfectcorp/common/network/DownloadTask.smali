.class public final Lcom/perfectcorp/common/network/DownloadTask;
.super Lcom/perfectcorp/common/network/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/DownloadTask$Key;,
        Lcom/perfectcorp/common/network/DownloadTask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/network/j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field private final c:Lcom/perfectcorp/common/downloader/f;

.field private final d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

.field private volatile e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile f:D

.field private volatile g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/common/network/ProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;)V
    .locals 4

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/network/j;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->h:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->a:Ljava/io/File;

    iget-object v1, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->e:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->b:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v1, Lcom/perfectcorp/common/network/i$a;->a:Lcom/perfectcorp/common/downloader/b;

    new-instance v2, Lcom/perfectcorp/common/downloader/e;

    iget-object v1, v1, Lcom/perfectcorp/common/downloader/b;->a:Lcom/perfectcorp/common/downloader/s;

    invoke-direct {v2, v1}, Lcom/perfectcorp/common/downloader/e;-><init>(Lcom/perfectcorp/common/downloader/s;)V

    invoke-super {p0}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iput-object v1, v2, Lcom/perfectcorp/common/downloader/e;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v1, Lcom/perfectcorp/common/downloader/o;->b:Lcom/perfectcorp/common/downloader/o;

    const-string v3, "priority == null"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v2, Lcom/perfectcorp/common/downloader/e;->e:Lcom/perfectcorp/common/downloader/o;

    iget-object v1, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->a:Ljava/net/URI;

    iput-object v1, v2, Lcom/perfectcorp/common/downloader/e;->b:Ljava/net/URI;

    iput-object v0, v2, Lcom/perfectcorp/common/downloader/e;->c:Ljava/io/File;

    iget v0, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iput v0, v2, Lcom/perfectcorp/common/downloader/e;->g:I

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/common/network/DownloadTask$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/common/network/DownloadTask$1;->a:Lcom/perfectcorp/common/network/DownloadTask;

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, v2, Lcom/perfectcorp/common/downloader/e;->f:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v0, Lcom/perfectcorp/common/downloader/f;

    invoke-direct {v0, v2}, Lcom/perfectcorp/common/downloader/f;-><init>(Lcom/perfectcorp/common/downloader/e;)V

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->c:Lcom/perfectcorp/common/downloader/f;

    iget-object p1, p1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->f:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object p1, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-interface {p1}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;B)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/perfectcorp/common/network/DownloadTask;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    return-object p0
.end method

.method private h()Ljava/io/File;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->c:Lcom/perfectcorp/common/downloader/f;

    invoke-virtual {v0}, Lcom/perfectcorp/common/downloader/f;->a()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->g:Ljava/util/Collection;

    sget-object v1, Lcom/perfectcorp/common/network/i$a;->a:Lcom/perfectcorp/common/downloader/b;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/common/downloader/b;->b(Ljava/util/Collection;)V

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->c:Lcom/perfectcorp/common/downloader/f;

    invoke-virtual {v0}, Lcom/perfectcorp/common/downloader/f;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->f:D

    :goto_1
    iget-wide v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->f:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/perfectcorp/common/network/DownloadTask;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->f:D

    iget-wide v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->f:D

    invoke-super {p0}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/perfectcorp/common/network/DownloadTask;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {v3, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-interface {v0}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->d()V

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->a:Ljava/io/File;
    :try_end_0
    .catch Lcom/perfectcorp/common/network/j$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/perfectcorp/common/network/j$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->e()V

    throw v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p0, v0

    :cond_3
    throw p0

    :goto_4
    iget-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-interface {v1}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->c()V

    iget-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    throw v0

    :goto_5
    iget-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->d:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-interface {v1}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->c()V

    invoke-super {p0}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/common/network/i$a;->a:Lcom/perfectcorp/common/downloader/b;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/common/downloader/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->g:Ljava/util/Collection;

    throw v0
.end method

.method private i()D
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    throw p0

    :catch_1
    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->c:Lcom/perfectcorp/common/downloader/f;

    invoke-virtual {p0}, Lcom/perfectcorp/common/downloader/f;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method private j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/common/network/ProgressCallback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/common/network/DownloadTask;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/common/network/DownloadTask;->h()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final addProgressCallback(Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->a:Ljava/io/File;

    return-object p0
.end method

.method public final getKey()Lcom/perfectcorp/common/network/DownloadTask$Key;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask;->b:Lcom/perfectcorp/common/network/DownloadTask$Key;

    return-object p0
.end method

.method public final getProgress()D
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/common/network/DownloadTask;->f:D

    return-wide v0
.end method
