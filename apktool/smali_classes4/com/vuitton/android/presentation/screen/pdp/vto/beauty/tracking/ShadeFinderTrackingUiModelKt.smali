.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderIntroScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderIntroScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_intro"

    const-string v5, "product_sheet_beauty_shade_finder"

    const-string v6, "shade_finder"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnStartClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnStartClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_intro"

    const-string v5, "start_shade_finder"

    const-string v6, "shade_finder"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseIntroClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseIntroClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_intro"

    const-string v5, "close_shade_finder"

    const-string v6, "shade_finder"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderScanScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderScanScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_scan"

    const-string v5, "product_sheet_beauty_shade_finder_scan"

    const-string v6, "shade_finder"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_3
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnValidCheckEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnValidCheckEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_scan"

    const-string v5, "valid_checks"

    const-string v6, "shade_finder"

    const-string v7, "event"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseScanClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseScanClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_scan"

    const-string v5, "close_shade_finder"

    const-string v6, "shade_finder"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderRecommendationScreen;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderRecommendationScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderRecommendationScreen;->a:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_recommendation"

    const-string v5, "product_sheet_beauty_shade_finder"

    const-string v6, "shade_finder"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_6
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseRecommendationsEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseRecommendationsEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_recommendation"

    const-string v5, "close_shade_finder"

    const-string v6, "shade_finder"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnRecommendationsSwipedEvent;

    if-eqz v1, :cond_8

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnRecommendationsSwipedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnRecommendationsSwipedEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_recommendation"

    const-string v5, "swipe_recommendation"

    const-string v6, "shade_finder"

    const-string v7, "swipe"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_8
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "shade_finder_recommendation"

    const-string v5, "no_result_try_again"

    const-string v6, "shade_finder"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartClickedEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "productName"

    const/4 v6, 0x0

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;

    if-eqz v1, :cond_a

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "shade_finder_recommendation"

    const-string v10, "add_to_cart"

    const-string v11, "shade_finder"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;

    if-eqz v1, :cond_b

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "shade_finder_recommendation"

    const-string v10, "add_to_cart_success"

    const-string v11, "shade_finder"

    const-string v12, "event"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;

    if-eqz v1, :cond_c

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "shade_finder_recommendation"

    const-string v10, "add_to_cart_error"

    const-string v11, "shade_finder"

    const-string v12, "event"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryOnClickedEvent;

    if-eqz v1, :cond_d

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryOnClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryOnClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "shade_finder_recommendation"

    const-string v10, "recommended_product_try_on"

    const-string v11, "shade_finder"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v6
.end method
