.class public Lcom/networkbench/agent/impl/m/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getIsSendState()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "NBSDataRunnble run..."

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getIsSendState()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->saveHttpData()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->saveReplayData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getIsSendState()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p0, :cond_1

    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/f;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object p0

    goto :goto_0

    :catchall_1
    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object p0

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/n/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSDataRunnble run has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
