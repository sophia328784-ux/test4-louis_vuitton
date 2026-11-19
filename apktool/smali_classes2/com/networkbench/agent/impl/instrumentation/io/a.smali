.class Lcom/networkbench/agent/impl/instrumentation/io/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b()Z
    .locals 2

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;->streamComplete(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->a:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;->streamError(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
