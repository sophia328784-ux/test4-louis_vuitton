.class Lcom/networkbench/agent/impl/harvest/Harvester$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/harvest/Harvester;->sendPluginTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/harvest/Harvester;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester$2;->a:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester$2;->a:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPluginData()Lcom/networkbench/agent/impl/data/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchDataNoCommonData(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPluginData()Lcom/networkbench/agent/impl/data/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/c;->b()V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendPluginTask has an error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendPluginTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
