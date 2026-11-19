.class public final Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "asset",
        "",
        "assetRatio",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
        "introVideo",
        "outroVideo",
        "",
        "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;",
        "hotspots",
        "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;",
        "theme",
        "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;",
        "cta",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;FLcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

.field public final d:F

.field public final e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

.field public final f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

.field public final g:Ljava/util/List;

.field public final h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

.field public final i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;FLcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
            "F",
            "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
            "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;",
            "Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput p4, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    invoke-static {v2, v1, v0}, Lpq0;->b(IIF)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", asset="

    const-string v2, "SpotlightSlide(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", introVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outroVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotspots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
