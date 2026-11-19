.class public final Lcom/perfectcorp/common/downloader/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/downloader/f$b;,
        Lcom/perfectcorp/common/downloader/f$c;,
        Lcom/perfectcorp/common/downloader/f$d;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final n:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:I

.field public final b:Lcom/perfectcorp/common/downloader/s;

.field public final c:Ljava/net/URI;

.field public final d:Ljava/io/File;

.field public final e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public final f:Lcom/perfectcorp/common/downloader/o;

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final h:I

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:I

.field public l:Lcom/perfectcorp/common/downloader/p$f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/downloader/f;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "AttemptDownloadExecutor"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v1, Lcom/perfectcorp/common/downloader/f;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/common/downloader/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/downloader/f;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/common/downloader/f;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/common/downloader/f;->k:I

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->a:Lcom/perfectcorp/common/downloader/s;

    const-string v1, "executor == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->b:Ljava/net/URI;

    const-string v1, "downloadUri == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->c:Ljava/net/URI;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->c:Ljava/io/File;

    const-string v1, "downloadTarget == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->d:Ljava/io/File;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->e:Lcom/perfectcorp/common/downloader/o;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->f:Lcom/perfectcorp/common/downloader/o;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/e;->f:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f;->g:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget p1, p1, Lcom/perfectcorp/common/downloader/e;->g:I

    iput p1, p0, Lcom/perfectcorp/common/downloader/f;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;
    .locals 10

    iget v0, p0, Lcom/perfectcorp/common/downloader/f;->a:I

    const-string v1, "MultiPartTaskManager"

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/f;->c:Ljava/net/URI;

    iget v3, p0, Lcom/perfectcorp/common/downloader/f;->k:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcom/perfectcorp/common/downloader/f;->k:I

    new-instance v4, Lcom/perfectcorp/common/downloader/p$f;

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/f;->d:Ljava/io/File;

    invoke-direct {v4, v2, v5}, Lcom/perfectcorp/common/downloader/p$f;-><init>(Ljava/net/URI;Ljava/io/File;)V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p0

    :goto_0
    iput-object v5, v4, Lcom/perfectcorp/common/downloader/p$f;->c:Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/f;->f:Lcom/perfectcorp/common/downloader/o;

    const-string v6, "priority == null"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v5, v4, Lcom/perfectcorp/common/downloader/p$f;->d:Lcom/perfectcorp/common/downloader/o;

    iget v5, p0, Lcom/perfectcorp/common/downloader/f;->h:I

    iput v5, v4, Lcom/perfectcorp/common/downloader/p$f;->e:I

    iput-object v4, p0, Lcom/perfectcorp/common/downloader/f;->l:Lcom/perfectcorp/common/downloader/p$f;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[start#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] builder downloadUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "[addDownloadTasksWithoutKnownSize#"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] start"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/common/downloader/j;

    iget-object v7, p0, Lcom/perfectcorp/common/downloader/f;->l:Lcom/perfectcorp/common/downloader/p$f;

    const/4 v8, 0x2

    invoke-direct {v2, p0, v7, v8}, Lcom/perfectcorp/common/downloader/j;-><init>(Lcom/perfectcorp/common/downloader/f;Lcom/perfectcorp/common/downloader/p$f;I)V

    iget-object v7, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object v7, v7, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object v8, v7, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/perfectcorp/common/downloader/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v7, Lcom/perfectcorp/common/downloader/g;

    invoke-direct {v7, p0, v3}, Lcom/perfectcorp/common/downloader/g;-><init>(Lcom/perfectcorp/common/downloader/f;I)V

    sget-object v8, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, v7, v8}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    const-string v7, "[executeDownloadTask#"

    const-string v9, "] task count:"

    invoke-static {v0, v7, v9}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/downloader/f;->b(Ljava/util/List;Z)V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->d(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/common/downloader/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/common/downloader/f$c;-><init>(Lcom/perfectcorp/common/downloader/f;Ljava/util/concurrent/Future;B)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lcom/perfectcorp/common/downloader/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/perfectcorp/common/downloader/l;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    iput-object v0, v2, Lcom/perfectcorp/common/downloader/l;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1, v2, v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/perfectcorp/common/downloader/m;

    invoke-direct {v0, p0, v5, v6}, Lcom/perfectcorp/common/downloader/m;-><init>(Lcom/perfectcorp/common/downloader/f;J)V

    invoke-static {v1, v0, v8}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    const-string v0, "current status is "

    iget p0, p0, Lcom/perfectcorp/common/downloader/f;->k:I

    invoke-static {p0, v0}, Lr81;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 3

    const-string v0, "MultiPartTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[submitToExecutor#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/perfectcorp/common/downloader/f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] task count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object v0, v0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/common/downloader/p;

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/perfectcorp/common/downloader/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object p2, p0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/s;->c:Ljava/util/Set;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v1, Lcom/perfectcorp/common/downloader/q;->d:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq p1, v2, :cond_1

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_1
    :try_start_4
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v1, p1, p0}, Lcom/perfectcorp/common/downloader/q;->l(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Iterable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_2
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :goto_3
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_2
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final c()D
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/common/downloader/f;->b:Lcom/perfectcorp/common/downloader/s;

    iget-object v0, v0, Lcom/perfectcorp/common/downloader/s;->b:Lcom/perfectcorp/common/downloader/q;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/common/downloader/p;

    invoke-virtual {v4}, Lcom/perfectcorp/common/downloader/p;->f()D

    move-result-wide v4

    add-double/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
