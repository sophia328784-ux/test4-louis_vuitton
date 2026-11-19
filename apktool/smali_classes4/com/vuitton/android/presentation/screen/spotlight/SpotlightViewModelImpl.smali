.class public final Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002By\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0008\u0001\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "sharedPref",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;",
        "preCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;",
        "listenCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;",
        "cancelCache",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;",
        "getSpotlightUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;",
        "getProductShortListUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;)V",
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
.field public final A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final B:Lkotlinx/coroutines/flow/StateFlow;

.field public final b:Ldagger/Lazy;

.field public final c:Lcom/vuitton/foundation/logger/Logger;

.field public final d:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final f:Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

.field public final l:Ljava/lang/String;

.field public m:Z

.field public n:Lkotlinx/coroutines/Job;

.field public o:Lkotlinx/coroutines/Job;

.field public p:Lkotlinx/coroutines/Job;

.field public q:Lkotlinx/coroutines/Job;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Lcom/vuitton/android/domain/monitoring/Monitor;",
            "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
            "Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;",
            "Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;",
            "Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;",
            "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
            "Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;",
            "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->b:Ldagger/Lazy;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->d:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    move-object/from16 v3, p3

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    const-string v4, "COLLECTION_ID"

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->l:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v21, 0x7ff

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v9 .. v22}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->z:Ljava/util/LinkedHashSet;

    const/16 v13, 0x8

    new-array v13, v13, [Lkotlinx/coroutines/flow/Flow;

    aput-object v8, v13, v14

    const/4 v8, 0x1

    aput-object v7, v13, v8

    const/4 v7, 0x2

    aput-object v6, v13, v7

    const/4 v6, 0x3

    aput-object v9, v13, v6

    const/4 v7, 0x4

    aput-object v11, v13, v7

    const/4 v7, 0x5

    aput-object v5, v13, v7

    const/4 v7, 0x6

    aput-object v12, v13, v7

    const/4 v7, 0x7

    aput-object v10, v13, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v7, v13, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v9

    sget-object v10, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    const/16 v21, 0x1fd

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7, v9, v10, v11}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->B:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v7, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenSpotlight;->a:Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenSpotlight;

    invoke-interface {v1, v3, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v4, v3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v9, v10, v4}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;JLkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v3, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "PREF_SHOW_ON_BOARDING"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/4 v14, 0x1

    const/16 v15, 0x3ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final Ac(I)V
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move/from16 v2, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v3

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v18, 0x0

    const/16 v19, 0x3ff

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v7 .. v19}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le11;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Le11;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;ILjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;I)V

    new-instance v2, Lnw0;

    const/16 v7, 0x17

    invoke-direct {v2, v7}, Lnw0;-><init>(I)V

    invoke-virtual {v1, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Cc(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le11;

    const/4 v7, 0x1

    move-object v2, v5

    move-object v5, v4

    move-object v4, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Le11;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;ILjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;I)V

    new-instance v2, Lnw0;

    const/16 v4, 0x18

    invoke-direct {v2, v4}, Lnw0;-><init>(I)V

    invoke-virtual {v1, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Cc(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method

.method public final Ca(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final Cc(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final J2()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_SHOW_ON_BOARDING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingStartCTAClickedEvent;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingStartCTAClickedEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_1
    return-void
.end method

.method public final Kb()V
    .locals 15

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/4 v13, 0x0

    const/16 v14, 0x7df

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v14}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onOutroFinished$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onOutroFinished$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnboardingScreen;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/spotlight/demo"

    const-string v7, "LVPass/spotlight/demo"

    const-string v8, "spotlight"

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_0
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v3, v1, v5

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/spotlight/collection"

    const-string v10, "LVPass/spotlight/collection"

    const-string v11, "spotlight"

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v7

    goto/16 :goto_7

    :cond_1
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;->a:Ljava/lang/String;

    invoke-direct {v2, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;->b:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v10, v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v1, v7, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v3, v1, v5

    aput-object v2, v1, v4

    aput-object v10, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/spotlight/focus"

    const-string v12, "LVPass/spotlight/focus"

    const-string v13, "spotlight"

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v4, v9

    goto/16 :goto_7

    :cond_2
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingStartCTAClickedEvent;

    if-eqz v3, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/demo"

    const-string v6, "start_experience"

    const-string v7, "spotlight"

    const-string v8, "demonstration"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v4, v3

    goto/16 :goto_7

    :cond_3
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingClosedEvent;

    if-eqz v3, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/demo"

    const-string v6, "back"

    const-string v7, "spotlight"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_4
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;

    const-string v9, ""

    if-eqz v3, :cond_6

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;->a:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v2, v13, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v1

    :goto_2
    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v7, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v3, v1, v5

    aput-object v2, v1, v4

    aput-object v8, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/spotlight/collection"

    const-string v14, "spotlight"

    const-string v15, "hotspot"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v10

    goto/16 :goto_7

    :cond_6
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnScreenClosedEvent;

    if-eqz v3, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/collection"

    const-string v6, "close"

    const-string v7, "spotlight"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_7
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnCollectionCTAClickedEvent;

    if-eqz v3, :cond_8

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/collection"

    const-string v6, "collection"

    const-string v7, "spotlight"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_8
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;

    if-eqz v3, :cond_a

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "next_look"

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_9
    const-string v1, "previous_look"

    goto :goto_3

    :goto_4
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/collection"

    const-string v7, "spotlight"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_a
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;

    if-eqz v3, :cond_c

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;->b:Ljava/lang/String;

    const-string v11, ","

    invoke-static {v3, v11, v10}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v10, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v2, v3, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;->c:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move-object v9, v1

    :goto_5
    invoke-direct {v3, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v7, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v10, v1, v5

    aput-object v2, v1, v4

    aput-object v3, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-string v14, "LVPass/spotlight/focus"

    const-string v16, "spotlight"

    const-string v17, "discover"

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v12

    goto :goto_7

    :cond_c
    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;

    if-eqz v3, :cond_e

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v2, v11, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    move-object v9, v1

    :goto_6
    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v1, v7, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v3, v1, v5

    aput-object v2, v1, v4

    aput-object v8, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/spotlight/focus"

    const-string v12, "swipe"

    const-string v13, "spotlight"

    const-string v14, "navigation"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_e
    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnFocusScreenClosedEvent;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/spotlight/focus"

    const-string v6, "back"

    const-string v7, "spotlight"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :goto_7
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->B:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final e5(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v16, 0x0

    const/16 v17, 0x60d

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v13, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    xor-int/lit8 v12, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x70f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->yc()V

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Ac(I)V

    return-void

    :cond_2
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/4 v15, 0x1

    const/16 v16, 0x3ff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v16}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ha(II)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v3, p1

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->p:Lkotlinx/coroutines/Job;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    if-ltz v3, :cond_8

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v10, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lsm0;

    invoke-direct/range {v0 .. v6}, Lsm0;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;IILjava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;)V

    invoke-virtual {v1, v4, v0, v7}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Cc(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    move v2, v10

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v7

    :cond_4
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    move/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    goto :goto_1

    :cond_5
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-eqz v2, :cond_6

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v7}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_6
    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_7

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$2;

    invoke-direct {v3, v7, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v0, v7, v7, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->n:Lkotlinx/coroutines/Job;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$3;

    invoke-direct {v3, v7, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v0, v7, v7, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->q:Lkotlinx/coroutines/Job;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$4;

    invoke-direct {v3, v7, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v0, v7, v7, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->o:Lkotlinx/coroutines/Job;

    return-void

    :cond_7
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v19, 0x0

    const/16 v20, 0x603

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v8 .. v20}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$5;

    invoke-direct {v3, v7, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onHotspotClick$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v0, v7, v7, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->n:Lkotlinx/coroutines/Job;

    :cond_8
    return-void
.end method

.method public final j3(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->n:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->o:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->q:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->m:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v16, 0x0

    const/16 v17, 0x7f2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v5, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingClosedEvent;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingClosedEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->h:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnFocusScreenClosedEvent;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnFocusScreenClosedEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_4
    :goto_0
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v4

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onSpotlightBackPressed$2;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onSpotlightBackPressed$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->p:Lkotlinx/coroutines/Job;

    return-void

    :cond_6
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onSpotlightBackPressed$3;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$onSpotlightBackPressed$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->p:Lkotlinx/coroutines/Job;

    :cond_7
    return-void
.end method

.method public final oc(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->m:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->d:Ljava/lang/String;

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->m:Z

    :cond_1
    return-void
.end method

.method public final onCleared()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->yc()V

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public final p7(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->zc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_0
    return-void
.end method

.method public final ua()V
    .locals 14

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/4 v12, 0x0

    const/16 v13, 0x63e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZZZZZZZZZZZI)Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final yc()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->z:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;->a:Lcom/vuitton/android/domain/repository/SpotlightRepository;

    invoke-interface {v3, v2}, Lcom/vuitton/android/domain/repository/SpotlightRepository;->d(Ljava/util/UUID;)Lkotlin/Unit;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final zc(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
