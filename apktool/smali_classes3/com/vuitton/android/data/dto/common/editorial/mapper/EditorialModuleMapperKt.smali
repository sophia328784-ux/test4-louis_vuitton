.class public abstract Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt$WhenMappings;->a:[I

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

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->SKUS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->LAST_VIEWED_PRODUCTS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v0, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v6

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->MARIELOUISE_LEFT:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->MARIELOUISE_CENTERED:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->FULL_WIDTH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->f:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->l(Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    move-result-object v8

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v1

    :cond_6
    move-object v9, v1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object v2
.end method

.method public static final c(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->j(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v1

    :cond_2
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object p0
.end method

.method public static final d(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v7

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;->c:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    invoke-direct {v3, v6, v7, v2}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v1

    :cond_3
    move-object v6, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    return-object v2
.end method

.method public static final e(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->j(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object v1
.end method

.method public static final f(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v0, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v6

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->l(Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    move-result-object v7

    iget-object v8, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v1

    :cond_3
    move-object v9, v1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object v2
.end method

.method public static final g(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v3

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->l(Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    move-result-object v4

    iget-object v5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->g:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v1

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->f:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->h:Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt$WhenMappings;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v8, p0

    const/4 v8, 0x1

    if-eq p0, v8, :cond_2

    const/4 v8, 0x2

    if-ne p0, v8, :cond_1

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->PORTRAIT:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    :goto_1
    move-object v8, p0

    move-object v7, v1

    move-object v1, p1

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->LANDSCAPE:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V

    return-object v0
.end method

.method public static final h(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v4

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    sget-object v6, Lcom/vuitton/android/data/dto/common/mapper/IconMapperKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/common/Icon;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/common/Icon;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    move-object v1, v5

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v5

    :cond_2
    move-object v6, v5

    move-object v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Icon;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    return-object v0
.end method

.method public static final i(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->j(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object v1
.end method

.method public static final j(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v4

    iget-object v5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v6, v5, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, ""

    :cond_1
    iget-object v5, v5, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->c:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v5

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object v3

    :cond_2
    move-object v8, v5

    move-object v5, v3

    move-object v3, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    return-object v0
.end method

.method public static final k(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final l(Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt$WhenMappings;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_1X1:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_9X16:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_16X9:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_4X5:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_2X3:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    return-object p0

    nop

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

.method public static final m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;

    iget v3, v1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    iget v4, v1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    iget v1, v1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;-><init>(FFI)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;-><init>(Ljava/util/List;)V

    return-object p0
.end method
