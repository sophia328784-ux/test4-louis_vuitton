.class public Lcom/networkbench/agent/impl/n/g;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    .line 31
    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/networkbench/agent/impl/n/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/n/g;)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/g;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/g;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/networkbench/agent/impl/n/g;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/n/g;->d:Ljava/lang/String;

    return-void
.end method

.method private f()J
    .locals 6

    iget-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const-wide/32 v4, 0xf4240

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/n/g;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/n/g;->d:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curPageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/n/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",timeStampStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/n/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeStampStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/n/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
