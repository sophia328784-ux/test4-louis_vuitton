.class public Lcom/networkbench/agent/impl/performance/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

.field private d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/performance/b;->b:I

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/performance/b;->b:I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b;->a:Ljava/lang/String;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b;->a:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "resource"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    const-string v1, "metrics"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/performance/b;->b:I

    return p0
.end method

.method public c()Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    return-object p0
.end method

.method public checkData()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->b()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    return-object p0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->b()V

    return-void
.end method
