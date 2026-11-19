.class public Lcom/networkbench/agent/impl/asyncaction/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;


# static fields
.field private static final c:Ljava/lang/String; = "TraceEngineManager"

.field private static final d:I = 0x32

.field private static volatile e:Lcom/networkbench/agent/impl/asyncaction/r;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/e;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/networkbench/agent/impl/asyncaction/q;

.field private f:J

.field private g:Lcom/networkbench/agent/impl/data/a/a;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/r;-><init>(Lcom/networkbench/agent/impl/asyncaction/q;)V

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    sput-object p0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->f:J

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/e;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/agent/impl/asyncaction/e;

    .line 76
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/asyncaction/e;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lcom/networkbench/agent/impl/asyncaction/r;
    .locals 2

    .line 29
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/networkbench/agent/impl/asyncaction/r;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/r;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/agent/impl/asyncaction/e;

    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c()Lcom/networkbench/agent/impl/asyncaction/r;
    .locals 1

    .line 28
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    return-object v0
.end method

.method private c(Lcom/networkbench/agent/impl/asyncaction/e;)Z
    .locals 2

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p0

    iget-wide p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x30d40

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/r;->j()V

    return-void
.end method

.method private i()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private j()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/e;

    invoke-interface {v2}, Lcom/networkbench/agent/impl/asyncaction/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/asyncaction/r;->c(Lcom/networkbench/agent/impl/asyncaction/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/asyncaction/e;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/q;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/asyncaction/e;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    const-string p0, "TraceEngineManager"

    const-string p1, "current traceMetrics is overflow, skip"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/asyncaction/e;J)V
    .locals 3

    .line 67
    const-string v0, "TraceEngineManager"

    if-nez p1, :cond_0

    .line 68
    const-string p0, "traceMetrics is null, please check"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endSegment traceMetrics.hashCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1, p2, p3}, Lcom/networkbench/agent/impl/asyncaction/e;->a(J)V

    .line 71
    iget-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/asyncaction/q;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    const-string p1, "endSegment success"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->i:Z

    const/4 p0, 0x0

    .line 74
    sput-object p0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    :cond_1
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/a/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->g:Lcom/networkbench/agent/impl/data/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 78
    :cond_0
    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    const-string v0, "<_TY_C_API>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public addNetworkToTraces(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "TraceEngineManager"

    const-string p1, "addNetworkToTraces error currentUnit == null"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->complete()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/asyncaction/e;

    iget-object v1, p2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2, p1}, Lcom/networkbench/agent/impl/asyncaction/e;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/asyncaction/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d()Lcom/networkbench/agent/impl/asyncaction/q;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    return-object p0
.end method

.method public e()V
    .locals 5

    const-string v0, "traceEngineManager reset data"

    const-string v1, "TraceEngineManager"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/e;

    invoke-interface {v2}, Lcom/networkbench/agent/impl/asyncaction/e;->c()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not complete trace metrics is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/e;->a(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->i:Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->b:Lcom/networkbench/agent/impl/asyncaction/q;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/q;->h()V

    const/4 p0, 0x0

    sput-object p0, Lcom/networkbench/agent/impl/asyncaction/r;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    return-void
.end method

.method public enterMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "TraceEngineManager"

    const-string p1, "new unit is null"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/r;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->b()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v1

    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/r$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/r$1;-><init>(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    return-void
.end method

.method public exitMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 4

    const-string v0, "TraceEngineManager"

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "current trace is null"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->complete()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/r;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->b()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v2

    new-instance v3, Lcom/networkbench/agent/impl/asyncaction/r$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/r$2;-><init>(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string p1, "error exitMethod"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public exitMethodCustom(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 3

    const-string v0, "TraceEngineManager"

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->complete()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->a:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/asyncaction/e;

    iget-object v1, p2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exitMethodCustom traceMetrics addCompletedTrace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hashCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/asyncaction/e;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "drop current unit from context"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p0, "custom trace name is wrong"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->i:Z

    return p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->f:J

    return-wide v0
.end method

.method public h()Lcom/networkbench/agent/impl/data/a/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r;->g:Lcom/networkbench/agent/impl/data/a/a;

    return-object p0
.end method
