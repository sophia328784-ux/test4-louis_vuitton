.class public Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_LENGTH:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "HarvestDataProcessing"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V
    .locals 1

    invoke-interface {p1}, Lcom/networkbench/agent/impl/session/SpanFormat;->formatInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/session/SpanFormat;->reset()V

    return-void
.end method

.method private static convertMapToJsonArray(Ljava/util/Map;J)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;J)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v5, v4}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/crash/a/c;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendSaveCustomData  convertMapToJsonArray has error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static formatPageData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, "userAction"

    const-string v2, "appStart"

    const-string v3, "page"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pageMetrics"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "\n"

    if-eqz v5, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v3, "appStarts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v2, "userActions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method private static formatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PLUGIN_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\n"

    if-eqz v0, :cond_0

    const-string p1, "task"

    invoke-static {p1, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->ACTION_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "network"

    invoke-static {p1, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->TRANSACTIONSPAN_DATA_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PAGE_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->formatPageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->APPHOTSTART_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "hotStart"

    invoke-static {p1, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private static mergeFetchAllByMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->e()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v2
.end method

.method public static processingBatchData(Lcom/networkbench/agent/impl/harvest/HarvestData;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/c;->a()Lcom/networkbench/agent/impl/data/type/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getAppStartDatas()Lcom/networkbench/agent/impl/data/type/h;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPluginData()Lcom/networkbench/agent/impl/data/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object v2

    const-string v3, "nbs_module_coulometry"

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object v2

    const-string v3, "nbs_module_fps"

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object v2

    const-string v3, "nbs_module_cpu"

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getCustomEvents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNetworkPerfMetrics()Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->formatInfoNoCheck()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNetworkPerfMetrics()Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNetworkPerfMetrics()Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->appendDataAndReset(Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/session/SpanFormat;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    const-string v1, "HarvestDataProcessing"

    const-string v2, "processingBatchData error processing :"

    invoke-static {v1, v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const v1, 0x19000

    if-lt p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/m/a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing$1;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing$1;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processingOldBatchData  : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge p1, v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-static {v5, p0}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->formatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendSaveCustomData(IJ)Ljava/lang/String;
    .locals 3

    int-to-long v0, p0

    cmp-long p0, v0, p1

    const-string v2, ""

    if-lez p0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->c()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->b()I

    move-result p0

    if-gtz p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->mergeFetchAllByMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->f()V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/c;->a()V

    sub-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->convertMapToJsonArray(Ljava/util/Map;J)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Lcom/networkbench/agent/impl/crash/a/b;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/crash/a/b;-><init>(Lcom/networkbench/com/google/gson/JsonArray;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/a/b;->formatInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v2
.end method
