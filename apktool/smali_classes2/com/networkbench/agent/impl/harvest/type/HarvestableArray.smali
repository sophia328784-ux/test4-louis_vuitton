.class public abstract Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.super Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->ARRAY:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;)V

    return-void
.end method


# virtual methods
.method public abstract asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
.end method
