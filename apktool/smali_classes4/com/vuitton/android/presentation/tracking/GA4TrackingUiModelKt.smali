.class public abstract Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;
    .locals 20

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    iget-object v4, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->d:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v15, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->f:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->i:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->g:Ljava/lang/Double;

    iget v0, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;->h:I

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;

    const/16 v19, 0x0

    move/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x3d

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    iget-object v4, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;->e:Ljava/util/List;

    const/16 v13, 0x3d

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0
.end method
