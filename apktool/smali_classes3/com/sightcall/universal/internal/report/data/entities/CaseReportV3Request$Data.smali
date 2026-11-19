.class public final Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;",
        "",
        "type",
        "",
        "attributes",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;",
        "relationships",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;",
        "<init>",
        "(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)V",
        "getType",
        "()Ljava/lang/String;",
        "getAttributes",
        "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;",
        "getRelationships",
        "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Attributes",
        "Relationships",
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
.field private final attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation
.end field

.field private final relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relationships"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    iput-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 16
    const-string p1, "caseReportEventsArrays"

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;ILjava/lang/Object;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->copy(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    return-object p0
.end method

.method public final component3()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;-><init>(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    iget-object v3, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    iget-object p1, p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAttributes()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    return-object p0
.end method

.method public final getRelationships()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->attributes:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;->relationships:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data(type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", attributes="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", relationships="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
