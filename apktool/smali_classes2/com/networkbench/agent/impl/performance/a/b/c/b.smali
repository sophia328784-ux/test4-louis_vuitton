.class public Lcom/networkbench/agent/impl/performance/a/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/a/b/c/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/networkbench/agent/impl/performance/a/b/c/b;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/performance/a/b/c/a;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/performance/a/b/c/a;",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/networkbench/agent/impl/util/c/d;

    const-string v2, "Tingyun-CpuTask"

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a()Lcom/networkbench/agent/impl/performance/a/b/c/b;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/performance/a/b/c/b;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a:Lcom/networkbench/agent/impl/performance/a/b/c/b;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/networkbench/agent/impl/performance/a/b/c/b;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a:Lcom/networkbench/agent/impl/performance/a/b/c/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a:Lcom/networkbench/agent/impl/performance/a/b/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;-><init>(Lcom/networkbench/agent/impl/performance/a/b/c/b;Lcom/networkbench/agent/impl/performance/a/b/c/a;Lcom/networkbench/agent/impl/performance/a/b/c/b$1;)V

    iget-boolean v0, p1, Lcom/networkbench/agent/impl/performance/a/b/c/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_1

    :try_start_1
    iget-wide v2, p1, Lcom/networkbench/agent/impl/performance/a/b/c/a;->c:J

    iget-wide v4, p1, Lcom/networkbench/agent/impl/performance/a/b/c/a;->e:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/networkbench/agent/impl/performance/a/b/c/a;->c:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public final b(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V
    .locals 3

    const-string v0, "CpuTaskManager cancelTask success."

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/a/b/c/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CpuTaskManager cancelTask has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
