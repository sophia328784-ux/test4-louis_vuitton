.class public final Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "skuId",
        "",
        "name",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "image",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;",
        "background",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;",
        "price",
        "color",
        "",
        "isInWishlist",
        "isVatIncluded",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    .line 46
    iput-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    .line 47
    iput-object p5, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    .line 48
    iput-object p6, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    .line 49
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    .line 50
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;Z)Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;
    .locals 10

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    const/4 v9, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", name="

    const-string v1, ", image="

    const-string v2, "ProductCarouselItemUiModel(skuId="

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInWishlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVatIncluded="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
