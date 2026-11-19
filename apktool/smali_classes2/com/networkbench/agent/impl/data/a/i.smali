.class public Lcom/networkbench/agent/impl/data/a/i;
.super Lcom/networkbench/agent/impl/data/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/b/a;-><init>()V

    const-string v0, "userActions"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->b:Ljava/lang/String;

    const-string v0, "actions"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->c:Ljava/lang/String;

    const-string v0, "userAction"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/data/a/g;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TingyunSDK_userAction"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/a/g;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x4650

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSEventActions add() has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    return-void
.end method
