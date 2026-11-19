.class public final Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;
.super Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsentDeclined"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;",
        "name",
        "",
        "userRole",
        "performedAt",
        "consentId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getUserRole",
        "getPerformedAt",
        "getConsentId",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final consentId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final performedAt:Ljava/lang/String;

.field private final userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConsentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPerformedAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    return-object p0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->userRole:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->performedAt:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;->consentId:Ljava/lang/String;

    const-string v3, ", userRole="

    const-string v4, ", performedAt="

    const-string v5, "ConsentDeclined(name="

    invoke-static {v5, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consentId="

    const-string v3, ")"

    invoke-static {v0, v2, v1, p0, v3}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
