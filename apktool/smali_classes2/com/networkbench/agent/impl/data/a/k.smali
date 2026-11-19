.class public Lcom/networkbench/agent/impl/data/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/k;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 9

    const-class v0, Lcom/networkbench/agent/impl/data/a/k;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/data/a/j;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/data/a/j;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x4650

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    sget-object v5, Lcom/networkbench/agent/impl/data/a/k;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v6, "action add to nbs event actions"

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v4, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/data/a/o;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/networkbench/agent/impl/data/b/a;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/data/a/k;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/d/b/a;->c:J

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/d/b/a;->d:Ljava/lang/String;

    .line 132
    sget-object v1, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/a/j;

    .line 133
    iget-object v2, v2, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/data/a/o;->a(Lcom/networkbench/agent/impl/d/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 134
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "custom#"

    const-class v1, Lcom/networkbench/agent/impl/data/a/k;

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 118
    monitor-exit v1

    return-void

    .line 119
    :cond_0
    :try_start_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/k;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/a/j;

    .line 123
    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 124
    sget-object p0, Lcom/networkbench/agent/impl/data/a/k;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "eventActions size is too large, please check the code"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit v1

    return-void

    .line 126
    :cond_3
    :try_start_2
    new-instance v0, Lcom/networkbench/agent/impl/data/a/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/networkbench/agent/impl/data/a/j;-><init>(JILjava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/networkbench/agent/impl/k/c;->a(Lcom/networkbench/agent/impl/data/a/c;)V

    .line 128
    sget-object v2, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :catchall_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/a/j;
    .locals 5

    const-string v0, "custom#"

    const-class v1, Lcom/networkbench/agent/impl/data/a/k;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/data/a/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/a/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    monitor-exit v1

    return-object v2

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/data/a/j;->a(J)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/k/c;->b(Lcom/networkbench/agent/impl/data/a/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    monitor-exit v1

    return-object v2
.end method
