.class public final Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relationships"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0014\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\r\u001a\u00020\u000eH\u00d6\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010H\u00d6\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;",
        "",
        "caseReport",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;",
        "<init>",
        "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)V",
        "getCaseReport",
        "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "CaseReport",
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
.field private final caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caseReport"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;ILjava/lang/Object;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->copy(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;
    .locals 0

    new-instance p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;

    invoke-direct {p0, p1}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;-><init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    iget-object p1, p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCaseReport()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;->caseReport:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Relationships(caseReport="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
