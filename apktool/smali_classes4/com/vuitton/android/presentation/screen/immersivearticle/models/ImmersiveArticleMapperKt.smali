.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz p0, :cond_0

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->f:[I

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

    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->COND:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->ANGLAISE_F:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->DEFAULT:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    return-object p0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->c:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;->LOOK:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;->PRODUCT:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_0
    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->f:Ljava/util/List;

    if-eqz v6, :cond_3

    check-cast v6, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v6, v5

    iget-boolean v7, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;->g:Z

    move-object v5, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->g:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->RATIO_1_1:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->RATIO_4_5:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->RATIO_2_3:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->RATIO_9_16:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->RATIO_16_9:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

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

.method public static final e(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    const-string v4, ""

    if-eqz v3, :cond_53

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;

    if-eqz v9, :cond_2

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->c:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v13

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->e:Ljava/lang/String;

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v15

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->g:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v16

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->h:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    :goto_1
    iget-boolean v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->i:Z

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/AssetArticleSection;->j:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v8, :cond_1

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    move-object/from16 v21, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v7

    :goto_2
    move/from16 v18, v5

    goto :goto_3

    :cond_1
    move-object/from16 v21, v1

    const/16 v19, 0x0

    goto :goto_2

    :goto_3
    invoke-direct/range {v9 .. v19}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    :goto_5
    const/16 v13, 0xa

    goto/16 :goto_48

    :cond_2
    move-object/from16 v21, v1

    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;

    if-eqz v1, :cond_9

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->b:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v1

    move-object v12, v1

    goto :goto_6

    :cond_3
    const/4 v12, 0x0

    :goto_6
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v1, :cond_4

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v5

    goto :goto_7

    :cond_4
    const/4 v14, 0x0

    :goto_7
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CarouselArticleSection;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    new-instance v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v9

    goto :goto_9

    :cond_5
    const/4 v9, 0x0

    :goto_9
    iget-object v13, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-eqz v13, :cond_6

    invoke-static {v13}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v13

    goto :goto_a

    :cond_6
    const/4 v13, 0x0

    :goto_a
    iget-object v15, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v7

    goto :goto_b

    :cond_7
    const/4 v7, 0x0

    :goto_b
    invoke-direct {v8, v9, v13, v15, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    new-instance v13, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_4

    :cond_9
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;

    if-eqz v1, :cond_d

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;->b:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    new-instance v7, Lkotlin/Pair;

    iget-object v9, v5, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v5}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v5

    invoke-direct {v7, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_a
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v1, :cond_b

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v5

    goto :goto_d

    :cond_b
    const/4 v13, 0x0

    :goto_d
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/CtaListArticleSection;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v1, :cond_c

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v5

    goto :goto_e

    :cond_c
    const/4 v14, 0x0

    :goto_e
    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_4

    :cond_d
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;

    if-eqz v1, :cond_e

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v9, v1, v7, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_e
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;

    if-eqz v1, :cond_1a

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->a:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->b:Ljava/util/List;

    if-eqz v1, :cond_13

    check-cast v1, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;

    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;->a:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;->b:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v13, :cond_f

    invoke-static {v13}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v13

    goto :goto_10

    :cond_f
    const/4 v13, 0x0

    :goto_10
    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;

    if-eqz v11, :cond_11

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;->b:Ljava/lang/String;

    iget-object v7, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;->a:Ljava/lang/String;

    if-eqz v7, :cond_10

    sget-object v17, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v7

    goto :goto_11

    :cond_10
    const/16 v23, 0x0

    :goto_11
    iget-object v7, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;->c:Ljava/lang/String;

    iget-boolean v5, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;->d:Z

    iget-boolean v11, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;->e:Z

    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    const/16 v29, 0x20

    const/16 v30, 0x0

    const/16 v28, 0x0

    move/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v11

    move-object/from16 v24, v15

    invoke-direct/range {v22 .. v30}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v22

    :goto_12
    const/4 v7, 0x0

    goto :goto_13

    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    :goto_13
    invoke-direct {v12, v14, v13, v5, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_12
    move-object v11, v9

    goto :goto_14

    :cond_13
    const/4 v11, 0x0

    :goto_14
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v1, :cond_14

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v5

    goto :goto_15

    :cond_14
    const/4 v14, 0x0

    :goto_15
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->d:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_16

    const/4 v5, 0x2

    if-ne v1, v5, :cond_15

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;->MARIE_LOUISE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    :goto_16
    move-object v12, v1

    goto :goto_18

    :cond_15
    invoke-static {}, Lv40;->g()V

    :goto_17
    const/16 v20, 0x0

    return-object v20

    :cond_16
    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;->REGULAR:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    goto :goto_16

    :goto_18
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->e:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_18

    const/4 v5, 0x2

    if-ne v1, v5, :cond_17

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;->IMAGE_ONLY:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    :goto_19
    move-object v13, v1

    goto :goto_1a

    :cond_17
    invoke-static {}, Lv40;->g()V

    goto :goto_17

    :cond_18
    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;->FULL_DETAILS:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    goto :goto_19

    :goto_1a
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v1

    move-object v15, v1

    goto :goto_1b

    :cond_19
    const/4 v15, 0x0

    :goto_1b
    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V

    goto/16 :goto_4

    :cond_1a
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;

    if-eqz v1, :cond_27

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->b:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->c:Ljava/lang/String;

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v26

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->e:Ljava/lang/String;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v28

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->g:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->h:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v30

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->i:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v31

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->j:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    sget-object v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->b:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1c

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1b

    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;->PARAGRAPH:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;

    :goto_1c
    move-object/from16 v32, v11

    goto :goto_1d

    :cond_1b
    invoke-static {}, Lv40;->g()V

    goto :goto_17

    :cond_1c
    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;->CITATION:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;

    goto :goto_1c

    :goto_1d
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->k:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    sget-object v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->c:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1f

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1e

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1d

    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;->LEFT:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;

    :goto_1e
    move-object/from16 v33, v11

    goto :goto_1f

    :cond_1d
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_17

    :cond_1e
    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;->RIGHT:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;

    goto :goto_1e

    :cond_1f
    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;->CENTER:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;

    goto :goto_1e

    :goto_1f
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->l:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v11, :cond_20

    invoke-static {v11}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v11

    move-object/from16 v34, v11

    goto :goto_20

    :cond_20
    const/16 v34, 0x0

    :goto_20
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->m:Ljava/util/List;

    if-eqz v11, :cond_22

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_21
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/Pair;

    new-instance v14, Lkotlin/Pair;

    iget-object v15, v13, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v13, v13, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v13}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_21
    move-object/from16 v35, v12

    goto :goto_22

    :cond_22
    const/16 v35, 0x0

    :goto_22
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->n:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v11, :cond_23

    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v12, v13, v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v36, v12

    goto :goto_23

    :cond_23
    const/16 v36, 0x0

    :goto_23
    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->o:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v11, :cond_24

    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v12, v13, v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v37, v12

    goto :goto_24

    :cond_24
    const/16 v37, 0x0

    :goto_24
    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;->p:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;

    if-eqz v8, :cond_26

    new-instance v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;->b:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    if-eqz v8, :cond_25

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    move-result-object v8

    goto :goto_25

    :cond_25
    const/4 v8, 0x0

    :goto_25
    invoke-direct {v11, v12, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V

    move-object/from16 v38, v11

    goto :goto_26

    :cond_26
    const/16 v38, 0x0

    :goto_26
    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-direct/range {v22 .. v38}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;)V

    :goto_27
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v9, v22

    goto/16 :goto_5

    :cond_27
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;

    if-eqz v1, :cond_29

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoArticleSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;->b:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v5

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v7, :cond_28

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v7

    goto :goto_28

    :cond_28
    const/4 v7, 0x0

    :goto_28
    invoke-direct {v9, v1, v5, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoArticleSectionUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;)V

    goto/16 :goto_4

    :cond_29
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    if-eqz v1, :cond_2f

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->b:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->c:Ljava/lang/String;

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v26

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->e:Ljava/lang/String;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    move-result-object v28

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->g:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v29

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->h:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;

    if-eqz v10, :cond_2a

    new-instance v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;->b:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;->c:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleVideo;->d:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v11

    goto :goto_29

    :cond_2a
    const/16 v30, 0x0

    :goto_29
    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->i:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_2b
    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->j:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-eqz v10, :cond_2c

    invoke-static {v10}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v10

    move-object/from16 v32, v10

    goto :goto_2b

    :cond_2c
    const/16 v32, 0x0

    :goto_2b
    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->k:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v10, :cond_2d

    invoke-static {v10}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v10

    move-object/from16 v33, v10

    goto :goto_2c

    :cond_2d
    const/16 v33, 0x0

    :goto_2c
    iget-boolean v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->l:Z

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->m:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v8, :cond_2e

    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v12, v13, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v35, v12

    goto :goto_2d

    :cond_2e
    const/16 v35, 0x0

    :goto_2d
    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v27, v9

    move/from16 v34, v10

    move-object/from16 v31, v11

    invoke-direct/range {v22 .. v35}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_27

    :cond_2f
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;

    if-eqz v1, :cond_33

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->c:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->d:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->e:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v1, :cond_30

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v1

    move-object v14, v1

    goto :goto_2e

    :cond_30
    const/4 v14, 0x0

    :goto_2e
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-eqz v1, :cond_31

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v1

    move-object v15, v1

    goto :goto_2f

    :cond_31
    const/4 v15, 0x0

    :goto_2f
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->g:Ljava/util/List;

    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    const/16 v26, 0x7

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v27}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/WallpaperArticleSection;->h:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v5, :cond_32

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v7, v8, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v7

    :goto_30
    move-object/from16 v16, v1

    goto :goto_31

    :cond_32
    const/16 v18, 0x0

    goto :goto_30

    :goto_31
    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_4

    :cond_33
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;

    if-eqz v1, :cond_35

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionList;->b:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v5, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionPanel;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionPanelUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionPanel;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleExpansionPanel;->b:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionPanelUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_34
    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;

    invoke-direct {v9, v1, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_4

    :cond_35
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;

    if-eqz v1, :cond_38

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;->b:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;->c:Ljava/lang/String;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;

    iget-object v15, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;->b:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v18

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v9}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v17

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v5}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v19

    new-instance v14, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;

    move-object/from16 v16, v7

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_36
    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v1, :cond_37

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v7, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v5

    goto :goto_34

    :cond_37
    const/4 v14, 0x0

    :goto_34
    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_4

    :cond_38
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;

    if-eqz v1, :cond_3c

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;->b:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;

    new-instance v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v7, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;

    iget-object v12, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;->a:Ljava/lang/String;

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;->b:Ljava/lang/String;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;->c:Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/16 v2, 0xa

    invoke-static {v14, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_39
    iget-object v2, v11, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    if-eqz v2, :cond_3a

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    move-result-object v2

    goto :goto_37

    :cond_3a
    const/4 v2, 0x0

    :goto_37
    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;

    invoke-direct {v3, v12, v13, v15, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_35

    :cond_3b
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct {v8, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;-><init>(Ljava/util/List;)V

    invoke-direct {v9, v1, v5, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;)V

    goto/16 :goto_5

    :cond_3c
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;

    if-eqz v1, :cond_43

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;->a:Ljava/lang/String;

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;->b:Ljava/lang/String;

    if-nez v2, :cond_3d

    move-object v2, v4

    :cond_3d
    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v5, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_3e
    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;->b:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    sget-object v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->d:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_40

    const/4 v12, 0x2

    if-ne v5, v12, :cond_3f

    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;->MARIE_LOUISE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    goto :goto_39

    :cond_3f
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_17

    :cond_40
    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;->REGULAR:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    :goto_39
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    sget-object v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->e:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_42

    const/4 v12, 0x2

    if-ne v3, v12, :cond_41

    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;->IMAGE_ONLY:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    goto :goto_3a

    :cond_41
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_17

    :cond_42
    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;->FULL_DETAILS:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    :goto_3a
    new-instance v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;

    invoke-direct {v8, v7, v5, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;)V

    invoke-direct {v9, v1, v2, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;)V

    goto/16 :goto_48

    :cond_43
    const/16 v13, 0xa

    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;

    if-eqz v1, :cond_44

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAuthenticationSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;->a:Ljava/lang/String;

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;->c:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;->d:Ljava/lang/String;

    invoke-direct {v9, v1, v2, v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAuthenticationSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    :cond_44
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;

    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->a:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->b:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->b:Ljava/lang/String;

    invoke-direct {v7, v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->b:Ljava/lang/String;

    invoke-direct {v9, v10, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->e:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v27

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v28

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->g:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v29

    invoke-static {v5}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    move-result-object v30

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_UPCOMING:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    if-ne v10, v11, :cond_45

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    if-eqz v5, :cond_45

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_45

    const/16 v31, 0x1

    goto :goto_3b

    :cond_45
    move/from16 v31, v2

    :goto_3b
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->c:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_47

    const/4 v12, 0x2

    if-ne v2, v12, :cond_46

    sget-object v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->PORTRAIT:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    :goto_3c
    move-object/from16 v32, v2

    goto :goto_3d

    :cond_46
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_17

    :cond_47
    sget-object v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->LANDSCAPE:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    goto :goto_3c

    :goto_3d
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->i:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;

    if-eqz v2, :cond_48

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;->a:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowContent;->c:Ljava/lang/String;

    invoke-direct {v5, v10, v11, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v33, v5

    goto :goto_3e

    :cond_48
    const/16 v33, 0x0

    :goto_3e
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->j:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v2, :cond_49

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v10, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v5

    goto :goto_3f

    :cond_49
    const/16 v34, 0x0

    :goto_3f
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFashionShowSection;->k:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v2, :cond_4a

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v5, v8, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v35, v5

    :goto_40
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v9

    goto :goto_41

    :cond_4a
    const/16 v35, 0x0

    goto :goto_40

    :goto_41
    invoke-direct/range {v22 .. v35}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;ZLcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    :goto_42
    move-object/from16 v9, v22

    goto/16 :goto_48

    :cond_4b
    instance-of v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;

    if-eqz v1, :cond_50

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v1

    new-instance v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;

    iget-object v3, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->b:Ljava/lang/String;

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    new-instance v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->b:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTitles;->b:Ljava/lang/String;

    invoke-direct {v10, v11, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->e:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v27

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->f:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-result-object v28

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->g:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;

    if-eqz v7, :cond_4c

    new-instance v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;

    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;->a:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventContent;->c:Ljava/lang/String;

    invoke-direct {v11, v12, v14, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v11

    goto :goto_43

    :cond_4c
    const/16 v29, 0x0

    :goto_43
    if-eqz v1, :cond_4d

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4d

    move/from16 v31, v12

    goto :goto_44

    :cond_4d
    move/from16 v31, v2

    :goto_44
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->i:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v2, :cond_4e

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v7, v11, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v32, v7

    goto :goto_45

    :cond_4e
    const/16 v32, 0x0

    :goto_45
    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleEventSection;->j:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    if-eqz v2, :cond_4f

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v7, v8, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v33, v7

    :goto_46
    move-object/from16 v30, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    goto :goto_47

    :cond_4f
    const/16 v33, 0x0

    goto :goto_46

    :goto_47
    invoke-direct/range {v22 .. v33}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;Ljava/time/Instant;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    goto/16 :goto_42

    :cond_50
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Unknown;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Unknown;

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Unknown;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Unknown;

    :goto_48
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v1, v21

    goto/16 :goto_0

    :cond_51
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_17

    :cond_52
    move-object/from16 v21, v1

    move-object/from16 v18, v2

    const/16 v20, 0x0

    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v5

    goto :goto_49

    :cond_53
    move-object/from16 v21, v1

    move-object/from16 v18, v2

    const/16 v20, 0x0

    move-object/from16 v3, v20

    :goto_49
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    if-eqz v1, :cond_55

    new-instance v5, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->d:Lcom/vuitton/foundation/model/domain/model/common/Sound;

    iget-wide v6, v2, Lcom/vuitton/foundation/model/domain/model/common/Sound;->c:J

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/common/Sound;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->c:Ljava/lang/String;

    if-nez v1, :cond_54

    move-object v11, v4

    goto :goto_4a

    :cond_54
    move-object v11, v1

    :goto_4a
    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_4b

    :cond_55
    move-object/from16 v4, v20

    :goto_4b
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    if-eqz v1, :cond_57

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    if-eqz v1, :cond_56

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    move-result-object v1

    goto :goto_4c

    :cond_56
    move-object/from16 v1, v20

    :goto_4c
    invoke-direct {v2, v6, v5, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V

    move-object v5, v2

    goto :goto_4d

    :cond_57
    move-object/from16 v5, v20

    :goto_4d
    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    move-object/from16 v2, v18

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;Ljava/lang/String;)V

    return-object v0
.end method
