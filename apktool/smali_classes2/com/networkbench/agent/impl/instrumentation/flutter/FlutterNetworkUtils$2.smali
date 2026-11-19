.class Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->startWebRequestTiming(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "requestTag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;->a:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils$2;->a:Ljava/util/Map;

    const-string v2, "startTime"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->resetStartTimeStamp(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/flutter/FlutterNetworkUtils;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, " reportError has an error "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
