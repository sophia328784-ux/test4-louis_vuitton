.class public abstract Lcom/vuitton/android/data/dto/storemode/mapper/StoreModeMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;)Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    const/16 v3, 0xa

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;->b:Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/android/data/dto/storemode/mapper/StoreModeSectionMapperKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;->SIMPLE:Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;->c:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;

    if-eqz v10, :cond_5

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;

    check-cast v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v13}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v13

    iget-object v0, v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-static {v14, v0, v2}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    invoke-direct {v10, v11, v12, v13, v0}, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    goto :goto_4

    :cond_5
    sget-object v10, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v10, v2

    :goto_4
    invoke-direct {v3, v8, v9, v10}, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_8
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
