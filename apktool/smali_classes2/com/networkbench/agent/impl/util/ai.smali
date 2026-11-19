.class public Lcom/networkbench/agent/impl/util/ai;
.super Lcom/networkbench/agent/impl/harvest/HarvestAdapter;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:I = 0x0

.field private static final g:Ljava/lang/String; = "TasTaskQueuek"

.field private static final h:J = 0x3e8L

.field private static final i:I = 0x7d0

.field private static j:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final k:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/harvest/ActionData;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Lcom/networkbench/agent/impl/c/e;

.field private static final o:Ljava/lang/Runnable;

.field private static p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-TaskQueue"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->e:Ljava/util/List;

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->n:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/util/ai$1;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/ai$1;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->o:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput v0, Lcom/networkbench/agent/impl/util/ai;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestAdapter;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/socket/p;->l()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/l;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/socket/p;->d(Z)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->g()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static a()V
    .locals 3

    .line 62
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/l;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/data/l;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_0

    .line 57
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .line 66
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_0

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/l;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/l;->g()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->g()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static b()V
    .locals 2

    .line 52
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 2

    .line 50
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static c()V
    .locals 8

    .line 36
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->n()V

    .line 39
    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/networkbench/agent/impl/util/ai;->o:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->p:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/socket/p;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/socket/p;->d(Z)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->g()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static d()V
    .locals 2

    .line 77
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->p:Ljava/util/concurrent/Future;

    .line 80
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public static e()I
    .locals 1

    .line 56
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/l;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/l;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->p()V

    return-void
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->o()V

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->q()V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->l()V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->m()V

    return-void
.end method

.method private static l()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/a/b;->b()V

    return-void
.end method

.method private static m()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->g()V

    return-void
.end method

.method private static n()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-TaskQueue"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/ai;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static o()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, v2

    check-cast v5, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getEndTime()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x2710

    cmp-long v3, v3, v6

    if-lez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/a/a/b;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    new-instance v2, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {v2, v5}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/networkbench/agent/impl/util/ai;->n:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "error queueOkNetwork object is not NBSTransactionState"

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method private static p()V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/networkbench/agent/impl/d/g;->a(Z)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_d

    :try_start_0
    invoke-virtual {v0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/networkbench/agent/impl/d/b/a;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/networkbench/agent/impl/d/b/a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/d/g;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/networkbench/agent/impl/d/b/c;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/d/g;->a(Lcom/networkbench/agent/impl/d/b/c;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultType:Ljava/lang/String;

    const-string v2, "ajax_metric"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultData:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultType:Ljava/lang/String;

    const-string v2, "pageInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultData:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/m;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultType:Ljava/lang/String;

    const-string v2, "browserData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSJavaScriptBridge$NBSWebViewResult;->resultData:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/m;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/networkbench/agent/impl/webview/l;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/networkbench/agent/impl/webview/l;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/l;->c()V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/networkbench/agent/impl/b/k;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/k;->h()V

    move-object v1, v0

    check-cast v1, Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/k;->g()Z

    move-result v2

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {}, Lcom/networkbench/agent/impl/b/m;->a()Lcom/networkbench/agent/impl/b/m;

    move-result-object v1

    check-cast v0, Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/b/m;->a(Lcom/networkbench/agent/impl/b/k;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->n:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "error block stackTrace is empty, please check"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    instance-of v1, v0, Lcom/networkbench/agent/impl/plugin/h;

    if-eqz v1, :cond_b

    new-instance v1, Lcom/networkbench/agent/impl/data/c/b;

    check-cast v0, Lcom/networkbench/agent/impl/plugin/h;

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/data/c/b;-><init>(Lcom/networkbench/agent/impl/plugin/h;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPluginData()Lcom/networkbench/agent/impl/data/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/data/c/c;->a(Lcom/networkbench/agent/impl/data/c/b;)V

    goto/16 :goto_0

    :cond_b
    instance-of v1, v0, Lcom/networkbench/agent/impl/harvest/ActionData;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v0, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    instance-of v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    check-cast v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->n:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "add bitmapBean to NBSBitmapBeansControl bitmapBeans"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->n:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error happened in TaskQueue dequeue e:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/networkbench/agent/impl/d/g;->c()V

    invoke-static {v2}, Lcom/networkbench/agent/impl/d/g;->a(Z)V

    :goto_1
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransactionForScene(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/j;->a()V

    return-void
.end method

.method private static q()V
    .locals 10

    sget v0, Lcom/networkbench/agent/impl/util/ai;->f:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->newend()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/a/a/b;->c(Z)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v3, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {v3, v4}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->newend()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/a/a/b;->c(Z)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v3, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_4
    new-instance v3, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {v3, v4}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/networkbench/agent/impl/util/ai;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    const/4 v0, 0x0

    sput v0, Lcom/networkbench/agent/impl/util/ai;->f:I

    :cond_7
    sget v0, Lcom/networkbench/agent/impl/util/ai;->f:I

    add-int/2addr v0, v2

    sput v0, Lcom/networkbench/agent/impl/util/ai;->f:I

    return-void
.end method
