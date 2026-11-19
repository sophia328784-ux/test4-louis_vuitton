.class public abstract Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->d:Ljava/util/List;

    const-string v4, ""

    const/16 v5, 0xa

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/connectivity/common/FaqItemDto;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/connectivity/common/FaqItemDto;->a:Ljava/lang/String;

    if-nez v9, :cond_0

    move-object v9, v4

    :cond_0
    iget-object v7, v7, Lcom/vuitton/android/data/dto/connectivity/common/FaqItemDto;->b:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v4

    :cond_1
    invoke-direct {v8, v9, v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->e:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpFaqPdfDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpFaqPdfDto;->a:Ljava/lang/String;

    if-nez v8, :cond_4

    move-object v8, v4

    :cond_4
    iget-object v5, v5, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpFaqPdfDto;->b:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v5, v4

    :cond_5
    invoke-direct {v7, v8, v5}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_7
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;-><init>()V

    throw p0
.end method
