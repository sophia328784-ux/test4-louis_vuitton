.class public Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;

    return-void
.end method

.method public static create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public done()V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->b:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    move-object v1, v0

    move-object v0, p0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->a:Ljava/lang/Runnable;

    iget-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/m$a;

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
