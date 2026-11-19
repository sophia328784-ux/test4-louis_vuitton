.class public Lcom/networkbench/agent/impl/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "ANR.NBSStackService"


# instance fields
.field a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/Thread;

.field private g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:I


# direct methods
.method public constructor <init>(ILjava/lang/Thread;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/networkbench/agent/impl/b/a/a;->c:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/b/a/a;->i:Z

    iput p3, p0, Lcom/networkbench/agent/impl/b/a/a;->j:I

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/a/a;->e()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/b/a/a;->f:Ljava/lang/Thread;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "interval ==0 , stop running!!!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/b/a/a;)Ljava/lang/Thread;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a;->f:Ljava/lang/Thread;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/b/a/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/a/a;->i:Z

    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->h()I

    move-result p1

    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->j:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/b/a/a;->a(II)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "interval:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ANR.NBSStackService"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(II)V
    .locals 4

    .line 72
    rem-int v0, p1, p2

    if-nez v0, :cond_0

    .line 73
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/Double;

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance p1, Ljava/lang/Double;

    int-to-double v2, p2

    invoke-direct {p1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/b/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/b/a/a;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    return p0
.end method

.method private e()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/b/a/a;->a(I)V

    .line 77
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/a/a;->e()V

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/a/a;->d()V

    .line 80
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/networkbench/agent/impl/b/a/a$1;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/b/a/a$1;-><init>(Lcom/networkbench/agent/impl/b/a/a;)V

    iget v0, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->a:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/b/a/b;

    iget v4, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSStackService{MAX_TIME=10000, isRunning="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/b/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/b/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a;->f:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stackTraceQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
