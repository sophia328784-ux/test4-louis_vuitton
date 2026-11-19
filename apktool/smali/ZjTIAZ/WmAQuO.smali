.class public final LZjTIAZ/WmAQuO;
.super Ljava/lang/Object;


# static fields
.field public static b:I = 0x477


# instance fields
.field public volatile a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LZjTIAZ/WmAQuO;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    new-instance v0, LZjTIAZ/WmAQuO$zULaki;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, LZjTIAZ/WmAQuO$wmAQuO;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    sget v0, LZjTIAZ/WmAQuO;->b:I

    const/16 v1, 0x476

    if-gt v0, v1, :cond_3

    :goto_0
    sget v0, LZjTIAZ/WmAQuO;->b:I

    add-int/lit8 v1, v0, 0x34

    const/16 v2, 0x29

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, v0, v0

    mul-int/lit8 v1, v1, 0x61

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/WmAQuO;->b:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, v0, 0x7e

    rem-int/lit8 v1, v1, 0x58

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/WmAQuO;->b:I

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, LZjTIAZ/WmAQuO;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_4
    iget-object v0, p0, LZjTIAZ/WmAQuO;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, LZjTIAZ/WmAQuO$zpBzis;

    invoke-direct {v1, p0, p1}, LZjTIAZ/WmAQuO$zpBzis;-><init>(LZjTIAZ/WmAQuO;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
