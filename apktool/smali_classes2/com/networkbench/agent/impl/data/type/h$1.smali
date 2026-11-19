.class Lcom/networkbench/agent/impl/data/type/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/data/type/h;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/data/type/h;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/data/type/h;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AppStartDatas"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/h;->formatInfo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/type/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "upload app launch data immediately when add"

    invoke-static {v0, v3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/b/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TingyunSDK_appStart"

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchDataNoCommonData(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/b/a;->reset()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    iget-object v2, v2, Lcom/networkbench/agent/impl/data/type/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "core params is not init success, skip to send launch data"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/h$1;->a:Lcom/networkbench/agent/impl/data/type/h;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
