.class public Lcom/networkbench/agent/impl/performance/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/f/d;


# static fields
.field public static final a:Ljava/lang/String; = "FpsModule"

.field private static c:Lcom/networkbench/agent/impl/performance/b/d;


# instance fields
.field volatile b:Lcom/networkbench/agent/impl/performance/b/c;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lcom/networkbench/agent/impl/performance/b/a/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "FpsModuleService"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/performance/b/d$1;-><init>(Lcom/networkbench/agent/impl/performance/b/d;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->f:Lcom/networkbench/agent/impl/performance/b/a/b;

    new-instance v0, Lcom/networkbench/agent/impl/performance/b/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/b/c;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->b:Lcom/networkbench/agent/impl/performance/b/c;

    return-void
.end method

.method public static declared-synchronized a()Lcom/networkbench/agent/impl/performance/b/d;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/performance/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/b/d;->c:Lcom/networkbench/agent/impl/performance/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/performance/b/d;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/b/d;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/performance/b/d;->c:Lcom/networkbench/agent/impl/performance/b/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/b/d;->c:Lcom/networkbench/agent/impl/performance/b/d;
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

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/b/d;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/b/d;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    const-string v0, "FpsModule"

    :try_start_0
    const-string v1, "FpsModuleWrapperinitModule"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/f;->a()Lcom/networkbench/agent/impl/performance/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/b/f;->c()V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/f;->a()Lcom/networkbench/agent/impl/performance/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b/d;->f:Lcom/networkbench/agent/impl/performance/b/a/b;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/performance/b/f;->a(Lcom/networkbench/agent/impl/performance/b/a/b;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FpsModuleWrapperinitModule error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->b:Lcom/networkbench/agent/impl/performance/b/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/performance/b/c;->a(Ljava/lang/String;Ljava/util/HashMap;J)V

    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/performance/b/a/b;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->f:Lcom/networkbench/agent/impl/performance/b/a/b;

    return-object p0
.end method

.method public getModuleData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->b:Lcom/networkbench/agent/impl/performance/b/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public harvestRestart()V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/networkbench/agent/impl/performance/b/d;->initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V

    return-void
.end method

.method public harvestStop()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/f;->a()Lcom/networkbench/agent/impl/performance/b/f;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d;->f:Lcom/networkbench/agent/impl/performance/b/a/b;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/performance/b/f;->b(Lcom/networkbench/agent/impl/performance/b/a/b;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/f;->a()Lcom/networkbench/agent/impl/performance/b/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/f;->g()V

    :cond_0
    return-void
.end method

.method public initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/b/d;->c()V

    return-void

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/networkbench/agent/impl/performance/b/d$2;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/performance/b/d$2;-><init>(Lcom/networkbench/agent/impl/performance/b/d;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
