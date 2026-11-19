.class public final Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/AgentInfoRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001cB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0014\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aH\u00d6\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;",
        "",
        "id",
        "",
        "type",
        "doNotOverrideAgentInfo",
        "",
        "attributes",
        "Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)V",
        "getId",
        "()Ljava/lang/String;",
        "getType",
        "getDoNotOverrideAgentInfo",
        "()Z",
        "getAttributes",
        "()Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Attributes",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation
.end field

.field private final doNotOverrideAgentInfo:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doNotOverrideAgentInfo"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    iput-object p4, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;ILjava/lang/Object;)Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->copy(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    return p0
.end method

.method public final component4()Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;

    iget-object v1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    iget-boolean v3, p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    iget-object p1, p1, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAttributes()Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    return-object p0
.end method

.method public final getDoNotOverrideAgentInfo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->type:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->doNotOverrideAgentInfo:Z

    iget-object p0, p0, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;->attributes:Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    const-string v3, ", type="

    const-string v4, ", doNotOverrideAgentInfo="

    const-string v5, "Data(id="

    invoke-static {v5, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
