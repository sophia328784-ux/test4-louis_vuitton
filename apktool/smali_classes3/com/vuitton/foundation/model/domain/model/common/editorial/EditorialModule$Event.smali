.class public final Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;
.super Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;",
        "",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;",
        "titles",
        "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
        "link",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "asset",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;",
        "ratio",
        "deadline",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;",
        "targeting",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V",
        "domain"
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

.field public final c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

.field public final d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

.field public final e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    move-object p7, v0

    .line 31
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
