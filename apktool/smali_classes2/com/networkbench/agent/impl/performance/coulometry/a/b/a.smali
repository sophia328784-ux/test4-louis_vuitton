.class public Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;->b:Ljava/lang/String;

    return-void
.end method
