.class Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->stopWebRequestTiming(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 7

    const-string v0, "endTime"

    const-string v1, "responseCode"

    const-string v2, "ip"

    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "requestTag"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->c:Ljava/util/Map;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUUid(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->d:Ljava/util/Map;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->d:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->b:Ljava/util/Map;

    invoke-static {v5, v4}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->configCrossApplicationInfo(Ljava/util/Map;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    const-string v6, "dns"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    :cond_4
    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-nez v5, :cond_5

    move-object v2, v6

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$1;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-virtual {v4, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endWithEndTimeStamp(J)Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v6, p0, v6}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_8
    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v6}, Lcom/networkbench/agent/impl/d/b/c;->a(Ljava/lang/String;)V

    :cond_9
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    const-string v0, " reportError has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
