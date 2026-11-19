.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 14

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT"

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Watch/WatchInVideo"

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x71

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT"

    const-string v4, "Display_Earphones"

    const-string v5, "IoT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT"

    const-string v4, "ScanIntention"

    const-string v5, "IoT"

    const-string v6, "associate"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;->a:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;->b:Ljava/lang/String;

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x31

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/IoT"

    const-string v7, "discover_click"

    const-string v8, "IoT"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    const-string v5, "watch"

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;->a:Ljava/lang/String;

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/IoT/Watch/Pairing"

    const-string v7, "Pairing_Successful"

    const-string v8, "IoT"

    const-string v9, "response"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
