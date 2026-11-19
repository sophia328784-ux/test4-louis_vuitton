.class public Lcom/networkbench/agent/impl/data/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/networkbench/agent/impl/data/d/b;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/networkbench/agent/impl/data/d/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/b;->b:Ljava/util/Map;

    new-instance v0, Lcom/networkbench/agent/impl/data/d/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/d/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    return-void
.end method

.method public static declared-synchronized a()Lcom/networkbench/agent/impl/data/d/b;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/data/d/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/data/d/b;->a:Lcom/networkbench/agent/impl/data/d/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/data/d/b;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/data/d/b;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/data/d/b;->a:Lcom/networkbench/agent/impl/data/d/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/data/d/b;->a:Lcom/networkbench/agent/impl/data/d/b;
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


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/d/c;
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/data/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/networkbench/agent/impl/data/d/c;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/networkbench/agent/impl/data/d/c;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/data/d/c;-><init>(Lcom/networkbench/agent/impl/data/d/c;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/d/d;)V
    .locals 1

    .line 23
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/data/d/c;->a(Lcom/networkbench/agent/impl/data/d/d;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/d/c;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/networkbench/agent/impl/data/d/c;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/data/d/d;)V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/data/d/c;->a(Lcom/networkbench/agent/impl/data/d/d;Z)V

    return-void
.end method

.method public c()Lcom/networkbench/agent/impl/data/d/c;
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/data/d/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/b;->c:Lcom/networkbench/agent/impl/data/d/c;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/data/d/c;-><init>(Lcom/networkbench/agent/impl/data/d/c;)V

    return-object v0
.end method
