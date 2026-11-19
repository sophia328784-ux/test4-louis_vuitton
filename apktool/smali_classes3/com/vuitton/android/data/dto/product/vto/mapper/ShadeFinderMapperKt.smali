.class public abstract Lcom/vuitton/android/data/dto/product/vto/mapper/ShadeFinderMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    move-result-object v4

    iget-object v5, v2, Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;->c:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;->b(Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;-><init>(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;

    invoke-direct {p0, v0, v1}, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;)Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;

    if-eqz v2, :cond_0

    new-instance v4, Lcom/vuitton/android/data/dto/product/vto/CheekboneDto;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2}, Lcom/vuitton/android/data/dto/product/vto/CheekboneDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;

    if-eqz v2, :cond_1

    new-instance v5, Lcom/vuitton/android/data/dto/product/vto/EyelidDto;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->c:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->d:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->e:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->f:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->g:Ljava/lang/String;

    iget-object v13, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;->h:Ljava/lang/String;

    invoke-direct/range {v5 .. v13}, Lcom/vuitton/android/data/dto/product/vto/EyelidDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;

    if-eqz v5, :cond_2

    new-instance v6, Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->b:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->d:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->e:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->f:Ljava/lang/String;

    iget-object v13, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->g:Ljava/lang/String;

    iget-object v14, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->h:Ljava/lang/String;

    iget-object v15, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->i:Ljava/lang/String;

    iget-object v3, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->j:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;->k:Ljava/lang/String;

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    :goto_2
    move-object v5, v1

    move-object v1, v4

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->d:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->e:Ljava/util/List;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->f:Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;

    if-eqz v7, :cond_3

    new-instance v8, Lcom/vuitton/android/data/dto/product/vto/NoseDto;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Lcom/vuitton/android/data/dto/product/vto/NoseDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;

    if-eqz v7, :cond_4

    new-instance v9, Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->b:Ljava/lang/String;

    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->c:Ljava/lang/String;

    iget-object v13, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->d:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;->e:Ljava/lang/String;

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;->h:Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;

    if-eqz v0, :cond_5

    new-instance v9, Lcom/vuitton/android/data/dto/product/vto/MetadataDto;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;->b:Ljava/lang/String;

    invoke-direct {v9, v10, v0}, Lcom/vuitton/android/data/dto/product/vto/MetadataDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v6, v8

    move-object v8, v9

    goto :goto_6

    :cond_5
    move-object v0, v6

    move-object v6, v8

    const/4 v8, 0x0

    :goto_6
    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;-><init>(Lcom/vuitton/android/data/dto/product/vto/CheekboneDto;Lcom/vuitton/android/data/dto/product/vto/EyelidDto;Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/product/vto/NoseDto;Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;Lcom/vuitton/android/data/dto/product/vto/MetadataDto;)V

    return-object v0
.end method
