.class public abstract Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceSectionMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;)Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;->PDP:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;->a:Ljava/util/List;

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceMapperKt;->a(Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;)Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;->CART:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;->b:Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceMapperKt;->a(Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;)Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
