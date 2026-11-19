.class public final Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;",
        "",
        "relationships",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;",
        "<init>",
        "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)V",
        "getRelationships",
        "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;",
        "type",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;",
        "getType",
        "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Relationships",
        "analyticsagentsession_release"
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
.field private final relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relationships"
    .end annotation
.end field

.field private final type:Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    sget-object p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;->AnalyticsSessions:Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->type:Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;ILjava/lang/Object;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->copy(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;

    invoke-direct {p0, p1}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;-><init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    iget-object p1, p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRelationships()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    return-object p0
.end method

.method public final getType()Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->type:Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    invoke-virtual {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;->relationships:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(relationships="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
