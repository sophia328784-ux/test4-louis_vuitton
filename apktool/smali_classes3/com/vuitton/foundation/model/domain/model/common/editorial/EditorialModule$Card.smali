.class public final Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;
.super Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Card"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;",
        "",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;",
        "titles",
        "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
        "link",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "asset",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;",
        "assetLayout",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;",
        "ratio",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;",
        "targeting",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V",
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

.field public final e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

.field public final f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

.field public final g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->f:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
