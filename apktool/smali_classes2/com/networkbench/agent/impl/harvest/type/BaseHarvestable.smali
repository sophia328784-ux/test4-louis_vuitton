.class public Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/type/Harvestable;


# instance fields
.field protected final GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

.field private final type:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable$1;-><init>(Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->type:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    return-void
.end method


# virtual methods
.method public asJson()Lcom/networkbench/com/google/gson/JsonElement;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->type:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJsonPrimitive()Lcom/networkbench/com/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public asJsonPrimitive()Lcom/networkbench/com/google/gson/JsonPrimitive;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()Lcom/networkbench/agent/impl/harvest/type/HarvestableType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->type:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    return-object p0
.end method

.method public notEmpty(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Missing Harvestable field."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public notNull(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Null field in Harvestable object"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public optional(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p1
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
