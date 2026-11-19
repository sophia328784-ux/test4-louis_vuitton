.class public final Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Z

.field public final g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 32
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Hidden:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v8, "SHOULD_HANDLE_LV_NAVBAR"

    invoke-virtual {v1, v8}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v13, v8

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    iput-boolean v13, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->f:Z

    const-string v8, "KEY_QAF_SOURCE"

    invoke-virtual {v1, v8}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;->b:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-nez v1, :cond_1

    new-instance v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v14

    :cond_1
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$filtersOptionsState$1;

    const/4 v11, 0x4

    invoke-direct {v10, v11, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v3, v10}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x5

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v6, v3, v1

    const/4 v1, 0x3

    aput-object v7, v3, v1

    aput-object v8, v3, v11

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    invoke-direct {v4, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    const v30, 0x7fffb

    const/16 v31, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v10 .. v31}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v2, v3, v10}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5, v5, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final M4(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenFiltersEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenFiltersEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q1(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V
    .locals 9

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->n:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->m:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearFilterEvent;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearFilterEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto/16 :goto_9

    :cond_5
    :goto_2
    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->e:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    if-nez v2, :cond_6

    const/4 v2, -0x1

    goto :goto_3

    :cond_6
    sget-object v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_3
    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    if-eq v2, v4, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->j:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    goto :goto_4

    :cond_8
    move-object v2, v6

    :goto_4
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    goto :goto_5

    :cond_9
    move-object v2, v6

    :goto_5
    if-nez v2, :cond_a

    goto/16 :goto_9

    :cond_a
    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_c
    move-object v7, v6

    :goto_6
    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    if-nez v7, :cond_d

    goto :goto_9

    :cond_d
    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSimpleFilterEvent;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->e:Z

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->b:Z

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    invoke-direct {v3, v7, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSimpleFilterEvent;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_9

    :cond_e
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->k:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_10
    move-object v2, v6

    :goto_7
    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    const/4 v1, 0x0

    if-eqz v2, :cond_11

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    goto :goto_8

    :cond_11
    move v2, v1

    :goto_8
    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;

    invoke-direct {v3, v1, v2, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;-><init>(ZZLjava/lang/String;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_9

    :cond_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSortFilterEvent;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    if-nez v1, :cond_13

    const-string v1, "default"

    :cond_13
    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSortFilterEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_9
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$refreshPLP$1;

    invoke-direct {v1, p0, p1, v6}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$refreshPLP$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v6, v1, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenBooleansPanelEvent;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenBooleansPanelEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenSortByPanelEvent;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenSortByPanelEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void
.end method

.method public final sa(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
