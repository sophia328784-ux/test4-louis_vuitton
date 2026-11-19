.class public abstract Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 19

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedDiscoverScreen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "feed_discover"

    const/4 v5, 0x0

    const-string v6, "feed"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedForYouScreen;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "feed_foryou"

    const/4 v5, 0x0

    const-string v6, "feed"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;

    const-string v2, ""

    if-eqz v1, :cond_3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_notifyme"

    const/4 v6, 0x0

    const-string v7, "event_bottomsheet"

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$PermissionsBottomSheetScreen;

    if-eqz v1, :cond_4

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_permissions"

    const/4 v6, 0x0

    const-string v7, "permissions_bottomsheet"

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;

    if-eqz v1, :cond_5

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_foryou"

    const-string v6, "open_login"

    const-string v7, "feed"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;

    if-eqz v1, :cond_6

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_foryou"

    const-string v6, "open_register"

    const-string v7, "feed"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;

    if-eqz v1, :cond_7

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_foryou"

    const-string v6, "open_ongoing_orders"

    const-string v7, "feed"

    const-string v8, "click"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;

    if-eqz v1, :cond_8

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "feed_foryou"

    const-string v6, "swipe_ongoing_orders"

    const-string v7, "feed"

    const-string v8, "swipe"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    instance-of v9, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    if-eqz v9, :cond_9

    const-string v2, "simple"

    goto :goto_1

    :cond_9
    instance-of v9, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v9, :cond_a

    const-string v2, "live"

    goto :goto_1

    :cond_a
    instance-of v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v2, :cond_b

    const-string v2, "event"

    :goto_1
    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;->d:I

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "select_card"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;

    const-string v8, "slideshow"

    if-eqz v1, :cond_d

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;->c:I

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "select_slideshow"

    const-string v13, "feed"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;

    if-eqz v1, :cond_e

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->c:I

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->d:I

    const-string v3, "swipe_"

    const-string v10, "/"

    invoke-static {v1, v2, v3, v10}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;->b:I

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "feed_discover"

    const-string v12, "swipe_slideshow"

    const-string v13, "feed"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;

    if-eqz v1, :cond_f

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;->d:I

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "select_carousel"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;

    if-eqz v1, :cond_10

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;->d:I

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "swipe_carousel"

    const-string v12, "feed"

    const-string v13, "swipe"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_10
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;

    const-string v4, "calendar"

    if-eqz v1, :cond_12

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;->b:Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    move-object v2, v0

    :goto_2
    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "add_to_calendar"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;

    if-eqz v1, :cond_14

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;->b:Ljava/lang/String;

    if-nez v0, :cond_13

    goto :goto_3

    :cond_13
    move-object v2, v0

    :goto_3
    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "remove_from_calendar"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_14
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;

    if-eqz v1, :cond_15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "authorize"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_15
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;

    if-eqz v1, :cond_16

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "no_authorize"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_16
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;

    const-string v2, "notify_me"

    if-eqz v1, :cond_17

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "notify_me"

    const-string v12, "feed"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_17
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;

    if-eqz v1, :cond_18

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "success"

    const-string v12, "feed"

    const-string v13, "notify_me"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;

    if-eqz v1, :cond_19

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "already_activated"

    const-string v12, "feed"

    const-string v13, "notify_me"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_19
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;

    if-eqz v1, :cond_1a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;->b:I

    const-string v2, "%"

    invoke-static {v0, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v7, "swipe_content"

    const-string v8, "feed"

    const-string v9, "scroll"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;

    if-eqz v1, :cond_1b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "feed"

    const-string v7, "open_myLV"

    const-string v8, "feed"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1b
    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;

    if-eqz v0, :cond_1c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "feed"

    const-string v7, "open_lvpass"

    const-string v8, "feed"

    const-string v9, "click"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1c
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method
