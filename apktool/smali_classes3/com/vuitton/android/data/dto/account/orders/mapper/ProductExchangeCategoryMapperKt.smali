.class public abstract Lcom/vuitton/android/data/dto/account/orders/mapper/ProductExchangeCategoryMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/orders/mapper/ProductExchangeCategoryMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    sget-object v3, Lcom/vuitton/android/data/dto/account/orders/mapper/ProductExchangeCategoryMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    :goto_0
    move-object v3, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;->TEXT:Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    iget-object v5, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p0, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;->a:Ljava/lang/String;

    iget-object v10, v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;->d:Z

    iget-object v7, v7, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;->e:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/vuitton/android/data/dto/account/orders/mapper/ProductExchangeCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;

    move-result-object v7

    move-object v13, v7

    goto :goto_3

    :cond_2
    move-object v13, v0

    :goto_3
    invoke-direct/range {v8 .. v13}, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;ZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
