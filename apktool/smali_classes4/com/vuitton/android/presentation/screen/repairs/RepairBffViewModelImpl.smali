.class public final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;
.implements Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "contactUsDelegate",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;",
        "getRepairStatusMapUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;",
        "getCareServiceListUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;",
        "cancelCareServiceBffUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;",
        "getCareServiceDetailUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;",
        "updateCareServiceAppointmentBffUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final D:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

.field public final o:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final q:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V
    .locals 28
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-object/from16 v3, p3

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v3, "CARE_SERVICE"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    const-string v4, "CARE_SERVICE_ID"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v6, v7, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p1, v4

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p8, v16

    move/from16 p14, v17

    move-object/from16 p15, v18

    move/from16 p9, v19

    move/from16 p10, v20

    move/from16 p11, v21

    move/from16 p12, v22

    move/from16 p13, v23

    invoke-direct/range {p8 .. p15}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v26, 0x1ff

    const/16 v27, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p3, v4

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p4, v4

    move-object/from16 p2, v5

    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 p1, v6

    invoke-static {v4, v7, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    const/16 v6, 0xb

    new-array v6, v6, [Lkotlinx/coroutines/flow/Flow;

    aput-object v9, v6, v4

    const/4 v4, 0x1

    aput-object v10, v6, v4

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v12, v6, v8

    const/4 v9, 0x4

    aput-object v13, v6, v9

    const/4 v9, 0x5

    aput-object v11, v6, v9

    const/4 v9, 0x6

    aput-object v14, v6, v9

    aput-object v15, v6, v7

    const/16 v7, 0x8

    aput-object p3, v6, v7

    const/16 v7, 0x9

    aput-object p1, v6, v7

    const/16 v7, 0xa

    aput-object p4, v6, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v7, v6, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    sget-object v9, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move v10, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    const/16 v17, 0xffc

    move-object v11, v6

    const/4 v6, 0x1

    move-object v12, v7

    const/4 v7, 0x0

    move v13, v8

    const/4 v8, 0x0

    move-object v14, v9

    const/4 v9, 0x0

    move v15, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v19, v12

    const/4 v12, 0x0

    move/from16 v20, v13

    const/4 v13, 0x0

    move-object/from16 v21, v14

    const/4 v14, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v5, p2

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v1, v23

    invoke-direct/range {v4 .. v18}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$1;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    const/4 v13, 0x3

    invoke-static {v1, v5, v5, v2, v13}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initConfig$1;

    invoke-direct {v2, v5, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initConfig$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    invoke-static {v1, v5, v5, v2, v13}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_1

    move-object/from16 v3, p2

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Z0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Z0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->k0(Z)V

    :goto_1
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairStatus$1;

    invoke-direct {v2, v5, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairStatus$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    invoke-static {v1, v5, v5, v2, v13}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v2, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 p0, 0x0

    const/4 v3, 0x2

    const v4, 0x7f140f9c

    invoke-direct {v2, v4, p0, v3, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->m:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    invoke-interface {v2, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->j:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v11, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->h:Z

    iget-boolean v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v21, v0

    const/4 v0, 0x5

    :goto_1
    move/from16 v20, v5

    move/from16 v19, v12

    move/from16 v18, v13

    move v5, v14

    move-object v12, v7

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->h:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v23, v5

    move v5, v0

    move v0, v12

    move/from16 v12, v23

    move/from16 v23, v13

    move v13, v7

    move-object v7, v15

    move-object v15, v14

    move/from16 v14, v23

    goto/16 :goto_6

    :cond_3
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v5

    move v5, v0

    move v0, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v7

    goto :goto_4

    :cond_5
    iget v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v12, v0

    move v5, v6

    :goto_2
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_TUTORIAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v6, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iput v11, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v0, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    move v0, v6

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v13}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v13

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput v10, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v13, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object v14, v12

    move v12, v5

    move v5, v1

    move-object v1, v13

    move-object v13, v7

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_CANCELLATION_REASON:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iput v9, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v7, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v23, v7

    move v7, v0

    move v0, v1

    move-object/from16 v1, v23

    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->h:Z

    iput v8, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v15, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v23, v12

    move v12, v0

    move v0, v7

    move-object v7, v14

    move/from16 v14, v23

    move/from16 v23, v5

    move v5, v1

    move-object v1, v15

    move-object v15, v13

    move/from16 v13, v23

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array/range {v16 .. v16}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->g:Z

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->i:Z

    const/4 v0, 0x5

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v8, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_b

    :goto_7
    return-object v4

    :cond_b
    move/from16 v21, v1

    move-object v1, v8

    goto/16 :goto_1

    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    new-instance v17, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZ)V

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    const/4 v8, 0x4

    goto/16 :goto_2
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final O(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final T0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final U()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final Z0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final k0(Z)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;-><init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
