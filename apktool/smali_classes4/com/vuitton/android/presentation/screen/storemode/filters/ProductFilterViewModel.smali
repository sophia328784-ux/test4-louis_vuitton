.class public final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;",
        "getCategoryPlpUseCase",
        "Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;",
        "getSearchPLPUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Z

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_REVAMP_V3_PHASE2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->e:Z

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v10, 0x9

    new-array v10, v10, [Lkotlinx/coroutines/flow/Flow;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v4, v10, v1

    const/4 v1, 0x3

    aput-object v5, v10, v1

    const/4 v1, 0x4

    aput-object v6, v10, v1

    const/4 v1, 0x5

    aput-object v7, v10, v1

    const/4 v1, 0x6

    aput-object v9, v10, v1

    const/4 v1, 0x7

    aput-object v8, v10, v1

    const/16 v1, 0x8

    aput-object v3, v10, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$special$$inlined$combine$1;

    invoke-direct {v1, v10}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    const/16 v14, 0x1ff

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->o:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final Ac(Z)V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Bc(Ljava/lang/String;ZZ)V
    .locals 7

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;->b:Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "select_filter"

    const-string v6, "filter_selection"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SearchFiltersAppliedEvent;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/SearchCatalog/Filters"

    const-string v5, "Apply_Filter"

    const-string v6, "SearchCatalog"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/SearchCatalog/Filters"

    const-string v5, "Clear_all"

    const-string v6, "SearchCatalog"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;->b:Ljava/lang/String;

    const-string v4, "::"

    invoke-static {v3, v4, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    const-string v3, "Filters"

    invoke-direct {p1, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/products_catalog"

    const-string v5, "SelectFilter"

    const-string v6, "ProductList"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$LeaveFiltersEvent;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/SearchCatalog/Filters"

    const-string v5, "Leave_Filter"

    const-string v6, "SearchCatalog"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;->a:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "show_filters"

    const-string v6, "filter_selection"

    const-string v7, "filter"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final Dc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final yc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    move-object v7, p4

    move v3, p5

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zc(Ljava/lang/String;Z)V
    .locals 10

    if-eqz p2, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SearchFiltersAppliedEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SearchFiltersAppliedEvent;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    const-string v2, "::"

    const/16 v3, 0xa

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-boolean v8, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->f:Z

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, ";"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    return-void
.end method
