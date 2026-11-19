.class public Lcom/networkbench/agent/impl/plugin/f/a;
.super Lcom/networkbench/agent/impl/plugin/f/i;
.source "SourceFile"


# instance fields
.field a:Z

.field private g:Lcom/networkbench/agent/impl/b/k;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/k;Z)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->f:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/i;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/plugin/f/a;->a:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/a;->g:Lcom/networkbench/agent/impl/b/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/h;

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/f/a;->g:Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/b/k;->a()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/f/f;->a(Lcom/networkbench/agent/impl/plugin/h;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/f/a;->g:Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/a;->g:Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TingyunSDK_anr"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
