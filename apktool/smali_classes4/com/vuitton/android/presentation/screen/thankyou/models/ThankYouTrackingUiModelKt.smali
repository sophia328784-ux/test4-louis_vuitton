.class public abstract Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModelKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p1

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->i:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;->a:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    iget-wide v6, v6, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->k:Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    iget-wide v6, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;

    iget v2, v2, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    move-object v11, v2

    iget v12, v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const-string v1, "pdp"

    :goto_3
    move-object v13, v1

    goto :goto_4

    :cond_4
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const-string v1, "cart"

    goto :goto_3

    :goto_4
    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->a:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    move-wide/from16 v16, v6

    move-object v7, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v2 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;-><init>(Ljava/util/List;Ljava/util/List;DLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0
.end method
