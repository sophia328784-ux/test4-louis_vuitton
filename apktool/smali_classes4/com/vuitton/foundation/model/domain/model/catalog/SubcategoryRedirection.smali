.class public final Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;",
        "",
        "",
        "Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;",
        "plpEntries",
        "thematicPlpEntries",
        "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
        "link",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V",
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
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 24
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->b:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", thematicPlpEntries="

    const-string v1, ", link="

    const-string v2, "SubcategoryRedirection(plpEntries="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
