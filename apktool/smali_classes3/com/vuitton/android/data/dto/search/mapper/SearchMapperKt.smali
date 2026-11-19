.class public abstract Lcom/vuitton/android/data/dto/search/mapper/SearchMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/search/mapper/SearchMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/search/LiveSearchDto;)Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->b:Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;

    sget-object v3, Lcom/vuitton/android/data/dto/search/mapper/SearchMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;->SUGGESTION_RESULT:Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;->SEARCHING_RESULT:Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->c:Ljava/util/List;

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/search/TrendingDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/search/Trending;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/search/TrendingDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/search/TrendingDto;->b:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/vuitton/foundation/model/domain/model/search/Trending;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;

    invoke-direct {p0, v1, v0, v4}, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;Ljava/util/List;)V

    return-object p0
.end method
