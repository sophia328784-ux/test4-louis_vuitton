.class Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$2;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;->fromMapString(Ljava/util/Map;)Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
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

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject$2;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/networkbench/com/google/gson/JsonObject;

    return-object p0
.end method
