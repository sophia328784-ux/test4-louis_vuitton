.class public abstract Lcom/vuitton/android/data/dto/product/sizeguide/mapper/SizeGuideMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;)Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;->a:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->j:Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->i:Ljava/util/List;

    const-string v4, ""

    if-nez v1, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    iget-object v7, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    check-cast v3, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->h:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v11, v4

    goto :goto_4

    :cond_6
    move-object v11, v1

    :goto_4
    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    move-object v12, v4

    goto :goto_5

    :cond_7
    move-object v12, v1

    :goto_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;)Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    move-result-object v1

    new-instance v3, Lav0;

    const/16 v5, 0x14

    invoke-direct {v3, v5}, Lav0;-><init>(I)V

    invoke-static {v1, v3}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->p(Lkotlin/sequences/TransformingSequence;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;)Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    move-result-object v1

    new-instance v2, Lav0;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lav0;-><init>(I)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->p(Lkotlin/sequences/TransformingSequence;)Ljava/util/Map;

    move-result-object v14

    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v15, v4

    goto :goto_6

    :cond_8
    move-object v15, v1

    :goto_6
    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->f:Ljava/util/List;

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;

    move-object/from16 p0, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto;->b:Ljava/lang/String;

    if-nez v3, :cond_9

    move-object v3, v4

    :cond_9
    invoke-direct {v5, v1, v3}, Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_7

    :cond_a
    :goto_8
    move-object/from16 v16, v2

    goto :goto_9

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    :goto_9
    iget-object v0, v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->k:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;

    move-object/from16 v17, v0

    invoke-direct/range {v5 .. v17}, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v5
.end method
