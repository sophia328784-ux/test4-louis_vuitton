.class public Lcom/networkbench/agent/impl/performance/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/networkbench/agent/impl/performance/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/performance/b/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/b/g;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b/c;->a:Lcom/networkbench/agent/impl/performance/b/g;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b/c;->a:Lcom/networkbench/agent/impl/performance/b/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/b/g;->formatInfo()Ljava/lang/String;

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

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/performance/b/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/performance/b/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/b/a;->c()V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/b/a;->d()V

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/b/c;->a:Lcom/networkbench/agent/impl/performance/b/g;

    invoke-virtual {p2, p1, v0}, Lcom/networkbench/agent/impl/performance/b/g;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/performance/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
