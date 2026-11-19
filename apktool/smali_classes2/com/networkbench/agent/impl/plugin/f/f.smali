.class public Lcom/networkbench/agent/impl/plugin/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/plugin/h;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->c:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p0, "plugin"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getTaskDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "pluginVer"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "createUnknownData : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    return-object v0
.end method
