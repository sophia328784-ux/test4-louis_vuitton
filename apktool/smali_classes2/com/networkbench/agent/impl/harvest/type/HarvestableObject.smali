.class public abstract Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.super Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;)V

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static fromMapString(Ljava/util/Map;)Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$2;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$2;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public abstract asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
.end method
