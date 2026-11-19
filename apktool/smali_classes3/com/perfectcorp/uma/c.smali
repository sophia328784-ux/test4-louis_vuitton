.class final Lcom/perfectcorp/uma/c;
.super Lcom/perfectcorp/uma/l$a;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/RunnableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private synthetic f:Landroid/content/Context;

.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/p;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/uma/p;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/perfectcorp/uma/c;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/perfectcorp/uma/c;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/uma/c;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perfectcorp/uma/l$a;-><init>(Lcom/perfectcorp/uma/p;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/uma/c;->d:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perfectcorp/uma/c;->e:Ljava/util/concurrent/RunnableFuture;

    iget-object p0, p0, Lcom/perfectcorp/uma/c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/uma/p;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/uma/c;->e:Ljava/util/concurrent/RunnableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "UMA"

    const-string v2, "AsyncInitTask"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/uma/b$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    sget-object v1, Lcom/perfectcorp/uma/p;->x0:Lcom/perfectcorp/uma/q;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/uma/l$a;->a:Lcom/perfectcorp/uma/p;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/uma/p;->w0:Lcom/perfectcorp/uma/p$a;

    return-object p0
.end method

.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/uma/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/uma/c;->h:Ljava/lang/String;

    const-string v2, "UMA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initConnectionQueue appKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", serverURL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/uma/l$a;->a:Lcom/perfectcorp/uma/p;

    invoke-interface {v2, v0, v1}, Lcom/perfectcorp/uma/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/security/ProviderInstaller;

    sget-object v1, Lcom/google/android/gms/security/ProviderInstaller;->a:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    const-string v1, "installIfNeeded"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/uma/b;->b:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object v0, Lcom/perfectcorp/uma/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    sget-object v2, Lcom/perfectcorp/uma/p;->x0:Lcom/perfectcorp/uma/q;

    if-ne v1, v2, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/uma/l$a;->a:Lcom/perfectcorp/uma/p;

    sput-object p0, Lcom/perfectcorp/uma/b;->c:Lcom/perfectcorp/uma/p;

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
