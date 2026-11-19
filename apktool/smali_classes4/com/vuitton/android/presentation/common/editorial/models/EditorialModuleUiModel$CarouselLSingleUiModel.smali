.class public final Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;
.super Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarouselLSingleUiModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;",
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;",
        "",
        "id",
        "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;",
        "titles",
        "",
        "Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;",
        "slideList",
        "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;",
        "contributionLink",
        "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;",
        "targeting",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V",
        "presentation"
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

.field public final b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

.field public final e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;",
            "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarouselLSingleUiModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slideList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contributionLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
