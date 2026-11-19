.class public abstract Lcom/vuitton/android/data/dto/catalog/mapper/CatalogMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/catalog/CatalogDto;)Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/catalog/CatalogDto;->a:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/data/dto/catalog/CatalogDto;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/catalog/SectionDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/vuitton/android/data/dto/catalog/SectionDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/catalog/SectionDto;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/catalog/Category;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    iget-object v10, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v11}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v11

    iget-object v12, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    if-eqz v12, :cond_0

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    iget-object v12, v12, Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;->a:Ljava/lang/String;

    invoke-direct {v14, v12}, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    :goto_2
    iget-object v14, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    if-eqz v14, :cond_1

    iget-object v15, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->e(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object v14

    goto :goto_3

    :cond_1
    const/4 v14, 0x0

    :goto_3
    iget-object v7, v7, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v7, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->a:Ljava/util/List;

    if-eqz v15, :cond_2

    check-cast v15, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static {v15, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;

    invoke-static {v15}, Lcom/vuitton/android/data/dto/catalog/mapper/PLPEntryMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;)Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    move-object/from16 v16, v0

    const/4 v13, 0x0

    :cond_3
    iget-object v0, v7, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v17, v4

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/catalog/mapper/PLPEntryMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;)Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move-object/from16 v17, v4

    const/4 v15, 0x0

    :cond_5
    iget-object v0, v7, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->c:Ljava/util/List;

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v18, v8

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v8, Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto;->b:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    move-object/from16 v20, v0

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;

    move-object/from16 v23, v8

    iget-object v8, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryDto;->a:Ljava/lang/String;

    move-object/from16 v24, v11

    iget-object v11, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryDto;->b:Ljava/lang/String;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryDto;->c:Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;

    if-eqz v9, :cond_b

    move-object/from16 v25, v12

    iget-object v12, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;->a:Ljava/util/List;

    if-eqz v12, :cond_6

    check-cast v12, Ljava/lang/Iterable;

    move-object/from16 v26, v14

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    const/16 v1, 0xa

    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/catalog/mapper/PLPEntryMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;)Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_6
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v26, v14

    const/4 v14, 0x0

    :cond_7
    iget-object v1, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;->b:Ljava/util/List;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v19, v5

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/catalog/mapper/PLPEntryMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/PLPEntryDto;)Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    move-object/from16 v19, v5

    const/16 v12, 0xa

    const/4 v2, 0x0

    :cond_9
    iget-object v1, v9, Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;

    invoke-direct {v5, v14, v2, v1}, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    goto :goto_b

    :cond_b
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v19, v5

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    const/16 v12, 0xa

    const/4 v5, 0x0

    :goto_b
    invoke-direct {v10, v8, v11, v5}, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v19

    move-object/from16 v8, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v14, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto/16 :goto_7

    :cond_c
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v19, v5

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    const/16 v12, 0xa

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v12

    move-object/from16 v0, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v12, v25

    move-object/from16 v1, v27

    goto/16 :goto_6

    :cond_d
    :goto_c
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v19, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move v12, v3

    goto :goto_d

    :cond_e
    move-object/from16 v18, v8

    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    iget-object v0, v7, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_e
    new-instance v14, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    invoke-direct {v14, v13, v15, v4, v0}, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move v1, v12

    move-object/from16 v8, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/foundation/model/domain/model/catalog/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move v1, v3

    move-object/from16 v19, v5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/catalog/Section;

    move-object/from16 v2, v19

    invoke-direct {v0, v2, v6}, Lcom/vuitton/foundation/model/domain/model/catalog/Section;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v2, v28

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    goto/16 :goto_0

    :cond_11
    move-object/from16 v27, v1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;-><init>(Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;)V

    return-object v0
.end method
