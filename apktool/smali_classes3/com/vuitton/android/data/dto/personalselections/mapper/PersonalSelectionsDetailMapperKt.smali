.class public abstract Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsDetailMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsDetailMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;)Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->c:Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsDetailMapperKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;->ADVISOR_CURATION:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;->IN_STORE:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    :goto_0
    iget-object v4, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->d:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->e:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->g:Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v7

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;->b:Ljava/lang/String;

    if-nez v11, :cond_2

    const-string v11, ""

    :cond_2
    iget-object v8, v8, Lcom/vuitton/android/data/dto/personalselections/SelectionStoreDto;->c:Ljava/lang/String;

    invoke-direct {v7, v10, v11, v8}, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->h:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v13}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v13

    iget-object v14, v12, Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;->b:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;->c:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v12, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v11, 0xa

    goto :goto_2

    :cond_3
    new-instance v9, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionAsset;

    invoke-direct {v9, v13, v14, v15}, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionAsset;-><init>(Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/16 v11, 0xa

    goto :goto_1

    :cond_4
    iget-object v8, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->i:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;

    iget-object v13, v13, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;->a:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v11, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;

    iget-object v12, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;->a:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;->b:Ljava/lang/String;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;->c:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto;->d:Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;

    if-eqz v11, :cond_7

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;

    move-object/from16 v22, v1

    iget-boolean v1, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;->a:Z

    iget-object v11, v11, Lcom/vuitton/android/data/dto/personalselections/SelectionProductInteractionDto;->b:Ljava/lang/String;

    invoke-direct {v15, v1, v11}, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;-><init>(ZLjava/lang/String;)V

    move-object/from16 v20, v15

    goto :goto_5

    :cond_7
    move-object/from16 v22, v1

    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    goto :goto_4

    :cond_8
    move-object/from16 v22, v1

    iget-object v0, v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object v8, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialSectionMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
