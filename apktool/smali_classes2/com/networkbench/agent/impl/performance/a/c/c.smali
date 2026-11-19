.class public Lcom/networkbench/agent/impl/performance/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->f:Ljava/lang/String;

    return-void
.end method

.method private b()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v4, "name"

    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, p0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p0, "attributes"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unit"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c/c;->b()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p0, "dataPoints"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method
