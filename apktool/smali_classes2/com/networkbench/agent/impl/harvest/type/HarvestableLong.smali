.class public Lcom/networkbench/agent/impl/harvest/type/HarvestableLong;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableValue;
.source "SourceFile"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableValue;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableLong;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/type/HarvestableLong;->value:J

    return-void
.end method


# virtual methods
.method public asJsonPrimitive()Lcom/networkbench/com/google/gson/JsonPrimitive;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/type/HarvestableLong;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
