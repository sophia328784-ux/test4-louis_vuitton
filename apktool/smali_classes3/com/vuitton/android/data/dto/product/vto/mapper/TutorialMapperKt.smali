.class public abstract Lcom/vuitton/android/data/dto/product/vto/mapper/TutorialMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/vto/mapper/TutorialMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/vto/TutorialDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    iget-object v6, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;

    iget-object v10, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;->a:Ljava/lang/String;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;->b:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;

    sget-object v12, Lcom/vuitton/android/data/dto/product/vto/mapper/TutorialMapperKt$WhenMappings;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;->STEPS:Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_2
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;->ASSET_LIST:Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;

    :goto_2
    iget-object v9, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;->c:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;

    instance-of v12, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;

    if-eqz v12, :cond_4

    check-cast v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;->a:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v13}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v9, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;

    invoke-direct {v9, v12}, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;-><init>(Ljava/util/List;)V

    goto :goto_4

    :cond_4
    instance-of v12, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;

    if-eqz v12, :cond_5

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;

    check-cast v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;

    iget-object v13, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;->a:Ljava/lang/String;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;->b:Ljava/util/List;

    invoke-direct {v12, v13, v9}, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v9, v12

    :goto_4
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;

    invoke-direct {v12, v10, v11, v9}, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;)V

    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_6
    move-object v5, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
