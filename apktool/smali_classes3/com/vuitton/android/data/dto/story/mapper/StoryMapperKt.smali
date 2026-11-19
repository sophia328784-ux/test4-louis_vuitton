.class public abstract Lcom/vuitton/android/data/dto/story/mapper/StoryMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/story/StoryDto;)Lcom/vuitton/foundation/model/domain/model/story/Story;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/story/StoryDto;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/story/StoryDto;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/data/dto/story/StoryDto;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/story/StoryDto;->d:Ljava/util/List;

    if-eqz p0, :cond_b

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->a:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v1

    :cond_3
    iget-object v8, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->b:Ljava/lang/String;

    if-nez v8, :cond_4

    move-object v8, v1

    :cond_4
    iget-object v9, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->d:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->e:Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;

    const/4 v12, 0x0

    if-eqz v11, :cond_7

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v14, :cond_5

    invoke-static {v14}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v14

    goto :goto_1

    :cond_5
    move-object v14, v12

    :goto_1
    iget-object v11, v11, Lcom/vuitton/android/data/dto/story/StoryDto$StoryAssetDto;->b:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz v11, :cond_6

    invoke-static {v11}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    goto :goto_2

    :cond_6
    move-object v11, v12

    :goto_2
    invoke-direct {v13, v14, v11}, Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;-><init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V

    move-object v11, v13

    goto :goto_3

    :cond_7
    move-object v11, v12

    :goto_3
    iget-object v5, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto;->f:Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;

    if-eqz v5, :cond_a

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/story/StoryCta;

    iget-object v13, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;->a:Ljava/lang/String;

    if-nez v13, :cond_8

    move-object v13, v1

    :cond_8
    iget-object v5, v5, Lcom/vuitton/android/data/dto/story/StoryDto$StoryCtaDto;->b:Ljava/lang/String;

    if-nez v5, :cond_9

    move-object v5, v1

    :cond_9
    invoke-direct {v12, v13, v5}, Lcom/vuitton/foundation/model/domain/model/story/StoryCta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-direct/range {v6 .. v12}, Lcom/vuitton/foundation/model/domain/model/story/StorySlide;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;Lcom/vuitton/foundation/model/domain/model/story/StoryCta;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_c
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/story/Story;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/vuitton/foundation/model/domain/model/story/Story;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method
