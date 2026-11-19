.class public Lcom/networkbench/agent/impl/d/a/b;
.super Lcom/networkbench/agent/impl/d/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->b:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/a/d;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/d/a;)V
    .locals 1

    new-instance p0, Lcom/networkbench/agent/impl/data/f;

    check-cast p1, Lcom/networkbench/agent/impl/d/b/b;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/f;-><init>(Lcom/networkbench/agent/impl/d/b/b;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpErrorForScene(Lcom/networkbench/agent/impl/data/f;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getErrorDatas()Lcom/networkbench/agent/impl/data/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/g;->a(Lcom/networkbench/agent/impl/data/f;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TingyunSDK_network"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addNetwork error debuglog has error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onHarvestFilter()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/g;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->k()I

    move-result v3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/util/v;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->k()I

    move-result v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " NBSNetworkUtil.isError :  \u6b64\u6761\u6570\u636e\u4e0d\u4e3aerror \u7279\u6b64\u5220\u9664 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/data/g;->b(Lcom/networkbench/agent/impl/data/f;)V

    goto :goto_1

    :cond_4
    return-void
.end method
