.class public Lcom/networkbench/agent/impl/harvest/a/a/d;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:D

.field private d:D

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/harvest/DeviceInformation;)Lcom/networkbench/agent/impl/harvest/a/a/d;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->av()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aw()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->b:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->a()D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->c:D

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->b()D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->d:D

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->j:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->T()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(D)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->c:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "ca"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->d:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lg"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manu"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mamo"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ov"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "agv"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->b:I

    return p0
.end method

.method public b(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->d:D

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->e:Ljava/lang/String;

    return-void
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->c:D

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->d:D

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->i:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->j:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->k:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->l:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->m:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/d;->m:Ljava/lang/String;

    return-object p0
.end method
