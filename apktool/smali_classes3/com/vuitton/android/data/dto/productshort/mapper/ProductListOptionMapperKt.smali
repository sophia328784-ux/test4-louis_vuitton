.class public abstract Lcom/vuitton/android/data/dto/productshort/mapper/ProductListOptionMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->a:Ljava/util/List;

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

    check-cast v4, Lcom/vuitton/android/data/dto/productshort/ProductSortDto;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/productshort/ProductSortDto;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/productshort/ProductSortDto;->b:Ljava/lang/String;

    iget-boolean v8, v4, Lcom/vuitton/android/data/dto/productshort/ProductSortDto;->c:Z

    iget-boolean v4, v4, Lcom/vuitton/android/data/dto/productshort/ProductSortDto;->d:Z

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;

    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;->b:Ljava/util/List;

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

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;->c:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;

    move-result-object v12

    iget-object v8, v8, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;->d:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;

    instance-of v13, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;

    if-eqz v13, :cond_2

    check-cast v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;

    iget-object v14, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    move-object/from16 v16, v5

    const/4 v15, 0x0

    iget-wide v4, v14, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->b:D

    double-to-int v4, v4

    move/from16 v17, v4

    iget-wide v3, v14, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->a:D

    double-to-int v3, v3

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    move/from16 v14, v17

    invoke-direct {v4, v3, v14}, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;-><init>(II)V

    iget-object v3, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    if-eqz v3, :cond_1

    move-object v14, v6

    iget-wide v5, v3, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->b:D

    double-to-int v5, v5

    move-object/from16 v18, v14

    move-object v6, v15

    iget-wide v14, v3, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->a:D

    double-to-int v3, v14

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-direct {v14, v3, v5}, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;-><init>(II)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v6

    move-object v6, v15

    move-object v14, v6

    :goto_2
    iget v3, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    iget-object v5, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    invoke-direct {v13, v4, v14, v3, v5}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;-><init>(Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;ILjava/lang/String;)V

    move-object/from16 v27, v6

    goto/16 :goto_5

    :cond_2
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    const/4 v6, 0x0

    instance-of v3, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;

    if-eqz v3, :cond_5

    check-cast v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;

    iget-object v3, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;

    new-instance v19, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;

    iget-object v14, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->a:Ljava/lang/String;

    iget-object v15, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->b:Ljava/lang/String;

    iget-object v5, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v5

    move-object/from16 v22, v5

    goto :goto_4

    :cond_3
    move-object/from16 v22, v6

    :goto_4
    iget-object v5, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->d:Ljava/lang/String;

    move-object/from16 v27, v6

    iget-boolean v6, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->e:Z

    move-object/from16 v28, v3

    iget-boolean v3, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->f:Z

    iget-object v13, v13, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->g:Ljava/lang/String;

    move/from16 v25, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v26, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-direct/range {v19 .. v26}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v3, v19

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    goto :goto_3

    :cond_4
    move-object/from16 v27, v6

    iget-boolean v3, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;->b:Z

    iget-object v5, v8, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;->c:Ljava/lang/String;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;

    invoke-direct {v13, v4, v3, v5}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object/from16 v27, v6

    sget-object v3, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;->INSTANCE:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;

    :goto_5
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    const/16 v3, 0xa

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_7
    move-object/from16 v16, v5

    const/16 v27, 0x0

    iget-object v1, v1, Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;

    iget-object v9, v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;->a:Ljava/lang/String;

    iget-object v10, v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;->b:Ljava/lang/String;

    iget-object v11, v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;->c:Ljava/lang/String;

    iget-boolean v12, v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;->d:Z

    iget-boolean v13, v4, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;->e:Z

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    move-object/from16 v4, v16

    invoke-direct {v1, v4, v7, v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_7

    :cond_9
    const/16 v27, 0x0

    move-object/from16 v1, v27

    :goto_7
    iget-object v0, v0, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v8, :cond_a

    invoke-static {v8}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v8

    goto :goto_9

    :cond_a
    move-object/from16 v8, v27

    :goto_9
    iget-object v9, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->d:Ljava/lang/String;

    iget-boolean v10, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->e:Z

    iget-boolean v11, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->f:Z

    iget-object v12, v4, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;->g:Ljava/lang/String;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-direct {v0, v2, v1, v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;Ljava/util/List;)V

    return-object v0
.end method
