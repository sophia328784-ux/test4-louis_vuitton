.class public Lcom/batch/android/t0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "MetricManager"

.field private static final g:I = 0xea60

.field private static final h:I = 0x3e8


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/u0/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:J

.field private final e:Lcom/batch/android/e/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/t0/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/batch/android/t0/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/t0/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/batch/android/e/i0;

    invoke-direct {v0}, Lcom/batch/android/e/i0;-><init>()V

    iput-object v0, p0, Lcom/batch/android/t0/a;->e:Lcom/batch/android/e/e;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/t0/a;J)J
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/batch/android/t0/a;->d:J

    return-wide p1
.end method

.method private a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/u0/b<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/t0/a;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/batch/android/t0/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/u0/b;

    invoke-virtual {v2}, Lcom/batch/android/u0/b;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/batch/android/u0/b;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/batch/android/u0/a;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/batch/android/u0/a;

    invoke-virtual {v4}, Lcom/batch/android/u0/b;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/batch/android/u0/a;

    check-cast v3, Lcom/batch/android/u0/a;

    invoke-direct {v5, v3}, Lcom/batch/android/u0/a;-><init>(Lcom/batch/android/u0/a;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/batch/android/u0/a;->j()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/batch/android/u0/c;

    invoke-virtual {v4}, Lcom/batch/android/u0/b;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/batch/android/u0/c;

    check-cast v3, Lcom/batch/android/u0/c;

    invoke-direct {v5, v3}, Lcom/batch/android/u0/c;-><init>(Lcom/batch/android/u0/c;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/batch/android/u0/c;->j()V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/batch/android/u0/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/batch/android/u0/a;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/batch/android/u0/a;

    move-object v4, v2

    check-cast v4, Lcom/batch/android/u0/a;

    invoke-direct {v3, v4}, Lcom/batch/android/u0/a;-><init>(Lcom/batch/android/u0/a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/batch/android/u0/c;

    move-object v4, v2

    check-cast v4, Lcom/batch/android/u0/c;

    invoke-direct {v3, v4}, Lcom/batch/android/u0/c;-><init>(Lcom/batch/android/u0/c;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v2}, Lcom/batch/android/u0/b;->j()V

    goto/16 :goto_0

    :cond_5
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/batch/android/t0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/batch/android/t0/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/batch/android/t0/a;->a()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Lcom/batch/android/b1/e;

    invoke-direct {v1, v0}, Lcom/batch/android/b1/e;-><init>(Ljava/util/Collection;)V

    .line 157
    new-instance v0, Lcom/batch/android/t0/a$a;

    invoke-direct {v0, p0}, Lcom/batch/android/t0/a$a;-><init>(Lcom/batch/android/t0/a;)V

    invoke-static {p1, v1, v0}, Lcom/batch/android/a/m;->a(Landroid/content/Context;Lcom/batch/android/b1/e;Lcom/batch/android/n1/f;)Lcom/batch/android/e/l0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/batch/android/t0/a;Landroid/content/Context;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/batch/android/t0/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/t0/a;)Lcom/batch/android/e/e;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/batch/android/t0/a;->e:Lcom/batch/android/e/e;

    return-object p0
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Lcom/batch/android/t0/a;->e:Lcom/batch/android/e/e;

    invoke-interface {v0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/t0/a;->d:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Lcom/batch/android/t0/a;
    .locals 1

    new-instance v0, Lcom/batch/android/t0/a;

    invoke-direct {v0}, Lcom/batch/android/t0/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/batch/android/u0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/u0/b<",
            "*>;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/batch/android/t0/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/t0/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/batch/android/t0/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/t0/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/batch/android/t0/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/t0/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lw21;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v0, v3}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
