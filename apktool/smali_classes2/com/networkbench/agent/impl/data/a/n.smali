.class public Lcom/networkbench/agent/impl/data/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/networkbench/agent/impl/data/a/m;

.field public static b:Lcom/networkbench/agent/impl/data/a/m;

.field public static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/data/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/n;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(IJ)Lcom/networkbench/agent/impl/data/a/m;
    .locals 5

    const-string v0, "action : "

    const-class v1, Lcom/networkbench/agent/impl/data/a/n;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 137
    monitor-exit v1

    return-object v2

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/data/a/m;->a(J)V

    .line 139
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 140
    monitor-exit v1

    return-object v2

    .line 141
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/m;->c()J

    move-result-wide p1

    const-wide/16 v3, 0x4650

    cmp-long p1, p1, v3

    if-gtz p1, :cond_2

    .line 143
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "action add to nbs event actions"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/data/b/a;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/m;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 146
    sput-object v2, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    .line 147
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 148
    :cond_3
    const-string p1, ""

    sput-object p1, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    monitor-exit v1

    return-object p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(IJLjava/lang/String;Ljava/util/Map;)Lcom/networkbench/agent/impl/data/a/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/networkbench/agent/impl/data/a/m;"
        }
    .end annotation

    const-class v0, Lcom/networkbench/agent/impl/data/a/n;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 130
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    .line 131
    :try_start_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 132
    iget-object v2, v1, Lcom/networkbench/agent/impl/data/a/m;->g:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {v1, p3}, Lcom/networkbench/agent/impl/data/a/m;->a(Ljava/lang/String;)V

    .line 134
    invoke-static {v1}, Lcom/networkbench/agent/impl/k/c;->b(Lcom/networkbench/agent/impl/data/a/c;)V

    .line 135
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/data/a/n;->a(IJ)Lcom/networkbench/agent/impl/data/a/m;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 4

    .line 119
    sget-object v0, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/data/a/n;->b:Lcom/networkbench/agent/impl/data/a/m;

    if-eqz v0, :cond_3

    .line 120
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/d/b/a;->c:J

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/d/b/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/a;->d:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    if-nez v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/data/a/n;->b:Lcom/networkbench/agent/impl/data/a/m;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/a/m;->i:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v1, Lcom/networkbench/agent/impl/data/a/m;->i:Ljava/lang/String;

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/a/a/b;->a(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/a/m;->h:Lcom/networkbench/agent/impl/data/a/o;

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/a/o;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    return-void

    .line 127
    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/data/a/n;->b:Lcom/networkbench/agent/impl/data/a/m;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/a/m;->h:Lcom/networkbench/agent/impl/data/a/o;

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/a/o;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_3
    return-void
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Ljava/lang/String;ZIJI)V
    .locals 3

    const-string v0, "on"

    const-class v1, Lcom/networkbench/agent/impl/data/a/n;

    monitor-enter v1

    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1, p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sput-object p1, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p1, p3, p2}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/networkbench/agent/impl/data/a/a;)V

    new-instance p0, Lcom/networkbench/agent/impl/data/a/m;

    const/4 p2, -0x1

    invoke-direct {p0, p4, p5, p2, p1}, Lcom/networkbench/agent/impl/data/a/m;-><init>(JILjava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result p2

    if-lt p1, p2, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/a/n;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "NBSWebEventActions size is too large, please check the code"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    if-nez p1, :cond_2

    sput-object p0, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p1, p0}, Lcom/networkbench/agent/impl/data/a/m;->a(Lcom/networkbench/agent/impl/data/a/m;Lcom/networkbench/agent/impl/data/a/m;)V

    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->a:Lcom/networkbench/agent/impl/data/a/m;

    iget-wide p1, p1, Lcom/networkbench/agent/impl/data/a/c;->a:J

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/data/a/m;->b(J)V

    sget-object p1, Lcom/networkbench/agent/impl/data/a/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/networkbench/agent/impl/k/c;->a(Lcom/networkbench/agent/impl/data/a/c;)V

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_2
    monitor-exit v1

    return-void
.end method
