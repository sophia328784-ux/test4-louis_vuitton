.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->a:Ljava/util/List;

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

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->b:Ljava/lang/String;

    iget-boolean v8, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->c:Z

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->d:Z

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->b:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->c:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;

    sget-object v13, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt$WhenMappings;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    sget-object v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;->SIMPLE:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_2
    sget-object v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;->RANGE:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;

    :goto_2
    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->d:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;

    instance-of v13, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;

    if-eqz v13, :cond_4

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;

    new-instance v13, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Range;

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    iget v15, v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->b:I

    iget v14, v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->a:I

    move-object/from16 v16, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;

    invoke-direct {v4, v14, v15}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;-><init>(II)V

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    if-eqz v14, :cond_3

    iget v15, v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->b:I

    iget v14, v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->a:I

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;

    invoke-direct {v3, v14, v15}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;-><init>(II)V

    goto :goto_3

    :cond_3
    move-object/from16 v3, v16

    :goto_3
    iget v14, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    invoke-direct {v13, v4, v3, v14, v8}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Range;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    move-object/from16 v16, v4

    instance-of v3, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;

    if-eqz v3, :cond_7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;

    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v3, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;

    new-instance v17, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v14, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->a:Ljava/lang/String;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->b:Ljava/lang/String;

    move-object/from16 v25, v3

    iget-object v3, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_5

    :cond_5
    move-object/from16 v20, v16

    :goto_5
    iget-object v3, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->d:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-boolean v3, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->e:Z

    move/from16 v22, v3

    iget-boolean v3, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->f:Z

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->g:Ljava/lang/String;

    move/from16 v23, v3

    move-object/from16 v24, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-direct/range {v17 .. v24}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    goto :goto_4

    :cond_6
    iget-boolean v3, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;->b:Z

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;->c:Ljava/lang/String;

    new-instance v13, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    invoke-direct {v13, v4, v3, v8}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_6

    :cond_7
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v13, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Unknown;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Unknown;

    :goto_6
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    const/16 v3, 0xa

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_9
    move-object/from16 v16, v4

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;

    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->a:Ljava/lang/String;

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->b:Ljava/lang/String;

    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->c:Ljava/lang/String;

    iget-boolean v12, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->d:Z

    iget-boolean v13, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->e:Z

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    invoke-direct {v1, v5, v7, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_8

    :cond_b
    move-object/from16 v16, v4

    move-object/from16 v1, v16

    :goto_8
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;

    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v8, :cond_c

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v8

    goto :goto_a

    :cond_c
    move-object/from16 v8, v16

    :goto_a
    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->d:Ljava/lang/String;

    iget-boolean v10, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->e:Z

    iget-boolean v11, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->f:Z

    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->g:Ljava/lang/String;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-direct {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/util/List;)V

    return-object v0
.end method
