.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v5, ""

    if-nez v3, :cond_1

    move-object v3, v5

    :cond_1
    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v7, :cond_3

    iget-object v4, v7, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    iget-boolean v7, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->r:Z

    const/4 v8, 0x0

    move-object v4, v6

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
