.class public abstract Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;
    .locals 47

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->e:Ljava/util/List;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;

    if-eqz v1, :cond_ac

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;

    instance-of v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;

    const-string v10, ""

    const/16 v11, 0xa

    if-eqz v7, :cond_22

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;

    iget-object v13, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;->a:Ljava/lang/String;

    iget-object v14, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;

    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_1

    move-object v15, v10

    goto :goto_2

    :cond_1
    move-object v15, v7

    :goto_2
    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v7, :cond_3

    :cond_2
    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_3
    invoke-static {v7}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v16

    if-eqz v6, :cond_4

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_5

    move-object/from16 v17, v10

    goto :goto_4

    :cond_5
    move-object/from16 v17, v7

    :goto_4
    if-eqz v6, :cond_6

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v7, :cond_7

    :cond_6
    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_7
    invoke-static {v7}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v18

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-nez v7, :cond_9

    :cond_8
    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    :cond_9
    invoke-static {v7}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v19

    if-eqz v6, :cond_e

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->f:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;

    if-eqz v7, :cond_e

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;

    iget-object v8, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;->a:Ljava/lang/String;

    if-nez v8, :cond_a

    move-object v8, v10

    :cond_a
    iget-object v9, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;->b:Ljava/lang/String;

    if-nez v9, :cond_b

    move-object v9, v10

    :cond_b
    iget-object v4, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;->c:Ljava/lang/String;

    if-nez v4, :cond_c

    move-object v4, v10

    :cond_c
    iget-object v7, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;->d:Ljava/lang/String;

    if-nez v7, :cond_d

    move-object v7, v10

    :cond_d
    invoke-direct {v12, v8, v9, v4, v7}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/4 v12, 0x0

    :goto_5
    if-eqz v6, :cond_19

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->g:Ljava/util/List;

    if-eqz v4, :cond_19

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;

    iget-object v9, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->e:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->d:Ljava/lang/String;

    move-object/from16 v29, v1

    const-string v1, "Look"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;->LOOK:Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    :goto_7
    move-object/from16 v35, v1

    goto :goto_8

    :cond_f
    const-string v1, "Product"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;->PRODUCT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    goto :goto_7

    :cond_10
    const/16 v35, 0x0

    :goto_8
    iget-object v1, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->a:Ljava/lang/String;

    if-nez v1, :cond_11

    move-object/from16 v31, v10

    goto :goto_9

    :cond_11
    move-object/from16 v31, v1

    :goto_9
    iget-object v1, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->b:Ljava/lang/String;

    if-nez v1, :cond_12

    move-object/from16 v32, v10

    goto :goto_a

    :cond_12
    move-object/from16 v32, v1

    :goto_a
    iget-object v1, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->c:Ljava/lang/String;

    if-nez v1, :cond_13

    move-object/from16 v33, v10

    goto :goto_b

    :cond_13
    move-object/from16 v33, v1

    :goto_b
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v11, :cond_14

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    move-object/from16 v34, v1

    goto :goto_c

    :cond_14
    move-object/from16 v34, v11

    :goto_c
    iget-object v1, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->f:Ljava/util/List;

    if-eqz v1, :cond_16

    check-cast v1, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v23, v4

    move-object/from16 v24, v10

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    move-object/from16 v36, v9

    goto :goto_e

    :cond_16
    move-object/from16 v23, v4

    move-object/from16 v24, v10

    const/16 v36, 0x0

    :goto_e
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    iget-object v1, v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->e:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/16 v37, 0x1

    goto :goto_f

    :cond_17
    const/16 v37, 0x0

    :goto_f
    new-instance v30, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;

    const/16 v38, 0x0

    invoke-direct/range {v30 .. v38}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v30

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v23

    move-object/from16 v10, v24

    move-object/from16 v1, v29

    const/16 v11, 0xa

    goto/16 :goto_6

    :cond_18
    move-object/from16 v29, v1

    move-object/from16 v24, v10

    goto :goto_10

    :cond_19
    move-object/from16 v29, v1

    move-object/from16 v24, v10

    const/4 v7, 0x0

    :goto_10
    if-nez v7, :cond_1a

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1a
    move-object/from16 v21, v7

    if-eqz v6, :cond_1d

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->i:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v1, :cond_1d

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->h:Ljava/lang/String;

    if-nez v4, :cond_1b

    move-object/from16 v4, v24

    :cond_1b
    const/4 v7, 0x0

    invoke-static {v1, v4, v7}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_12

    :cond_1c
    :goto_11
    move-object/from16 v22, v1

    goto :goto_15

    :cond_1d
    :goto_12
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    if-eqz v6, :cond_1e

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->k:Ljava/lang/String;

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    :goto_13
    if-nez v4, :cond_1f

    move-object/from16 v10, v24

    goto :goto_14

    :cond_1f
    move-object v10, v4

    :goto_14
    invoke-direct {v1, v10}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_15
    if-eqz v6, :cond_20

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->j:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_16

    :cond_20
    const/16 v23, 0x0

    :goto_16
    if-eqz v3, :cond_21

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v1

    :goto_17
    move-object/from16 v20, v12

    goto :goto_18

    :cond_21
    const/16 v25, 0x0

    goto :goto_17

    :goto_18
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    const/16 v24, 0x0

    const/16 v26, 0x800

    const/16 v27, 0x0

    invoke-direct/range {v12 .. v27}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;ZLcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v12

    goto/16 :goto_71

    :cond_22
    move-object/from16 v29, v1

    move-object/from16 v24, v10

    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;

    if-eqz v1, :cond_2f

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;

    if-eqz v1, :cond_23

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->a:Ljava/lang/String;

    goto :goto_19

    :cond_23
    const/4 v4, 0x0

    :goto_19
    if-nez v4, :cond_24

    move-object/from16 v10, v24

    goto :goto_1a

    :cond_24
    move-object v10, v4

    :goto_1a
    if-eqz v1, :cond_25

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v4, :cond_26

    :cond_25
    sget-object v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_26
    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v11

    if-eqz v1, :cond_27

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->c:Ljava/lang/String;

    goto :goto_1b

    :cond_27
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_28

    move-object/from16 v12, v24

    goto :goto_1c

    :cond_28
    move-object v12, v4

    :goto_1c
    if-eqz v1, :cond_29

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v4, :cond_2a

    :cond_29
    sget-object v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_2a
    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v13

    if-eqz v1, :cond_2b

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-nez v4, :cond_2c

    :cond_2b
    sget-object v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    :cond_2c
    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v14

    if-eqz v1, :cond_2d

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v1, :cond_2d

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v1

    move-object v15, v1

    goto :goto_1d

    :cond_2d
    const/4 v15, 0x0

    :goto_1d
    if-eqz v3, :cond_2e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v1

    goto :goto_1e

    :cond_2e
    const/16 v17, 0x0

    :goto_1e
    const/16 v18, 0x100

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v19}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/Asset;ZLcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_71

    :cond_2f
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;

    const/4 v4, 0x2

    if-eqz v1, :cond_54

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;->a:Ljava/lang/String;

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;

    if-eqz v6, :cond_30

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->a:Ljava/lang/String;

    goto :goto_1f

    :cond_30
    const/4 v8, 0x0

    :goto_1f
    if-nez v8, :cond_31

    move-object/from16 v33, v24

    goto :goto_20

    :cond_31
    move-object/from16 v33, v8

    :goto_20
    if-eqz v6, :cond_32

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v8, :cond_33

    :cond_32
    sget-object v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_33
    invoke-static {v8}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v34

    if-eqz v6, :cond_34

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->c:Ljava/lang/String;

    goto :goto_21

    :cond_34
    const/4 v8, 0x0

    :goto_21
    if-nez v8, :cond_35

    move-object/from16 v35, v24

    goto :goto_22

    :cond_35
    move-object/from16 v35, v8

    :goto_22
    if-eqz v6, :cond_36

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v8, :cond_37

    :cond_36
    sget-object v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_37
    invoke-static {v8}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v36

    if-eqz v6, :cond_38

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->e:Ljava/lang/String;

    goto :goto_23

    :cond_38
    const/4 v8, 0x0

    :goto_23
    if-nez v8, :cond_39

    move-object/from16 v37, v24

    goto :goto_24

    :cond_39
    move-object/from16 v37, v8

    :goto_24
    if-eqz v6, :cond_3a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->f:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    if-nez v8, :cond_3b

    :cond_3a
    sget-object v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->DEFAULT:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    :cond_3b
    invoke-static {v8}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v38

    if-eqz v6, :cond_3c

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->g:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-nez v8, :cond_3d

    :cond_3c
    sget-object v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    :cond_3d
    invoke-static {v8}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v39

    if-eqz v6, :cond_3e

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->h:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;

    if-nez v8, :cond_3f

    :cond_3e
    sget-object v8, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;->PARAGRAPH:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;

    :cond_3f
    sget-object v9, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->b:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_41

    if-ne v8, v4, :cond_40

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;->PARAGRAPH:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    :goto_25
    move-object/from16 v40, v4

    goto :goto_27

    :cond_40
    invoke-static {}, Lv40;->g()V

    :goto_26
    const/16 v28, 0x0

    return-object v28

    :cond_41
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;->CITATION:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    goto :goto_25

    :goto_27
    if-eqz v6, :cond_43

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->i:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    move-result-object v4

    if-nez v4, :cond_42

    goto :goto_29

    :cond_42
    :goto_28
    move-object/from16 v41, v4

    goto :goto_2a

    :cond_43
    :goto_29
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->CENTER:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    goto :goto_28

    :goto_2a
    if-eqz v6, :cond_44

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->j:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v4, :cond_44

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v4

    move-object/from16 v42, v4

    goto :goto_2b

    :cond_44
    const/16 v42, 0x0

    :goto_2b
    if-eqz v6, :cond_4f

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->k:Ljava/util/List;

    if-eqz v4, :cond_4f

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    iget-object v11, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->c:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v11, :cond_48

    iget-object v12, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->b:Ljava/lang/String;

    if-nez v12, :cond_47

    sget-object v12, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PUSH_NOTIFICATION:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-ne v11, v12, :cond_46

    goto :goto_2d

    :cond_46
    const/4 v11, 0x0

    goto :goto_2e

    :cond_47
    :goto_2d
    const/4 v11, 0x1

    :goto_2e
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_2f

    :cond_48
    iget-object v11, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->d:Ljava/lang/String;

    :goto_2f
    if-eqz v11, :cond_45

    iget-object v10, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->a:Ljava/lang/String;

    if-eqz v10, :cond_45

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_49
    new-instance v4, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    new-instance v10, Lkotlin/Pair;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->c:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v12, :cond_4b

    iget-object v13, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->b:Ljava/lang/String;

    if-nez v13, :cond_4a

    move-object/from16 v13, v24

    :cond_4a
    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v12

    if-nez v12, :cond_4d

    :cond_4b
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->d:Ljava/lang/String;

    if-nez v9, :cond_4c

    move-object/from16 v9, v24

    :cond_4c
    invoke-direct {v12, v9}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;-><init>(Ljava/lang/String;)V

    :cond_4d
    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_4e
    :goto_31
    move-object/from16 v43, v4

    goto :goto_32

    :cond_4f
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_31

    :goto_32
    if-eqz v3, :cond_50

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v8, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v44, v4

    goto :goto_33

    :cond_50
    const/16 v44, 0x0

    :goto_33
    if-eqz v2, :cond_51

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v8, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v45, v4

    goto :goto_34

    :cond_51
    const/16 v45, 0x0

    :goto_34
    if-eqz v6, :cond_53

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->l:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;

    if-eqz v4, :cond_53

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;

    iget-object v8, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    if-eqz v4, :cond_52

    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->b(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    move-result-object v4

    goto :goto_35

    :cond_52
    const/4 v4, 0x0

    :goto_35
    invoke-direct {v6, v8, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V

    move-object/from16 v46, v6

    goto :goto_36

    :cond_53
    const/16 v46, 0x0

    :goto_36
    new-instance v30, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;

    move-object/from16 v31, v1

    move-object/from16 v32, v7

    invoke-direct/range {v30 .. v46}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;)V

    move-object/from16 v7, v30

    goto/16 :goto_71

    :cond_54
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;

    if-eqz v1, :cond_62

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDataDto;

    if-eqz v1, :cond_5f

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDataDto;->a:Ljava/util/List;

    if-eqz v1, :cond_5f

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    iget-object v10, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->c:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v10, :cond_58

    iget-object v11, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->b:Ljava/lang/String;

    if-nez v11, :cond_57

    sget-object v11, Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;->PUSH_NOTIFICATION:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-ne v10, v11, :cond_56

    goto :goto_38

    :cond_56
    const/4 v10, 0x0

    goto :goto_39

    :cond_57
    :goto_38
    const/4 v10, 0x1

    :goto_39
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_3a

    :cond_58
    iget-object v10, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->d:Ljava/lang/String;

    :goto_3a
    if-eqz v10, :cond_55

    iget-object v7, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->a:Ljava/lang/String;

    if-eqz v7, :cond_55

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_59
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    new-instance v7, Lkotlin/Pair;

    iget-object v10, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->c:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v11, :cond_5b

    iget-object v12, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->b:Ljava/lang/String;

    if-nez v12, :cond_5a

    move-object/from16 v12, v24

    :cond_5a
    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v11

    if-nez v11, :cond_5d

    :cond_5b
    new-instance v11, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->d:Ljava/lang/String;

    if-nez v6, :cond_5c

    move-object/from16 v6, v24

    :cond_5c
    invoke-direct {v11, v6}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;-><init>(Ljava/lang/String;)V

    :cond_5d
    invoke-direct {v7, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_5e
    :goto_3c
    move-object v10, v1

    goto :goto_3d

    :cond_5f
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3c

    :goto_3d
    if-eqz v3, :cond_60

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_3e

    :cond_60
    const/4 v11, 0x0

    :goto_3e
    if-eqz v2, :cond_61

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    goto :goto_3f

    :cond_61
    const/4 v12, 0x0

    :goto_3f
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    goto/16 :goto_71

    :cond_62
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;

    if-eqz v1, :cond_6b

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;

    if-eqz v1, :cond_63

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-eqz v4, :cond_63

    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v4

    move-object v10, v4

    goto :goto_40

    :cond_63
    const/4 v10, 0x0

    :goto_40
    if-eqz v1, :cond_69

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;->b:Ljava/util/List;

    if-eqz v1, :cond_69

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    iget-object v11, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v11, :cond_64

    invoke-static {v11}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v11

    goto :goto_42

    :cond_64
    const/4 v11, 0x0

    :goto_42
    iget-object v12, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;->b:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz v12, :cond_65

    invoke-static {v12}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    goto :goto_43

    :cond_65
    const/4 v12, 0x0

    :goto_43
    iget-object v13, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;->c:Ljava/lang/String;

    if-nez v13, :cond_66

    move-object/from16 v13, v24

    :cond_66
    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-eqz v6, :cond_67

    invoke-static {v6}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v6

    goto :goto_44

    :cond_67
    const/4 v6, 0x0

    :goto_44
    invoke-direct {v7, v11, v12, v13, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;-><init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_68
    :goto_45
    move-object v11, v4

    goto :goto_46

    :cond_69
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_45

    :goto_46
    if-eqz v3, :cond_6a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    goto :goto_47

    :cond_6a
    const/4 v12, 0x0

    :goto_47
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    goto/16 :goto_71

    :cond_6b
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;

    if-eqz v1, :cond_75

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;

    if-eqz v1, :cond_6c

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->a:Ljava/lang/String;

    goto :goto_48

    :cond_6c
    const/4 v4, 0x0

    :goto_48
    if-nez v4, :cond_6d

    move-object/from16 v10, v24

    goto :goto_49

    :cond_6d
    move-object v10, v4

    :goto_49
    if-eqz v1, :cond_6e

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->b:Ljava/lang/String;

    goto :goto_4a

    :cond_6e
    const/4 v4, 0x0

    :goto_4a
    if-nez v4, :cond_6f

    move-object/from16 v11, v24

    goto :goto_4b

    :cond_6f
    move-object v11, v4

    :goto_4b
    if-eqz v1, :cond_70

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-eqz v4, :cond_70

    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v4

    move-object v13, v4

    goto :goto_4c

    :cond_70
    const/4 v13, 0x0

    :goto_4c
    if-eqz v1, :cond_71

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v4, :cond_71

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v4

    move-object v12, v4

    goto :goto_4d

    :cond_71
    const/4 v12, 0x0

    :goto_4d
    if-eqz v1, :cond_72

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->e:Ljava/util/List;

    goto :goto_4e

    :cond_72
    const/4 v1, 0x0

    :goto_4e
    if-nez v1, :cond_73

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_73
    move-object v14, v1

    if-eqz v3, :cond_74

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    goto :goto_4f

    :cond_74
    const/4 v15, 0x0

    :goto_4f
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;

    invoke-direct/range {v7 .. v15}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    goto/16 :goto_71

    :cond_75
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;

    if-eqz v1, :cond_79

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;

    if-eqz v6, :cond_76

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-nez v7, :cond_77

    :cond_76
    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    :cond_77
    invoke-static {v7}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v7

    if-eqz v6, :cond_78

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v6, :cond_78

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v6

    goto :goto_50

    :cond_78
    const/4 v6, 0x0

    :goto_50
    invoke-direct {v1, v4, v7, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V

    :goto_51
    move-object v7, v1

    goto/16 :goto_71

    :cond_79
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;

    if-eqz v1, :cond_87

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    if-eqz v1, :cond_7c

    iget-object v6, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->a:Ljava/util/List;

    if-eqz v6, :cond_7c

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;

    iget-object v10, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;->a:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v10, :cond_7a

    invoke-static {v10}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v10

    move-object v13, v10

    goto :goto_53

    :cond_7a
    const/4 v13, 0x0

    :goto_53
    iget-object v12, v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_7b
    move-object v9, v7

    goto :goto_54

    :cond_7c
    const/4 v9, 0x0

    :goto_54
    if-eqz v1, :cond_80

    iget-object v6, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    if-eqz v6, :cond_80

    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->c:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7e

    if-ne v6, v4, :cond_7d

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->MARIE_LOUISE:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    goto :goto_55

    :cond_7d
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_26

    :cond_7e
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->REGULAR:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    :goto_55
    if-nez v6, :cond_7f

    goto :goto_57

    :cond_7f
    :goto_56
    move-object v10, v6

    goto :goto_58

    :cond_80
    :goto_57
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->REGULAR:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    goto :goto_56

    :goto_58
    if-eqz v1, :cond_84

    iget-object v6, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    if-eqz v6, :cond_84

    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->d:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_82

    if-ne v6, v4, :cond_81

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->IMAGE_ONLY:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    goto :goto_59

    :cond_81
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_26

    :cond_82
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->FULL_DETAILS:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    :goto_59
    if-nez v4, :cond_83

    goto :goto_5b

    :cond_83
    :goto_5a
    move-object v11, v4

    goto :goto_5c

    :cond_84
    :goto_5b
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->FULL_DETAILS:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    goto :goto_5a

    :goto_5c
    if-eqz v3, :cond_85

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v4

    goto :goto_5d

    :cond_85
    const/4 v12, 0x0

    :goto_5d
    if-eqz v1, :cond_86

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    if-eqz v1, :cond_86

    invoke-static {v1}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v1

    move-object v13, v1

    goto :goto_5e

    :cond_86
    const/4 v13, 0x0

    :goto_5e
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V

    goto/16 :goto_71

    :cond_87
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;

    if-eqz v1, :cond_8a

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;->b:Ljava/lang/String;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticle3DDataDto;

    if-eqz v6, :cond_88

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticle3DDataDto;->a:Ljava/lang/String;

    goto :goto_5f

    :cond_88
    const/4 v6, 0x0

    :goto_5f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_89

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_89
    const/4 v14, 0x0

    invoke-direct {v1, v4, v6, v14}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_51

    :cond_8a
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;

    if-eqz v1, :cond_8f

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;->a:Ljava/lang/String;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionDataDto;

    if-eqz v4, :cond_8d

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionDataDto;->a:Ljava/util/List;

    if-eqz v4, :cond_8d

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionPanelDto;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionPanel;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionPanelDto;->b:Ljava/lang/String;

    if-nez v9, :cond_8b

    move-object/from16 v9, v24

    :cond_8b
    iget-object v7, v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionPanelDto;->c:Ljava/lang/String;

    if-nez v7, :cond_8c

    move-object/from16 v7, v24

    :cond_8c
    invoke-direct {v8, v9, v7}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_8d
    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_8e
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;

    invoke-direct {v4, v1, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v4

    goto/16 :goto_71

    :cond_8f
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;

    if-eqz v1, :cond_93

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;

    iget-object v10, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;

    iget-object v13, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->a:Ljava/lang/String;

    iget-object v14, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v15

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v16

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v7, :cond_90

    move-object/from16 v7, v24

    :cond_90
    iget-object v4, v4, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->c:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v17

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_91
    if-eqz v3, :cond_92

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    goto :goto_62

    :cond_92
    const/4 v12, 0x0

    :goto_62
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    goto/16 :goto_71

    :cond_93
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;

    if-eqz v1, :cond_97

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;->a:Ljava/lang/String;

    iget-object v7, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDataDto;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDataDto;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;

    iget-object v11, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;->a:Ljava/lang/String;

    iget-object v12, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;->b:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;->c:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v16, v6

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;

    invoke-static {v13}, Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_94
    iget-object v6, v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    if-eqz v6, :cond_95

    invoke-static {v6}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->b(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    move-result-object v6

    goto :goto_65

    :cond_95
    const/4 v6, 0x0

    :goto_65
    new-instance v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;

    invoke-direct {v10, v11, v12, v14, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v16

    goto :goto_63

    :cond_96
    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v4, v7, v8}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;)V

    goto/16 :goto_51

    :cond_97
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;

    if-eqz v1, :cond_9d

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;->a:Ljava/lang/String;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v9, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_66
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_98

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;

    invoke-static {v11}, Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_98
    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    sget-object v11, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->c:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_9a

    if-ne v9, v4, :cond_99

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->MARIE_LOUISE:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    goto :goto_67

    :cond_99
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_26

    :cond_9a
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->REGULAR:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    :goto_67
    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    sget-object v11, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->d:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v11, v6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_9c

    if-ne v6, v4, :cond_9b

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->IMAGE_ONLY:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    goto :goto_68

    :cond_9b
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_26

    :cond_9c
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->FULL_DETAILS:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    :goto_68
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;

    invoke-direct {v6, v10, v9, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;)V

    invoke-direct {v7, v1, v8, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;)V

    goto/16 :goto_71

    :cond_9d
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;

    if-eqz v1, :cond_9e

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;->a:Ljava/lang/String;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationDataDto;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationDataDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationDataDto;->b:Ljava/lang/String;

    invoke-direct {v7, v1, v4, v8, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_71

    :cond_9e
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;

    if-eqz v1, :cond_a4

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->b:Ljava/lang/String;

    invoke-direct {v10, v6, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->b:Ljava/lang/String;

    invoke-direct {v11, v6, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v12

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v13

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v4

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->f:Ljava/lang/String;

    const-string v6, "landscape"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->LANDSCAPE:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    :goto_69
    move-object v15, v4

    goto :goto_6a

    :cond_9f
    const-string v6, "portrait"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->PORTRAIT:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    goto :goto_69

    :cond_a0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->LANDSCAPE:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    goto :goto_69

    :goto_6a
    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->g:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;

    if-eqz v1, :cond_a1

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;

    iget-object v6, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;->a:Ljava/lang/String;

    move-object/from16 v16, v7

    iget-object v7, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;->c:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v1}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    goto :goto_6b

    :cond_a1
    move-object/from16 v16, v7

    const/4 v7, 0x0

    :goto_6b
    if-eqz v3, :cond_a2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v1

    goto :goto_6c

    :cond_a2
    const/16 v17, 0x0

    :goto_6c
    if-eqz v2, :cond_a3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v1

    goto :goto_6d

    :cond_a3
    move-object/from16 v18, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v18

    const/16 v18, 0x0

    :goto_6d
    invoke-direct/range {v7 .. v18}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    move-object/from16 v16, v7

    goto/16 :goto_71

    :cond_a4
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;

    if-eqz v1, :cond_a8

    check-cast v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->b:Ljava/lang/String;

    invoke-direct {v10, v6, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;->b:Ljava/lang/String;

    invoke-direct {v11, v6, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v12

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v13

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;

    if-eqz v4, :cond_a5

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;

    iget-object v14, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;->a:Ljava/lang/String;

    iget-object v15, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;->c:Ljava/lang/String;

    invoke-direct {v6, v14, v15, v4}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v6

    goto :goto_6e

    :cond_a5
    const/4 v14, 0x0

    :goto_6e
    iget-object v15, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->f:Ljava/lang/String;

    if-eqz v3, :cond_a6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    goto :goto_6f

    :cond_a6
    const/16 v16, 0x0

    :goto_6f
    if-eqz v2, :cond_a7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v1

    goto :goto_70

    :cond_a7
    const/16 v17, 0x0

    :goto_70
    invoke-direct/range {v7 .. v17}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    goto :goto_71

    :cond_a8
    instance-of v1, v6, Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto;

    if-eqz v1, :cond_aa

    const/4 v7, 0x0

    :goto_71
    if-eqz v7, :cond_a9

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    move-object/from16 v1, v29

    goto/16 :goto_0

    :cond_aa
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_26

    :cond_ab
    const/16 v28, 0x0

    goto :goto_72

    :cond_ac
    const/16 v28, 0x0

    move-object/from16 v5, v28

    :goto_72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->f:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;

    if-eqz v1, :cond_ad

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v4

    iget-object v5, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;->d:Lcom/vuitton/android/data/dto/common/SoundDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/common/Sound;

    iget-object v12, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->a:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->b:Ljava/lang/String;

    iget v1, v1, Lcom/vuitton/android/data/dto/common/SoundDto;->c:F

    float-to-long v14, v1

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/vuitton/foundation/model/domain/model/common/Sound;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v2, v4, v5, v10, v11}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;-><init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V

    move-object v10, v2

    goto :goto_73

    :cond_ad
    move-object/from16 v10, v28

    :goto_73
    iget-object v0, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->g:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;

    if-eqz v0, :cond_af

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;

    if-eqz v0, :cond_ae

    invoke-static {v0}, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt;->b(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    move-result-object v0

    goto :goto_74

    :cond_ae
    move-object/from16 v0, v28

    :goto_74
    invoke-direct {v1, v4, v2, v0}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;-><init>(Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V

    move-object v11, v1

    goto :goto_75

    :cond_af
    move-object/from16 v11, v28

    :goto_75
    if-eqz v3, :cond_b0

    iget-object v4, v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    move-object v12, v4

    goto :goto_76

    :cond_b0
    move-object/from16 v12, v28

    :goto_76
    invoke-direct/range {v6 .. v12}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;Ljava/lang/String;)V

    return-object v6
.end method

.method public static final b(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->e:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->c:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    const-string v4, ""

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->b:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v4

    :cond_1
    invoke-static {v1, v5, v2}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;->d:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, p0

    :goto_1
    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;-><init>(Ljava/lang/String;)V

    :cond_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    invoke-direct {p0, v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V

    return-object p0
.end method

.method public static final c(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->COND:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->ANGLAISE_F:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->HANLEY_PRO:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    return-object p0
.end method

.method public static final d(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/mapper/ImmersiveArticlePageMapperKt$WhenMappings;->e:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_1_1:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_4_5:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_2_3:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_9_16:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_16_9:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
