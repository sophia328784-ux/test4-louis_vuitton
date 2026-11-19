.class public Lcom/networkbench/agent/impl/webview/b/f;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/networkbench/agent/impl/webview/b/b;

.field private d:Lcom/networkbench/agent/impl/webview/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/webview/b/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/b/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/f;->c:Lcom/networkbench/agent/impl/webview/b/b;

    new-instance v0, Lcom/networkbench/agent/impl/webview/b/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/b/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/f;->d:Lcom/networkbench/agent/impl/webview/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/webview/b/f;->d:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/b;->c()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/f;->c:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/b;->c()V

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, "webviewPerfMetrics2"

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

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

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->g(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/webview/b/f;->c:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/webview/b/b;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "pf"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/f;->d:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/b;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "err"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()Lcom/networkbench/agent/impl/webview/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/f;->c:Lcom/networkbench/agent/impl/webview/b/b;

    return-object p0
.end method

.method public c()Lcom/networkbench/agent/impl/webview/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/f;->d:Lcom/networkbench/agent/impl/webview/b/b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:webviewPerfMetrics2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", pf:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/webview/b/f;->c:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/webview/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/f;->d:Lcom/networkbench/agent/impl/webview/b/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
