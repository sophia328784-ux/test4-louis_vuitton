.class public Lcom/networkbench/agent/impl/harvest/a/a/a;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->b:I

    iput-object p3, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->d:F

    iput p5, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->e:F

    iput-object p6, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->g:Ljava/lang/String;

    iput p8, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->h:I

    iput-object p9, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->n:Ljava/lang/String;

    iput-object p15, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->d:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->b:I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->av()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aw()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->b:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->au()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->a()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->d:F

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->b()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->e:F

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->T()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->h:I

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->m:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->n:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->o:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getCpuArch()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->getCpuModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->r:Ljava/lang/String;

    sget-object p1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->s:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "carrier"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connect_type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "network_type"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "device_text"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer_model"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_version"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "agent_version"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel_name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpu_model"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpu_arch"

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "process_name"

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->b:I

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->e:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public checkData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->d:F

    return p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->e:F

    return p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/a/a/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->h:I

    return p0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->m:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
