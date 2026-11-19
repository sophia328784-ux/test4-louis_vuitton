.class public final Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BY\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;",
        "cancelAppointmentUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;",
        "getOnlineStoreAppointmentListUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V",
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

.field public final b:Lcom/vuitton/android/core/events/LVEventSender;

.field public final c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final g:Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

.field public final j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public k:Z

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final u:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V
    .locals 17
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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->b:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->k:Z

    const/4 v13, 0x0

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v10, v11, v13}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    new-array v11, v11, [Lkotlinx/coroutines/flow/Flow;

    aput-object v4, v11, v10

    aput-object v5, v11, v1

    const/4 v1, 0x2

    aput-object v6, v11, v1

    const/4 v1, 0x3

    aput-object v8, v11, v1

    const/4 v4, 0x4

    aput-object v7, v11, v4

    const/4 v4, 0x5

    aput-object v9, v11, v4

    const/4 v4, 0x6

    aput-object v2, v11, v4

    new-instance v14, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v14, v11, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v15

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    const/16 v11, 0xfa

    const/4 v12, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/util/List;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v15, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->Lb()V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;

    invoke-direct {v2, v13, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v1, v13, v13, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$collectAppEvents$1;

    invoke-direct {v2, v13, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$collectAppEvents$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    invoke-static {v1, v13, v13, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final Lb()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final V4(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final y5()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
