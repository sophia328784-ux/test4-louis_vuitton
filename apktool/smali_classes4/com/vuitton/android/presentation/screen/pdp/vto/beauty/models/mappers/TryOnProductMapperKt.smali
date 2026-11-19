.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->LIPLINER:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->EYESHADOW:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->LIPSTICK:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v5

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->a:Ljava/lang/String;

    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->b:Ljava/lang/String;

    iget-object v13, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->c:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->d:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v15}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v15

    iget-boolean v7, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;->f:Z

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Z)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v10, v2

    iget-boolean v7, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    iget-boolean v11, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    iget-boolean v12, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/16 v14, 0x400

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;Ljava/util/List;ZZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
