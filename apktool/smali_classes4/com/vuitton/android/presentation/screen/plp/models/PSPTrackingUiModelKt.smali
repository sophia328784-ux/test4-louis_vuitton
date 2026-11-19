.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 13

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;->b:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v4, 0x0

    aput-object v0, p0, v4

    aput-object v3, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/SearchCatalog"

    const-string v5, "internalsearchresult"

    const-string v6, "search_result_list"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;->a:Ljava/lang/String;

    invoke-direct {p1, v2, p0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/SearchCatalog"

    const-string v6, "Search_done"

    const-string v7, "SearchCatalog"

    const-string v8, "search"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_2
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$FilterClick;

    if-eqz p0, :cond_3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/SearchCatalog"

    const-string v6, "Product_filters"

    const-string v7, "SearchCatalog"

    const-string v8, "filter"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
