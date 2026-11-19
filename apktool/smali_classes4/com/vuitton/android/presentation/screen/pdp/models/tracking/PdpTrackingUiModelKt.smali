.class public abstract Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_1

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_1
    move-object v8, v4

    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "LVPass/ProductSheet/"

    if-eqz v3, :cond_8

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-ne v3, v5, :cond_2

    const-string v3, "online_sellable"

    goto :goto_1

    :cond_2
    const-string v3, "not_sellable_online"

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v7, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    if-ne v7, v5, :cond_3

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;->b:Z

    if-eqz v7, :cond_3

    move v4, v5

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-ne v1, v5, :cond_4

    const-string v1, "InStock"

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    const-string v1, "backinstock"

    goto :goto_2

    :cond_5
    const-string v1, "outstock"

    :goto_2
    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "/productsheet/"

    invoke-static {v4, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;

    invoke-direct {v5, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;

    invoke-direct {v3, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;

    if-eqz v1, :cond_6

    const-string v1, "exclusive_sales/eligible"

    goto :goto_3

    :cond_6
    const-string v1, "exclusive_sales/coming_soon"

    :goto_3
    invoke-direct {v3, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;->c:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v4}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v14

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v10, 0x0

    const-string v13, "product_sheet"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_8
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBannerArModelClickEvent;

    if-eqz v3, :cond_9

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "nomade_preview_in_3D"

    const-string v13, "product_sheet"

    const-string v14, "play_nomade_AR"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_9
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCallForAvailabilityEvent;

    if-eqz v3, :cond_a

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "CallForAvailability"

    const-string v13, "product_sheet"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_a
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnClickOnFindInStoreEvent;

    if-eqz v3, :cond_b

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "find_store"

    const-string v13, "popin/locate_in_store"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_b
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayNotECommerceInfoEvent;

    if-eqz v3, :cond_c

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "not_ecommerce"

    const-string v13, "product_sheet"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_c
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnGoToWebsiteProductPageEvent;

    if-eqz v3, :cond_d

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "website"

    const-string v13, "product_sheet"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_d
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareButtonEvent;

    if-eqz v3, :cond_e

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "share_intention"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_e
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;

    if-eqz v3, :cond_10

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;->b:Z

    if-eqz v0, :cond_f

    const-string v0, "right"

    goto :goto_4

    :cond_f
    const-string v0, "left"

    :goto_4
    const-string v1, "swipe_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_10
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToWishlistEvent;

    if-eqz v3, :cond_11

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "AddToWishlist"

    const-string v13, "product_sheet"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_11
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;

    if-eqz v3, :cond_12

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "AddToWishlist/Success"

    const-string v13, "productlist"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_12
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;

    const/4 v7, 0x0

    if-eqz v3, :cond_17

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-static {v6, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-wide v3, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_5

    :cond_13
    move-object v1, v7

    :goto_5
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    move-object v15, v3

    goto :goto_6

    :cond_14
    move-object v15, v7

    :goto_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object v10, v14

    move-object v14, v1

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v10

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz v0, :cond_15

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    :cond_15
    if-eqz v7, :cond_16

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    const-string v3, "my_monogram"

    invoke-direct {v0, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v13

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;

    const-string v12, "e-commerce_interaction"

    const/16 v16, 0x0

    const-string v10, "AddToCart/Success"

    const-string v11, "product_sheet"

    invoke-direct/range {v8 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_17
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartErrorEvent;

    if-eqz v3, :cond_18

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/ProductSheet/"

    const-string v12, "AddToCart/Fail"

    const-string v13, "product_sheet"

    const-string v14, "e-commerce_interaction"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_18
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSeeYourCartEvent;

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const-string v12, "1"

    const-string v13, ""

    if-eqz v3, :cond_1d

    move v3, v5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-object v14, v7

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v15

    if-eqz v15, :cond_19

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    goto :goto_7

    :cond_19
    move-object v15, v14

    :goto_7
    if-nez v15, :cond_1a

    move-object v15, v13

    :cond_1a
    invoke-direct {v6, v15}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    move-object v14, v1

    :cond_1b
    if-nez v14, :cond_1c

    goto :goto_8

    :cond_1c
    move-object v13, v14

    :goto_8
    invoke-direct {v15, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    invoke-direct {v1, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-array v10, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v10, v4

    aput-object v6, v10, v3

    aput-object v15, v10, v11

    aput-object v1, v10, v9

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "see_your_cart"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_1d
    move v3, v5

    move-object v14, v7

    instance-of v5, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCloseAddCartEvent;

    if-eqz v5, :cond_22

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    if-eqz v1, :cond_1e

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v15

    if-eqz v15, :cond_1e

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    goto :goto_9

    :cond_1e
    move-object v15, v14

    :goto_9
    if-nez v15, :cond_1f

    move-object v15, v13

    :cond_1f
    invoke-direct {v6, v15}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    move-object v14, v1

    :cond_20
    if-nez v14, :cond_21

    goto :goto_a

    :cond_21
    move-object v13, v14

    :goto_a
    invoke-direct {v15, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    invoke-direct {v1, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-array v10, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v10, v4

    aput-object v6, v10, v3

    aput-object v15, v10, v11

    aput-object v1, v10, v9

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "close_add_cart"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_22
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareOnScreenshotEvent;

    if-eqz v1, :cond_23

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "share_intention_screenshot"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_23
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHitOnYMALProductEvent;

    const-string v5, "slide_ymal"

    if-eqz v1, :cond_24

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHitOnYMALProductEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHitOnYMALProductEvent;->b:Ljava/lang/String;

    invoke-static {v0}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v2, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v2, v4

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v18, "ymal"

    const-string v19, "product_sheet"

    const-string v20, "navigation"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_24
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeYMALCarouselEvent;

    if-eqz v1, :cond_25

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v18, "ymal"

    const-string v19, "product_sheet"

    const-string v20, "swipe"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_25
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductClickedEvent;

    if-eqz v1, :cond_26

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductClickedEvent;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductClickedEvent;->a:Ljava/lang/String;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v12}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v13, "view_cart"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_26
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductSwipeEvent;

    if-eqz v1, :cond_27

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductSwipeEvent;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductSwipeEvent;->a:I

    const-string v2, "%"

    invoke-static {v0, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v18, "horizontal_scroll"

    const-string v19, "view_cart"

    const-string v20, "swipe"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_27
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClickEvent;

    if-eqz v1, :cond_28

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "size_guide"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_28
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClosedEvent;

    if-eqz v1, :cond_29

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "select_size_close"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_29
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideCountryClickEvent;

    if-eqz v1, :cond_2a

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const-string v10, "select_size_by_country"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_2a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideUnitChangedEvent;

    if-eqz v1, :cond_2c

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideUnitChangedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideUnitChangedEvent;->b:Z

    if-eqz v0, :cond_2b

    const-string v0, "inches"

    goto :goto_b

    :cond_2b
    const-string v0, "cm"

    :goto_b
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "select_size_in_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "product_sheet"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_2c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeOnProductPageEvent;

    if-eqz v1, :cond_2d

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "LVPass/Consent/Notifications"

    const-string v18, "notify_me_1"

    const-string v19, "back_in_stock"

    const-string v20, "notifications"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_2d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeBottomSheetEvent;

    if-eqz v1, :cond_2e

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "LVPass/Consent/Notifications"

    const-string v18, "notify_me_2"

    const-string v19, "back_in_stock"

    const-string v20, "notifications"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_2e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelHotstampingCustomizationBottomSheetScreen;

    if-eqz v1, :cond_2f

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "hotstamping_removal_popin"

    const-string v18, "hotstamping_removal_popin"

    const-string v19, "product_sheet"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_2f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelPerfumeEngravingCustomizationBottomSheetScreen;

    if-eqz v1, :cond_30

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "engraving_removal_popin"

    const-string v18, "engraving_removal_popin"

    const-string v19, "product_sheet"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_30
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditHotstampingCustomizationBottomSheetScreen;

    if-eqz v1, :cond_31

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "edit_hotstamping_popin"

    const-string v18, "edit_hotstamping_popin"

    const-string v19, "product_sheet_hotstamping"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_31
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditPerfumeEngravingCustomizationBottomSheetScreen;

    if-eqz v1, :cond_32

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "edit_engraving_popin"

    const-string v18, "edit_engraving_popin"

    const-string v19, "product_sheet_engraving"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_32
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardClickEvent;

    if-eqz v1, :cond_33

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_monogram_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_33
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardUpdateClickEvent;

    if-eqz v1, :cond_34

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "modify_monogram_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_34
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardClickEvent;

    if-eqz v1, :cond_35

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_engraving_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_35
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardUpdateClickEvent;

    if-eqz v1, :cond_36

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "modify_engraving_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_36
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetOpenEvent;

    if-eqz v1, :cond_37

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "close_bottom_pdp"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_37
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetConfirmEvent;

    if-eqz v1, :cond_38

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "close_popin_pdp_confirm"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_38
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetCancelEvent;

    if-eqz v1, :cond_39

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "close_popin_pdp_cancel"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_39
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardClickEvent;

    if-eqz v1, :cond_3a

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_hotstamping_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardClickEvent;

    if-eqz v1, :cond_3b

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_engraving_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardUpdateClickEvent;

    if-eqz v1, :cond_3c

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "modify_hotstamping_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardUpdateClickEvent;

    if-eqz v1, :cond_3d

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "modify_engraving_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDiamondEngravingCardClickEvent;

    if-eqz v1, :cond_3e

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v23, 0x61

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_diamond_engraving_config"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetConfirmEvent;

    const-string v5, "hotstamping"

    if-eqz v1, :cond_3f

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v5}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "continue_cta_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_3f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetCancelEvent;

    if-eqz v1, :cond_40

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v5}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "cancel_cta_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_40
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetConfirmEvent;

    const-string v6, "engraving"

    if-eqz v1, :cond_41

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "continue_cta_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_41
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetCancelEvent;

    if-eqz v1, :cond_42

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "cancel_cta_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_42
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetEditEvent;

    if-eqz v1, :cond_43

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v5}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "edit_hotstamping_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_43
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetDeleteEvent;

    if-eqz v1, :cond_44

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v5}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "delete_your_personnalization_hotstamping_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_44
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetEditEvent;

    if-eqz v1, :cond_45

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "edit_engraving_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_45
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetDeleteEvent;

    if-eqz v1, :cond_46

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v6}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "delete_your_personnalization_engraving_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_46
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayServerOverloadSheet;

    if-eqz v1, :cond_47

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "waiting_room"

    const-string v18, "LVPass/ProductSheet/"

    const-string v19, "LVPass/ProductSheet/"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_47
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDismissServerOverloadSheet;

    if-eqz v1, :cond_48

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "LVPass/ProductSheet/"

    const-string v18, "close_waiting_room_popin"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_48
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;

    if-eqz v1, :cond_49

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v1, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v14

    :pswitch_0
    const-string v0, "finish"

    goto :goto_c

    :pswitch_1
    const-string v0, "language"

    goto :goto_c

    :pswitch_2
    const-string v0, "size"

    goto :goto_c

    :pswitch_3
    const-string v0, "carat"

    goto :goto_c

    :pswitch_4
    const-string v0, "model_size"

    goto :goto_c

    :pswitch_5
    const-string v0, "material"

    goto :goto_c

    :pswitch_6
    const-string v0, "color"

    :goto_c
    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "variation_clicked"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_49
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;

    if-eqz v1, :cond_4a

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v5, "panel_"

    invoke-static {v5, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_panel_variations"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_4a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHighlightedContentClickedEvent;

    if-eqz v1, :cond_4b

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v1, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHighlightedContentClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHighlightedContentClickedEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_highlighted_content"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_4b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;

    if-eqz v1, :cond_4d

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;->a:Ljava/lang/String;

    if-eqz v5, :cond_4c

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    goto :goto_d

    :cond_4c
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :goto_d
    invoke-static {v5}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v5, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_panel_info"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_4d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentItemClickedEvent;

    if-eqz v1, :cond_4e

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v1, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentItemClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentItemClickedEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "editorial_content"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_4e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;

    if-eqz v1, :cond_4f

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v1, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "editorial_content"

    const-string v19, "product_sheet"

    const-string v20, "swipe"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_4f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnTryOnClickedEvent;

    if-eqz v1, :cond_50

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v0, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x20

    const/16 v24, 0x0

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;

    const-string v17, "product_sheet"

    const-string v18, "open_try_on"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_50
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShadeFinderClickedEvent;

    if-eqz v1, :cond_51

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v0, v8, v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x21

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_shade_finder"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_51
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnContextualSizeEntryClickedEvent;

    if-eqz v1, :cond_52

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v0, "compare_sizes_"

    invoke-static {v0, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v23, 0x41

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const-string v21, "product_sheet"

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_52
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "virtual_studio_consent_page"

    const-string v18, "virtual_studio_consent_page"

    const-string v19, "virtual_studio"

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_53
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "product_sheet"

    const-string v18, "open_virtual_studio"

    const-string v19, "product_sheet"

    const-string v20, "click"

    const-string v21, "product_sheet"

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_54
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v8}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "virtual_studio_consent_page"

    const-string v18, "accept_consent"

    const-string v19, "virtual_studio"

    const-string v20, "click"

    const-string v21, "virtual_studio"

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_55
    invoke-static {}, Lv40;->g()V

    return-object v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
