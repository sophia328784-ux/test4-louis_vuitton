.class public final Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/search/SearchViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bq\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/search/SearchViewModel;",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;",
        "getLiveSearchUseCase",
        "Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;",
        "getTrendingListUseCase",
        "Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;",
        "getSearchHistoryUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;",
        "getProductsBySkusUseCase",
        "Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;",
        "updateSearchHistoryUseCase",
        "Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;",
        "getAutocompleteListUseCase",
        "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;",
        "addSearchHistoryProductUseCase",
        "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;",
        "addSearchHistoryTextualUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;)V",
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

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;

.field public final m:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public n:Lkotlinx/coroutines/Job;

.field public o:J

.field public p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;)V
    .locals 19
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->m:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->TRENDING:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v6, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;

    invoke-direct {v6}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;-><init>()V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;

    invoke-direct {v7}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;-><init>()V

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v10, ""

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v13, 0x9

    new-array v13, v13, [Lkotlinx/coroutines/flow/Flow;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    aput-object v3, v13, v5

    const/4 v2, 0x2

    aput-object v6, v13, v2

    const/4 v2, 0x3

    aput-object v7, v13, v2

    const/4 v3, 0x4

    aput-object v9, v13, v3

    const/4 v3, 0x5

    aput-object v8, v13, v3

    const/4 v3, 0x6

    aput-object v10, v13, v3

    const/4 v3, 0x7

    aput-object v11, v13, v3

    const/16 v3, 0x8

    aput-object v12, v13, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v3, v13}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    const/16 v8, 0x1fe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p2, v1

    move-object/from16 p1, v7

    move/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p3, v10

    move-object/from16 p4, v11

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    move-object/from16 p7, v15

    move-object/from16 p8, v16

    move/from16 p9, v17

    move/from16 p10, v18

    invoke-direct/range {p1 .. p12}, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;-><init>(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    invoke-static {v3, v5, v6, v1}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->z:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1;

    invoke-direct {v3, v0, v4}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->c:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_4
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->e:I

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2}, Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_15

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;->a:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;

    instance-of v11, v10, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    if-eqz v11, :cond_7

    invoke-virtual {v8, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    instance-of v11, v10, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    if-eqz v11, :cond_11

    move-object v11, v4

    check-cast v11, Ljava/lang/Iterable;

    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_8

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    move-object v14, v10

    check-cast v14, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    iget-object v15, v14, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->a:Ljava/lang/String;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->f:Ljava/time/LocalDateTime;

    iget-object v12, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v14, :cond_b

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move-object v14, v7

    :goto_3
    if-nez v14, :cond_c

    const-string v14, ""

    :cond_c
    move-object/from16 v19, v14

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    sget-object v15, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14

    if-eq v14, v6, :cond_e

    if-ne v14, v5, :cond_d

    const v14, 0x7f080089

    :goto_4
    move/from16 v21, v14

    goto :goto_5

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_e
    const v14, 0x7f080088

    goto :goto_4

    :goto_5
    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v11, :cond_f

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_6

    :cond_f
    move-object/from16 v20, v7

    :goto_6
    new-instance v16, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/16 v23, 0x0

    move-object/from16 v22, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-direct/range {v16 .. v23}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v16

    invoke-virtual {v8, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const-string v0, "Collection contains no element matching the predicate."

    invoke-static {v0}, Lzy0;->c(Ljava/lang/String;)V

    return-object v7

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_12
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->a(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/search/History;

    invoke-direct {v4, v7}, Lcom/vuitton/foundation/model/domain/model/search/History;-><init>(Ljava/util/List;)V

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1;->e:I

    invoke-virtual {v6, v4, v2}, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;->a(Lcom/vuitton/foundation/model/domain/model/search/History;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_14

    :goto_8
    return-object v3

    :cond_14
    move-object v2, v1

    :goto_9
    move-object v1, v2

    :cond_15
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImplKt;->a:I

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_16

    new-instance v2, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->c:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->b:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->b:Ljava/lang/String;

    iput v7, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getAutocompleteList$1;->e:I

    invoke-virtual {v2, v1, v3}, Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v2, Lkotlin/Result$Failure;

    if-nez v3, :cond_b

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;->a:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_2
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;->a:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;->b:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/vuitton/android/presentation/screen/search/models/AutocompleteDisplayUiModel;

    iget-object v6, v14, Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;->a:Ljava/lang/String;

    iget-boolean v14, v14, Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;->b:Z

    invoke-direct {v15, v6, v14}, Lcom/vuitton/android/presentation/screen/search/models/AutocompleteDisplayUiModel;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    invoke-direct {v11, v12, v13}, Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v4, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;->b:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;->a:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;->b:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v13, :cond_7

    invoke-static {v13}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v13

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v8}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v8

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-interface {v5, v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_a
    new-instance v3, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    :cond_b
    :goto_7
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_c

    sget v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImplKt;->a:I

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v3, p2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;

    if-eqz v3, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;

    invoke-direct {v3, p0, p2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->c:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean p1, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->b:Z

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    iget-boolean p2, p2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;->a:Z

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance v8, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    invoke-direct {v8}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;-><init>()V

    invoke-interface {v1, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_5

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance v8, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    invoke-direct {v8}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;-><init>()V

    invoke-interface {v2, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;

    iput-boolean p2, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->b:Z

    iput v6, v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getLiveSearch$1;->e:I

    invoke-virtual {v5, p1, v3}, Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_6

    return-object v4

    :cond_6
    move v12, p2

    move-object p2, p1

    move p1, v12

    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p2, Lkotlin/Result$Failure;

    if-nez v3, :cond_11

    move-object v3, p2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;->b:Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;->a:Ljava/util/List;

    sget-object v8, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    const/16 v8, 0xa

    if-eq v4, v6, :cond_e

    const/4 v9, 0x2

    if-ne v4, v9, :cond_d

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object v9, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->NO_RESULT_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, v4, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_8
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v9, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    invoke-direct {v9, v10}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_11

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/search/LiveSearch;->c:Ljava/util/List;

    if-eqz v3, :cond_a

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/search/Trending;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/search/Trending;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/search/Trending;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object v4, v7

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-nez v4, :cond_c

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4

    :cond_c
    move-object v8, v4

    :goto_4
    invoke-direct {v5, v8}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_e
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->SUCCESS_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_f
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    move-object v4, v5

    check-cast v4, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    new-instance v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    invoke-direct {v4, v9}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_11
    :goto_6
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_15

    sget v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImplKt;->a:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_12

    new-instance v3, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;

    invoke-direct {v3, p2}, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_12
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object p2, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->NO_RESULT_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_13
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance p2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;

    invoke-direct {p2, v7, v6, v7}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz p1, :cond_15

    :cond_14
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance p1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;

    invoke-direct {p1, v7, v6, v7}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final H1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$onClearHistory$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$onClearHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final N9(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$saveProductInHistory$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$saveProductInHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final P3(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->m:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$DisplaySearchPanel;->a:Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$DisplaySearchPanel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "isStoreMode"

    const-string v2, "true"

    invoke-virtual {v0, v2, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rmsCode"

    invoke-virtual {v0, p1, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    return-void
.end method

.method public final S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_0

    const-string v1, "searchPanelExitContext"

    invoke-virtual {p1}, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    return-void
.end method

.method public final X1(Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->n:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;-><init>()V

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;->a:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p1, :cond_5

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->HISTORY:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    if-nez p1, :cond_7

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->EMPTY_SCREEN:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_7
    :goto_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->TRENDING:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_1
    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->o:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_9

    move-wide v8, v3

    goto :goto_2

    :cond_9
    move-wide v8, v5

    :goto_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->n:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v7, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$executeSearchJob$1;

    const/4 v12, 0x0

    move-object v10, p0

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$executeSearchJob$1;-><init>(JLcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v7, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v10, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->n:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Y9(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$saveSearchQueryInHistory$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$saveSearchQueryInHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->z:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V
    .locals 20

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$Screen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/catalog/search"

    const/4 v5, 0x0

    const-string v6, "catalog"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnNoResult;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/catalog/search"

    const-string v9, "search_no_results"

    const-string v10, "search"

    const-string v11, "no_results"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v0, p0

    move-object v2, v6

    goto/16 :goto_5

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnBottomSearchBar;

    if-eqz v1, :cond_2

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/catalog/search"

    const-string v8, "bottom_search_bar"

    const-string v9, "search"

    const-string v10, "open_keyboard"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object/from16 v0, p0

    move-object v2, v5

    goto/16 :goto_5

    :cond_2
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const-string v7, "search"

    if-eqz v1, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v8, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v7, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/catalog/search"

    const-string v13, "search_history_textual"

    const-string v14, "search"

    const-string v15, "navigation"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object/from16 v0, p0

    move-object v2, v10

    goto/16 :goto_5

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnProductHistory;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnProductHistory;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnProductHistory;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/catalog/search"

    const-string v5, "search_history_product"

    const-string v6, "search"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnClearHistory;

    if-eqz v1, :cond_5

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/catalog/search"

    const-string v11, "search_history_clear"

    const-string v12, "search"

    const-string v13, "clear"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    move-object/from16 v0, p0

    move-object v2, v8

    goto/16 :goto_5

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v8, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v7, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/catalog/search"

    const-string v13, "search_trending"

    const-string v14, "search"

    const-string v15, "navigation"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v8, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v7, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/catalog/search"

    const-string v13, "search_autocomplete"

    const-string v14, "search"

    const-string v15, "navigation"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBackHitSearch;

    if-eqz v1, :cond_8

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/catalog/search"

    const-string v11, "search_close_button"

    const-string v12, "search"

    const-string v13, "navigation"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnBlankHitSearch;

    if-eqz v1, :cond_9

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/catalog/search"

    const-string v11, "search_close_blank_space"

    const-string v12, "search"

    const-string v13, "navigation"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitClearSearch;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v8, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v7, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/catalog/search"

    const-string v13, "search_bar_clear_text"

    const-string v14, "search"

    const-string v15, "clear"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;

    if-eqz v1, :cond_b

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v7, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;->b:Ljava/lang/String;

    invoke-static {v8, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v5, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/catalog/search"

    const-string v11, "search_results_product"

    const-string v12, "search"

    const-string v13, "navigation"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v7, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;->b:Ljava/lang/String;

    invoke-static {v8, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v5, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/catalog/search"

    const-string v11, "search_suggestion_product"

    const-string v12, "search"

    const-string v13, "navigation"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeResultCarousel;

    if-eqz v1, :cond_d

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/catalog/search"

    const-string v8, "search_results_swipe"

    const-string v9, "search"

    const-string v10, "swipe"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeSuggestionCarousel;

    if-eqz v1, :cond_e

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/catalog/search"

    const-string v8, "search_suggestion_swipe"

    const-string v9, "search"

    const-string v10, "swipe"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/catalog/search"

    const-string v9, "search"

    const-string v10, "search"

    const-string v11, "navigation"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;

    if-eqz v1, :cond_10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/catalog/search"

    const-string v9, "search_open_keyword_card"

    const-string v10, "search"

    const-string v11, "navigation"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :goto_5
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-void
.end method
