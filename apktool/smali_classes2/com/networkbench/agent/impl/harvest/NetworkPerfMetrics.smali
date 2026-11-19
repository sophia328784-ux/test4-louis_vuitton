.class public Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field private actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

.field private cellInfoCollect:Lcom/networkbench/agent/impl/plugin/a/a;

.field private errorDatas:Lcom/networkbench/agent/impl/data/g;

.field private hijackData:Lcom/networkbench/agent/impl/data/h;

.field private socketdatas:Lcom/networkbench/agent/impl/socket/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/harvest/ActionDatas;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    new-instance v0, Lcom/networkbench/agent/impl/data/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/g;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->errorDatas:Lcom/networkbench/agent/impl/data/g;

    new-instance v0, Lcom/networkbench/agent/impl/socket/q;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/q;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->socketdatas:Lcom/networkbench/agent/impl/socket/q;

    new-instance v0, Lcom/networkbench/agent/impl/data/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/h;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->hijackData:Lcom/networkbench/agent/impl/data/h;

    return-void
.end method

.method private isSingleCellInfoShouldCollect()Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCellInfoConfig()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :catchall_0
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, "networkPerfMetrics"

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget v2, Lcom/networkbench/agent/impl/util/r;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "bg"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :try_start_0
    const-string v1, "actions"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "NetworkPerfMetrics asJsonObject error"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->socketdatas:Lcom/networkbench/agent/impl/socket/q;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "sockets"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getSystemInfo()Lcom/networkbench/agent/impl/harvest/SystemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "metrics"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const-string v2, "errs"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->hijackData:Lcom/networkbench/agent/impl/data/h;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "hijack"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->isSingleCellInfoShouldCollect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->cellInfoCollect:Lcom/networkbench/agent/impl/plugin/a/a;

    if-eqz p0, :cond_0

    const-string v1, "cellInfo"

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    return-object v0
.end method

.method public checkData()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->getActionDatas()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->errorDatas:Lcom/networkbench/agent/impl/data/g;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/g;->c()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatInfoNoCheck()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    return-object p0
.end method

.method public getCellInfoCollect()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->cellInfoCollect:Lcom/networkbench/agent/impl/plugin/a/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDataCount()I
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->count()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->errorDatas:Lcom/networkbench/agent/impl/data/g;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/g;->c()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->socketdatas:Lcom/networkbench/agent/impl/socket/q;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/socket/q;->c()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getErrorDatas()Lcom/networkbench/agent/impl/data/g;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->errorDatas:Lcom/networkbench/agent/impl/data/g;

    return-object p0
.end method

.method public getHijackData()Lcom/networkbench/agent/impl/data/h;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->hijackData:Lcom/networkbench/agent/impl/data/h;

    return-object p0
.end method

.method public getSocketdatas()Lcom/networkbench/agent/impl/socket/q;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->socketdatas:Lcom/networkbench/agent/impl/socket/q;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->errorDatas:Lcom/networkbench/agent/impl/data/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/g;->a()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->actionDatas:Lcom/networkbench/agent/impl/harvest/ActionDatas;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->clear()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->socketdatas:Lcom/networkbench/agent/impl/socket/q;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/q;->a()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->hijackData:Lcom/networkbench/agent/impl/data/h;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/h;->a()V

    return-void
.end method

.method public setCellInfoCollect(Lcom/networkbench/agent/impl/plugin/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->cellInfoCollect:Lcom/networkbench/agent/impl/plugin/a/a;

    return-void
.end method
