.class public abstract Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->z:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v5, :cond_4

    iget-wide v8, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x0

    :goto_4
    invoke-static {v8, v9}, Lcom/vuitton/android/core/extensions/NumberExtKt;->b(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v8, ","

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v9, ","

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz p0, :cond_7

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    :cond_7
    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    move-object v10, v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v5
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$FullScreen;

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v0

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v8

    aput-object v2, v0, v7

    aput-object v10, v0, v6

    aput-object v11, v0, v5

    aput-object v12, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/cart"

    const-string v12, "cart"

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_0
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSectionClick;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v0

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v8

    aput-object v2, v0, v7

    aput-object v10, v0, v6

    aput-object v11, v0, v5

    aput-object v12, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "buypath/myshoppingbag"

    const/4 v12, 0x0

    const-string v13, "cart_page"

    const-string v14, "open_perfumes_samples"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v1

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->d:Ljava/util/List;

    invoke-direct {v2, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v12, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v13, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v8

    aput-object v10, v0, v7

    aput-object v11, v0, v6

    aput-object v12, v0, v5

    aput-object v13, v0, v4

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "buypath/myshoppingbag"

    const/4 v12, 0x0

    const-string v13, "cart_page"

    const-string v14, "perfume_sample_selection"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_2
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ProceedToCheckoutClick;

    const-string v10, ""

    if-eqz v2, :cond_e

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v9

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    new-instance v7, Ljh;

    const/16 v2, 0xc

    invoke-direct {v7, v2}, Ljh;-><init>(I)V

    const/16 v8, 0x1e

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_1

    :cond_4
    move-object/from16 v17, v9

    :goto_1
    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    new-instance v18, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v7, :cond_5

    iget-wide v7, v7, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v22, v7

    goto :goto_3

    :cond_5
    move-object/from16 v22, v9

    :goto_3
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    move-object/from16 v23, v5

    goto :goto_4

    :cond_6
    move-object/from16 v23, v9

    :goto_4
    iget v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v25}, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_5
    move-object/from16 v22, v2

    goto :goto_6

    :cond_8
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_5

    :goto_6
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v1, v9

    :goto_7
    if-nez v1, :cond_a

    move-object/from16 v18, v10

    goto :goto_8

    :cond_a
    move-object/from16 v18, v1

    :goto_8
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    move-object/from16 v19, v1

    goto :goto_9

    :cond_b
    move-object/from16 v19, v9

    :goto_9
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_a

    :cond_c
    move-object/from16 v20, v9

    :goto_a
    if-eqz v0, :cond_d

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    :cond_d
    move-object/from16 v21, v9

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;

    const/16 v23, 0x10

    const/16 v24, 0x0

    const-string v12, "buypath/myshoppingbag"

    const/4 v13, 0x0

    const-string v14, "cart_page"

    const-string v15, "proceed_checkout"

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    :cond_e
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;

    if-eqz v2, :cond_f

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v1

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v3, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v10, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v1, v8

    aput-object v2, v1, v7

    aput-object v3, v1, v6

    aput-object v10, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "buypath/myshoppingbag"

    const-string v13, "cart_page"

    const-string v14, "out_of_stock"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_f
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;

    if-eqz v2, :cond_10

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v1

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v12, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v1, v8

    aput-object v2, v1, v7

    aput-object v10, v1, v6

    aput-object v11, v1, v5

    aput-object v12, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "buypath/myshoppingbag"

    const/4 v12, 0x0

    const-string v13, "cart_page"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_10
    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;

    if-eqz v2, :cond_15

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->b:Ljava/lang/String;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v15, v14}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    move/from16 v16, v4

    if-eqz v2, :cond_11

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v4, :cond_11

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    :cond_11
    if-nez v9, :cond_12

    goto :goto_b

    :cond_12
    move-object v10, v9

    :goto_b
    invoke-direct {v15, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v2, :cond_13

    iget-wide v9, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    goto :goto_c

    :cond_13
    const-wide/16 v9, 0x0

    :goto_c
    invoke-static {v9, v10}, Lcom/vuitton/android/core/extensions/NumberExtKt;->b(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->c:Ljava/lang/String;

    if-nez v0, :cond_14

    iget v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->z:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-array v1, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v13, v1, v8

    aput-object v15, v1, v7

    aput-object v4, v1, v6

    aput-object v2, v1, v5

    aput-object v0, v1, v16

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x21

    const/16 v20, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    const-string v13, "buypath/myshoppingbag"

    const-string v15, "cart_page"

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    :cond_15
    move/from16 v16, v4

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;

    if-eqz v2, :cond_18

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;

    move-result-object v1

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;->a:Z

    if-eqz v0, :cond_16

    const-string v0, "add_shopping_bag"

    :goto_d
    move-object/from16 v22, v0

    goto :goto_e

    :cond_16
    const-string v0, "remove_shopping_bag"

    goto :goto_d

    :goto_e
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->a:Ljava/lang/Boolean;

    invoke-direct {v4, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;-><init>(Ljava/lang/Boolean;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->b:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;->c:Ljava/lang/String;

    invoke-direct {v10, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v1, v8

    aput-object v2, v1, v7

    aput-object v4, v1, v6

    aput-object v9, v1, v5

    aput-object v10, v1, v16

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x21

    const/16 v26, 0x0

    const/16 v18, 0x0

    const-string v19, "buypath/myshoppingbag"

    const/16 v20, 0x0

    const-string v21, "cart_page"

    const/16 v23, 0x0

    invoke-direct/range {v17 .. v26}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17

    :cond_17
    return-object v9

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;

    if-eqz v1, :cond_19

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "buypath/myshoppingbag"

    const-string v13, "AddToWishlist"

    const-string v14, "cart_page"

    const-string v15, "e-commerce_interaction"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_19
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;

    if-eqz v1, :cond_1a

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "buypath/myshoppingbag"

    const-string v13, "AddToWishlist/Success"

    const-string v14, "cart_page"

    const-string v15, "e-commerce_interaction"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_1a
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "cart"

    const-string v13, "open_myLV"

    const-string v14, "cart_page"

    const-string v15, "click"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_1b
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenContactUs;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenContactUs;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "cart"

    const-string v13, "open_contact_us"

    const-string v14, "cart_page"

    const-string v15, "click"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_1c
    invoke-static {}, Lv40;->g()V

    return-object v9
.end method
