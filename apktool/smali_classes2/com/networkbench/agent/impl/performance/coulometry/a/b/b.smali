.class public Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:F

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->c:Ljava/util/List;

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a:J

    iput p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->b:F

    return-void
.end method

.method private d()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a:J

    return-wide v0
.end method

.method public a(F)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->b:F

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->c:Ljava/util/List;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "attributes"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->d()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()D
    .locals 2

    iget p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->b:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->c:Ljava/util/List;

    return-object p0
.end method
