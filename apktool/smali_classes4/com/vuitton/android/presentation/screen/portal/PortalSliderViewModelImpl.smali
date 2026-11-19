.class public final Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;",
        "getPortalSliderFeedUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;",
        "getAccessibilityValueUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Ljava/lang/String;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final o:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V
    .locals 22
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v10, "KEY_PORTAL_ID"

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->j:Ljava/lang/String;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v13, 0x8

    new-array v13, v13, [Lkotlinx/coroutines/flow/Flow;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v4, 0x1

    aput-object v6, v13, v4

    const/4 v4, 0x2

    aput-object v7, v13, v4

    const/4 v4, 0x3

    aput-object v8, v13, v4

    const/4 v7, 0x4

    aput-object v9, v13, v7

    const/4 v7, 0x5

    aput-object v11, v13, v7

    const/4 v7, 0x6

    aput-object v12, v13, v7

    const/4 v7, 0x7

    aput-object v5, v13, v7

    new-instance v5, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v5, v13}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v7

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v11, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;

    const/16 v20, 0xff

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v21}, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;-><init>(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5, v7, v8, v11}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->o:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenPortal;->a:Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenPortal;

    invoke-interface {v1, v2, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    const-string v2, "categoryId"

    invoke-virtual {v1, v10, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :cond_1
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$fetchPortal$3;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$getAccessibilitySettings$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl$getAccessibilitySettings$1;-><init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final G2()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->o:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final bc(Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;)V
    .locals 13

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$Screen;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    invoke-static {v4}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/portal_slider"

    const-string v8, "LVPass/portal_slider"

    const-string v9, "event_article"

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnPortalSwipeEvent;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnPortalSwipeEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnPortalSwipeEvent;->a:Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v5, "navigation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v5, v0

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitCtaPortalEvent;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v3, "redirect_cta"

    const-string v5, "navigation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitClosePortalEvent;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v3, "close"

    const-string v5, "navigation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeClickEvent;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v4}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v3, "notify_me"

    const-string v5, "notify_me"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeSuccessEvent;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v3, "confirm"

    const-string v5, "notify_me"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v4}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/portal_slider"

    const-string v3, "already_activate"

    const-string v5, "notify_me"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method
