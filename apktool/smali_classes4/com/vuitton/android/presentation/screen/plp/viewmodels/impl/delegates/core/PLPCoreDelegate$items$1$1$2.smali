.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;

    new-instance v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;

    invoke-direct {v6, v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;)V

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->e:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;->b:Z

    if-eqz v7, :cond_9

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    iget-object v13, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v14, v13}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v10, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    if-eqz v15, :cond_0

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v15

    goto :goto_2

    :cond_0
    const/16 v18, 0x0

    :goto_2
    iget-object v8, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    iget-object v3, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v21

    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object/from16 v30, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v20, v3

    move-object/from16 v31, v4

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget-boolean v0, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    iget-boolean v3, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    iget-object v4, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I

    move-result v23

    iget-boolean v4, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    move/from16 v25, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    if-eqz v15, :cond_2

    move-object/from16 v24, v0

    goto :goto_4

    :cond_2
    const/16 v24, 0x0

    :goto_4
    new-instance v16, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    const/16 v28, 0x0

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v19, v8

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v28}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;ILandroidx/compose/runtime/MutableState;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v17

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v18

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-eqz v4, :cond_4

    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;

    move-result-object v4

    const/4 v10, 0x0

    invoke-direct {v8, v0, v4, v10}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-virtual {v3, v4}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_4
    const/16 v8, 0xa

    :goto_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v20

    if-eqz v14, :cond_6

    if-eqz v9, :cond_5

    move-object v0, v14

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_8

    :cond_6
    const/16 v21, 0x0

    :goto_8
    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    if-eqz v14, :cond_7

    if-eqz v5, :cond_7

    iget-boolean v3, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    if-eqz v3, :cond_7

    const/16 v23, 0x1

    goto :goto_9

    :cond_7
    move/from16 v23, v1

    :goto_9
    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    new-instance v17, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    const/16 v24, 0x0

    const/16 v26, 0x40

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move-object/from16 v25, v1

    invoke-direct/range {v17 .. v27}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move v3, v8

    move-object/from16 v1, v30

    move-object/from16 v4, v31

    goto/16 :goto_1

    :cond_8
    move-object/from16 v30, v1

    move v8, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    invoke-direct {v0, v7, v11}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_f

    :cond_9
    move-object/from16 v30, v1

    move v8, v3

    instance-of v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;

    iget-object v1, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v10, v7}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v3, v9, v6, v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object v3

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;)V

    goto/16 :goto_f

    :cond_a
    instance-of v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;

    iget-object v1, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v9, v4, v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V

    goto/16 :goto_f

    :cond_b
    instance-of v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;

    iget-object v1, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v10, v7}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v3, v9, v6, v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object v3

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-static {v4}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;)V

    goto/16 :goto_f

    :cond_c
    instance-of v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->a:Ljava/lang/String;

    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->b:Ljava/lang/String;

    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->c:Ljava/lang/String;

    iget-object v13, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->d:Ljava/lang/String;

    iget-object v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->e:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;

    sget-object v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;->CENTER:Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;

    :goto_a
    move-object v14, v0

    goto :goto_c

    :cond_d
    invoke-static {}, Lv40;->g()V

    :goto_b
    const/16 v29, 0x0

    return-object v29

    :cond_e
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;->LEFT:Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;

    goto :goto_a

    :goto_c
    iget-object v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v15

    iget-object v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    move-result-object v16

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;)V

    move-object v0, v9

    goto :goto_f

    :cond_f
    instance-of v0, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;

    iget-object v3, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;->b:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;

    new-instance v6, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;->b:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;

    sget-object v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt$WhenMappings;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_12

    if-eq v5, v1, :cond_11

    const/4 v1, 0x3

    if-ne v5, v1, :cond_10

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;->LARGE:Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;

    goto :goto_d

    :cond_10
    invoke-static {}, Lv40;->g()V

    goto :goto_b

    :cond_11
    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;->MEDIUM:Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;

    goto :goto_d

    :cond_12
    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;->SMALL:Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;

    :goto_d
    invoke-direct {v6, v7, v1}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;)V

    iget-object v1, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v4, :cond_13

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v4

    goto :goto_e

    :cond_13
    const/4 v4, 0x0

    :goto_e
    invoke-direct {v0, v3, v6, v1, v4}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    :goto_f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move v3, v8

    move-object/from16 v1, v30

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lv40;->g()V

    goto :goto_b

    :cond_15
    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/plp/models/plp/ProductListUiModelKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->i:Ljava/util/LinkedHashMap;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_16
    return-object v2
.end method
