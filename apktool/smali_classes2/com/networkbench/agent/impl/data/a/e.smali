.class public Lcom/networkbench/agent/impl/data/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/e;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 8

    const-class v0, Lcom/networkbench/agent/impl/data/a/e;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    sget-object v2, Lcom/networkbench/agent/impl/data/a/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/data/a/d;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v3, Lcom/networkbench/agent/impl/data/a/d;->f:Lcom/networkbench/agent/impl/data/a/f;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/data/a/f;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 105
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/networkbench/agent/impl/data/b/a;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 107
    :cond_1
    sget-object v2, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/networkbench/agent/impl/data/a/e;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 108
    sget-object v2, Lcom/networkbench/agent/impl/data/a/e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/data/a/e;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 84
    monitor-exit v0

    return-void

    .line 85
    :cond_0
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 86
    :cond_1
    :try_start_2
    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/a/d;

    .line 87
    iget-object v2, v2, Lcom/networkbench/agent/impl/data/a/d;->f:Lcom/networkbench/agent/impl/data/a/f;

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/data/a/f;->a(Lcom/networkbench/agent/impl/d/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 88
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/data/a/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/a/d;

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/data/a/d;->e:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result v2

    if-lt v1, v2, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/data/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "eventActions size is too large, please check the code"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Lcom/networkbench/agent/impl/data/a/d;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/networkbench/agent/impl/data/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/k/c;->a(Lcom/networkbench/agent/impl/data/a/c;)V

    sget-object v2, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/networkbench/agent/impl/data/a/e;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/a/d;

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/d;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 91
    sget-object p1, Lcom/networkbench/agent/impl/data/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "trace \u8d85\u65f660\u79d2, \u6570\u636e\u6e05\u9664..."

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/networkbench/agent/impl/data/a/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/networkbench/agent/impl/k/c;->b(Lcom/networkbench/agent/impl/data/a/c;)V

    .line 95
    iget-boolean p0, v1, Lcom/networkbench/agent/impl/data/a/d;->e:Z

    if-nez p0, :cond_1

    .line 96
    iget-object p0, v1, Lcom/networkbench/agent/impl/data/a/d;->f:Lcom/networkbench/agent/impl/data/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/data/a/f;->a(J)V

    .line 97
    invoke-virtual {v1, p2}, Lcom/networkbench/agent/impl/data/a/d;->a(Ljava/util/Map;)V

    .line 98
    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/a/d;->a(Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/networkbench/agent/impl/data/a/e;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 100
    iput-boolean p0, v1, Lcom/networkbench/agent/impl/data/a/d;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/a/d;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 111
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/a/d;

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/data/a/d;->e:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
