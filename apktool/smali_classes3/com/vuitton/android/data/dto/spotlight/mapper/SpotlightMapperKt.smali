.class public abstract Lcom/vuitton/android/data/dto/spotlight/mapper/SpotlightMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;)Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;->b:Ljava/util/List;

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

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v8

    iget v9, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->d:F

    iget-object v5, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v11, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->f:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz v11, :cond_1

    invoke-static {v11}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->g:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, ""

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;

    iget-object v10, v14, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v14, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    move-object/from16 v17, v5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;

    move-object/from16 v18, v6

    iget v6, v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;->b:F

    iget v0, v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;->a:F

    invoke-direct {v5, v6, v0}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;-><init>(FF)V

    iget-object v0, v14, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v0

    iget-object v6, v14, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;

    move-object/from16 v19, v7

    iget-object v7, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    if-eqz v6, :cond_3

    move-object/from16 v20, v8

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;

    move/from16 v21, v9

    iget-object v9, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;->a:Ljava/lang/String;

    move-object/from16 v22, v11

    iget-object v11, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;->b:Ljava/lang/String;

    move-object/from16 v23, v12

    iget-object v12, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v12}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v12

    iget-object v6, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    move-object/from16 v24, v15

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    move-object/from16 v25, v1

    iget-object v1, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    move-object/from16 v26, v2

    iget-object v2, v6, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v6, :cond_2

    move-object/from16 v6, v24

    :cond_2
    move-object/from16 v27, v4

    const/4 v4, 0x0

    invoke-static {v2, v6, v4}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    invoke-direct {v8, v9, v11, v12, v15}, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V

    goto :goto_4

    :cond_3
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    const/4 v4, 0x0

    move-object v8, v4

    :goto_4
    invoke-direct {v14, v7, v8, v4}, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v10, v5, v0, v14}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v4, v27

    const/16 v3, 0xa

    goto/16 :goto_3

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v24, v15

    iget-object v0, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->h:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/data/dto/common/FeatureThemeDto;)Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    move-result-object v0

    iget-object v1, v4, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->i:Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object/from16 v15, v24

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_5
    move-object v15, v1

    goto :goto_5

    :goto_6
    invoke-static {v4, v15, v1}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move-object v14, v2

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    move-object v14, v1

    :goto_7
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;

    move-object v12, v13

    move-object/from16 v10, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v11, v22

    move-object v13, v0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;FLcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_7
    move-object/from16 v25, v1

    move-object v0, v2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;

    move-object/from16 v2, v25

    invoke-direct {v1, v2, v0}, Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
