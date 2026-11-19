.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;

    const-string v1, "LVPass/products_catalog/productlist"

    if-eqz v0, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    if-nez p1, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "product_list_l3"

    const-string v6, "product_list"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    if-nez p1, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "show_filters"

    const-string v6, "filter_selection"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    const-string p1, "search"

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v5, "bottom_search_bar"

    const-string v6, "productlist"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;

    if-eqz v0, :cond_5

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;->a:Ljava/lang/String;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v6, "productlist"

    const-string v7, "screenshot"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_5
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;

    if-eqz v0, :cond_6

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v5, "AddToWishlist"

    const-string v6, "productlist"

    const-string v7, "wishlist"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;->a:Ljava/lang/String;

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v6, "productlist"

    const-string v7, "wishlist_remove"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_7
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v4, "product_list"

    const-string v5, "share_intention_screenshot"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_8
    move-object v2, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;

    if-eqz p1, :cond_9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;->a:Ljava/lang/String;

    invoke-static {p2, p0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v5, "AddToWishlist/Success"

    const-string v6, "productlist"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_9
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;

    const-string v0, "product_list_"

    if-eqz p1, :cond_a

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;->a:Ljava/lang/String;

    invoke-static {p0}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "open_preview"

    const-string v6, "product_list"

    const-string v7, "long_press"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_a
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;

    if-eqz p1, :cond_b

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;->a:Ljava/lang/String;

    invoke-static {p2, p0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "share_intention"

    const-string v6, "product_list"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_b
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;

    if-eqz p1, :cond_e

    move-object p1, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;->b:Z

    if-eqz p2, :cond_d

    const-string p1, "LVPass/SearchCatalog"

    :cond_c
    move-object v4, p1

    goto :goto_2

    :cond_d
    if-nez p1, :cond_c

    move-object v4, v1

    :goto_2
    iget p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;->a:I

    const-string p1, "%"

    invoke-static {p0, p1}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x60

    const/4 v11, 0x0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;

    const-string v6, "product_list"

    const-string v7, "scroll"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_e
    move-object p1, v2

    instance-of v2, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;

    if-eqz v2, :cond_f

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v6, "AddToWishlist"

    const-string v7, "product_list"

    const-string v8, "wishlist"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_f
    instance-of v2, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;

    if-eqz v2, :cond_12

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    if-nez p1, :cond_10

    move-object p1, v1

    :cond_10
    const-string p2, "LVPass/StoreMode/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    if-ne p0, p1, :cond_11

    const-string p0, "in_store"

    :goto_3
    move-object v6, p0

    goto :goto_4

    :cond_11
    const-string p0, "online"

    goto :goto_3

    :goto_4
    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v7, "journey"

    const-string v8, "navigation"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_12
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    sget-object p2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p0, "grid"

    goto :goto_5

    :cond_13
    sget-object p2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "detailed"

    :goto_5
    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "change_layout"

    const-string v6, "product_list"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_15
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;

    if-eqz p1, :cond_16

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "remove_to_wishlist"

    const-string v6, "product_list"

    const-string v7, "wishlist"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_16
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;

    if-eqz p1, :cond_17

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;->a:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/products_catalog"

    const-string v3, "dispatch_filter_selection"

    const-string v4, "filters"

    const-string v5, "click"

    const-string v6, "product_list"

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_17
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;

    if-eqz p0, :cond_18

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x41

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v5, "dispatch_filter_swipe"

    const-string v6, "filters"

    const-string v7, "swipe"

    const-string v8, "product_list"

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_18
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method

.method public static synthetic b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    return-object p0
.end method
