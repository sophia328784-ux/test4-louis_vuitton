.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 17

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchGeneralPageScreen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/IoT/watch"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "watchface"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;->b:Ljava/lang/String;

    const-string v7, "LVPass/IoT/"

    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v6, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_2
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchV3ContentPageScreen;

    if-eqz v1, :cond_3

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/watch_thv3"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v9

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchSettingsPageScreen;

    if-eqz v1, :cond_4

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/Dashboard"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchTutorialCategoriesPageScreen;

    if-eqz v1, :cond_5

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/Tutorial"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v6, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/watchface/product"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePagerPageScreen;

    if-eqz v1, :cond_8

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/watchface/products"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllTravelsClickEvent;

    if-eqz v1, :cond_9

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x71

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/MyTravel/NewMyTravel"

    const-string v10, "see_all"

    const-string v11, "IoT"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllWatchfacesClickEvent;

    if-eqz v1, :cond_a

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x71

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/WatchFace"

    const-string v10, "see_all"

    const-string v11, "IoT"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$UnpairSuccessEvent;

    if-eqz v1, :cond_b

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x61

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/Dashboard"

    const-string v10, "Unpair_MyWatch"

    const-string v11, "IoT"

    const-string v12, "response"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    :cond_c
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/WatchFace"

    const-string v10, "Tutorial"

    const-string v11, "IoT"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x31

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    :cond_e
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v8, 0x0

    const-string v9, "LVPass/IoT/Watch/WatchFace"

    const-string v10, "Watch_Face_Viewed"

    const-string v11, "IoT"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x31

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object v6
.end method
