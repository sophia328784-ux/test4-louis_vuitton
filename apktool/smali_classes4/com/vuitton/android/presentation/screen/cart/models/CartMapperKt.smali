.class public abstract Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    if-eqz p0, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;->d:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v9, p0}, Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v10, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    iget-wide v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/cart/Cart;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    invoke-static {v5, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartItem;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    iget-boolean v6, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    iget-boolean v8, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    if-eqz p0, :cond_3

    iget p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->b:I

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->c:Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;

    invoke-direct {p0, v9, p2, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;-><init>(Ljava/util/List;IZ)V

    move-object v9, p0

    goto :goto_3

    :cond_3
    move-object v9, p2

    :goto_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->e:Ljava/lang/String;

    sget-object v6, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;)V

    return-object v0
.end method
