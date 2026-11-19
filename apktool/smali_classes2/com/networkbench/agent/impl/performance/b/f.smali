.class public Lcom/networkbench/agent/impl/performance/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Lcom/networkbench/agent/impl/performance/b/f;


# instance fields
.field private volatile a:Z

.field private b:[J

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/networkbench/agent/impl/performance/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J

.field private e:Z

.field private g:[J

.field private h:Landroid/view/Choreographer;

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:Z

.field private l:Lcom/networkbench/agent/impl/b/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/performance/b/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/b/f;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/performance/b/f;->f:Lcom/networkbench/agent/impl/performance/b/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->b:[J

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->d:J

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->e:Z

    const-wide/32 v1, 0xfe502a

    iput-wide v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->j:J

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->k:Z

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/performance/b/f;
    .locals 1

    .line 20
    sget-object v0, Lcom/networkbench/agent/impl/performance/b/f;->f:Lcom/networkbench/agent/impl/performance/b/f;

    return-object v0
.end method

.method private a(J)V
    .locals 0

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/b/f;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/b/f;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    return p0
.end method

.method private b(J)J
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->g:[J

    if-nez p0, :cond_0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    return-wide p0

    .line 30
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_1

    const/4 p1, 0x2

    .line 31
    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    const/4 p1, 0x1

    .line 32
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/b/f;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/b/f;->h()V

    return-void
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/performance/b/f;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/b/f;->i()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->b:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iput-wide v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->d:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->b:[J

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/b/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/b/a/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/b/a/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private i()V
    .locals 11

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->d:J

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/performance/b/f;->e:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/performance/b/f;->b(J)J

    move-result-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/performance/b/a/b;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/performance/b/a/b;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v7

    sub-long v8, v2, v0

    iget-boolean v10, p0, Lcom/networkbench/agent/impl/performance/b/f;->e:Z

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/networkbench/agent/impl/performance/b/a/b;->a(Ljava/lang/String;JZ)V

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/performance/b/a/b;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->e:Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/b/a/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/f;->d()V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/networkbench/agent/impl/performance/b/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/b/f;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/f;->e()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->k:Z

    return p0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "FpsModule"

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must be init in main thread!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "FpsThreadMonitor init error: "

    invoke-static {v2, v1, v0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Lcom/networkbench/agent/impl/performance/b/f$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/performance/b/f$1;-><init>(Lcom/networkbench/agent/impl/performance/b/f;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->l:Lcom/networkbench/agent/impl/b/h$a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/b/h;->b(Lcom/networkbench/agent/impl/b/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->k:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->h:Landroid/view/Choreographer;

    const-string v1, "mFrameInfo"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/networkbench/agent/impl/util/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "frameInfo"

    invoke-static {v0, v1, v3}, Lcom/networkbench/agent/impl/util/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->g:[J

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->h:Landroid/view/Choreographer;

    const-string v1, "mDisplayEventReceiver"

    invoke-static {v0, v1, v3}, Lcom/networkbench/agent/impl/util/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->i:Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FpsThreadMonitor#vsyncReceiver : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->i:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "FpsModule"

    const-string v1, "FpsThreadMonitor#onStart"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->a:Z

    return p0
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f;->l:Lcom/networkbench/agent/impl/b/h$a;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/h;->c(Lcom/networkbench/agent/impl/b/h$a;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "[FpsThreadMonitor#run] inner cost : "

    const-string v1, "FpsModule"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :try_start_0
    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/b/f;->d:J

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/performance/b/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v4, "FpsThreadMonitor"

    invoke-static {v1, v4, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
