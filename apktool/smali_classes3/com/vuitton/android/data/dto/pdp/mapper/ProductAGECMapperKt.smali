.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/ProductAGECMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;)Ljava/util/ArrayList;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;->a:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v5, v3

    :cond_0
    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-direct {v4, v5, v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;->b:Ljava/util/List;

    if-eqz p0, :cond_8

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_4

    move-object v6, v3

    :cond_4
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;->b:Ljava/util/List;

    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/pdp/ProductAGECValueDto;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/pdp/ProductAGECValueDto;->c:Ljava/lang/String;

    if-nez v8, :cond_5

    move-object v8, v3

    :cond_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;

    invoke-direct {v5, v6, v7, v2}, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
