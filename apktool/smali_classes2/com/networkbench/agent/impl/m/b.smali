.class public Lcom/networkbench/agent/impl/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/m/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/networkbench/agent/impl/m/a;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/m/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BROWSER_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/m/b;->a:Lcom/networkbench/agent/impl/m/a;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/m/b;
    .locals 1

    .line 21
    sget-object v0, Lcom/networkbench/agent/impl/m/b$a;->a:Lcom/networkbench/agent/impl/m/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/m/b;->a:Lcom/networkbench/agent/impl/m/a;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
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

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/m/b;->a:Lcom/networkbench/agent/impl/m/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
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

.method public declared-synchronized b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/m/b;->a:Lcom/networkbench/agent/impl/m/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/m/a;->a()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
