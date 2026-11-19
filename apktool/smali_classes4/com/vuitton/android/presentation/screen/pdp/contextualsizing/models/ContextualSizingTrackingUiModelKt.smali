.class public abstract Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$ContextualSizingScreen;->a:Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$ContextualSizingScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "compare_sizes_selection"

    const-string v4, "compare_sizes_selection"

    const-string v5, "pdp_contextual_sizing"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, "swipe_product_card_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "compare_sizes_selection"

    const-string v5, "product_sheet"

    const-string v6, "swipe"

    const-string v7, "pdp_contextual_sizing"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, "select_product_card_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "compare_sizes_selection"

    const-string v5, "product_sheet"

    const-string v6, "click"

    const-string v7, "pdp_contextual_sizing"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, "view_detail_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "compare_sizes_selection"

    const-string v5, "product_sheet"

    const-string v6, "click"

    const-string v7, "pdp_contextual_sizing"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_3
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnClose;

    if-eqz p0, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "compare_sizes_selection"

    const-string v3, "close_compare_sizes"

    const-string v4, "product_sheet"

    const-string v5, "click"

    const-string v6, "pdp_contextual_sizing"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_4
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
