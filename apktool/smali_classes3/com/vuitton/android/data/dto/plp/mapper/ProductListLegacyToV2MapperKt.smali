.class public abstract Lcom/vuitton/android/data/dto/plp/mapper/ProductListLegacyToV2MapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;Lkotlin/jvm/functions/Function1;Z)Lcom/vuitton/foundation/model/domain/model/plp/ProductList;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_2

    check-cast v7, Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;

    iget-object v9, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->a:Ljava/lang/String;

    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    const-string v10, "-products-"

    invoke-static {v6, v9, v10}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;->b:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v10, p1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    invoke-direct {v7, v6, v9}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget v5, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->e:I

    iget-object p1, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    move-result-object v6

    iget-object v7, p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->g:Ljava/lang/Integer;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;Ljava/lang/Integer;)V

    return-object v0
.end method
