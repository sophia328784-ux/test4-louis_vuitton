.class public final Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;
.implements Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0099\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
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
        "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;",
        "updateCareServiceUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;",
        "getCareServiceListUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;",
        "getCareServiceByIdUseCase",
        "Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;",
        "getRepairStatusMapUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;",
        "updateCareServiceAppointmentBffUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V",
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

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final F:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final I:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

.field public final q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final r:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public s:Ljava/util/List;

.field public final t:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V
    .locals 28
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

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    move-object/from16 v3, p2

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->r:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const-string v2, "CARE_SERVICE"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->s:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p7, v16

    move/from16 p13, v17

    move-object/from16 p14, v18

    move/from16 p8, v19

    move/from16 p9, v20

    move/from16 p10, v21

    move/from16 p11, v22

    move/from16 p12, v23

    invoke-direct/range {p7 .. p14}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v17, 0x1ff

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 p7, v16

    move/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p8, v19

    move-object/from16 p9, v20

    move-object/from16 p10, v21

    move-object/from16 p11, v22

    move-object/from16 p12, v23

    move-object/from16 p13, v24

    move-object/from16 p14, v25

    move-object/from16 p15, v26

    move-object/from16 p16, v27

    invoke-direct/range {p7 .. p18}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p4, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p5, v2

    move-object/from16 p1, v3

    move-object/from16 p3, v4

    move-object/from16 p7, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->H:Lkotlinx/coroutines/channels/BufferedChannel;

    const/16 v4, 0xd

    new-array v4, v4, [Lkotlinx/coroutines/flow/Flow;

    aput-object v8, v4, v2

    const/4 v2, 0x1

    aput-object v9, v4, v2

    const/4 v5, 0x2

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v10, v4, v5

    const/4 v7, 0x4

    aput-object v11, v4, v7

    const/4 v7, 0x5

    aput-object v12, v4, v7

    const/4 v7, 0x6

    aput-object v13, v4, v7

    const/4 v7, 0x7

    aput-object v14, v4, v7

    const/16 v7, 0x8

    aput-object v15, v4, v7

    const/16 v7, 0x9

    aput-object p1, v4, v7

    const/16 v7, 0xa

    aput-object p3, v4, v7

    const/16 v7, 0xb

    aput-object v6, v4, v7

    const/16 v6, 0xc

    aput-object p5, v4, v6

    new-instance v6, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v6, v4, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    sget-object v7, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v8, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    const/16 v19, 0x3ffc

    move-object v9, v6

    const/4 v6, 0x1

    move-object v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move-object/from16 v22, v17

    const/16 v17, 0x0

    move-object/from16 v23, v18

    const/16 v18, 0x0

    move-object/from16 v5, p7

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct/range {v4 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v2, v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initConfig$1;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initConfig$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-nez p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->k0(Z)V

    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairStatus$1;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairStatus$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->H:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

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

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;

    invoke-direct {v4, v1, v3}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->h:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->j:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget v0, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->g:I

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->f:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->e:Ljava/lang/Object;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->c:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->b:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_4
    move-object v10, v9

    :goto_1
    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    if-eqz v10, :cond_5

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_5
    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_7
    move-object v10, v9

    :goto_2
    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    if-eqz v10, :cond_8

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->n:Ljava/lang/String;

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_8
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_9
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->U:Ljava/lang/String;

    invoke-interface {v0, v6, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    invoke-static {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    move-result-object v0

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v10, v3

    move-object v3, v0

    move v0, v7

    :goto_3
    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->b:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput-object v3, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->c:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v10, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->f:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput v0, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->g:I

    iput v8, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$fillRepairDetails$1;->j:I

    invoke-virtual {v1, v11, v12, v4}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Cc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_a

    return-object v5

    :cond_a
    move-object v12, v2

    move-object v2, v3

    move-object v3, v11

    move-object v11, v2

    :goto_4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v13, -0x1

    const/16 v14, 0x7f

    invoke-static {v2, v9, v3, v13, v14}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;ZII)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    move-result-object v2

    invoke-interface {v10, v6, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v3, v4, :cond_c

    move v3, v8

    goto :goto_5

    :cond_c
    move v3, v7

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DELIVERED_TO_CLIENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-eq v0, v2, :cond_1f

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    if-ne v0, v3, :cond_e

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;->c()Lkotlin/enums/EnumEntries;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;

    invoke-virtual {v4, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStepUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-array v0, v7, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    :goto_7
    move-object v3, v0

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DROPPED_IN_STORE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->EXPERTISE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->READY_FOR_PICK_UP:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v16, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RESTORATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v17, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->ROUTING_TO_WORKSHOP:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v12 .. v17}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v2, v0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v12, v14, v15, v3, v4}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    goto :goto_7

    :cond_f
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v2, v0, :cond_10

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v12, v14, v0, v3, v4}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    goto :goto_7

    :cond_10
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HOME_DELIVERY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array {v12, v14, v0, v3, v4}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    goto :goto_7

    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    move v6, v7

    move v10, v6

    :goto_9
    if-ge v6, v5, :cond_1f

    aget-object v12, v3, v6

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v14, v12, :cond_11

    goto :goto_a

    :cond_12
    move-object v13, v9

    :goto_a
    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    if-eqz v13, :cond_1e

    iget-object v14, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v14, v15, :cond_16

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v14, v15, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_b

    :cond_14
    move-object v13, v9

    :goto_b
    if-eqz v13, :cond_15

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->c:Ljava/lang/String;

    if-nez v0, :cond_19

    :cond_15
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_16
    :goto_c
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_18

    :try_start_0
    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v13, Lkotlin/Result$Failure;

    invoke-direct {v13, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v13

    :goto_d
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v13

    if-nez v13, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {v14}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->b()Ljava/lang/String;

    move-result-object v0

    :goto_e
    check-cast v0, Ljava/lang/String;

    goto :goto_f

    :cond_18
    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;->b:Ljava/lang/String;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-static {v0, v14, v13}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    :goto_f
    const-string v13, "%s"

    invoke-static {v0, v13, v7}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    if-eqz v10, :cond_1b

    new-instance v12, Lkotlin/Pair;

    sget-object v13, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->FUTURE:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1b
    if-eq v12, v2, :cond_1d

    sget-object v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RESTORATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v12, v13, :cond_1c

    sget-object v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RESTORATION_NOT_PERFORMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v2, v12, :cond_1c

    goto :goto_10

    :cond_1c
    new-instance v12, Lkotlin/Pair;

    sget-object v13, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->PAST:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1d
    :goto_10
    new-instance v10, Lkotlin/Pair;

    sget-object v12, Lcom/vuitton/android/presentation/screen/repairs/FollowUp;->CURRENT:Lcom/vuitton/android/presentation/screen/repairs/FollowUp;

    invoke-direct {v10, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v8

    :cond_1e
    :goto_11
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_1f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_20
    move-object v3, v11

    move-object v2, v12

    goto/16 :goto_3
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->j:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->h:Z

    iget-boolean v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iget v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

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
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->h:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iget v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iget v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

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
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iget v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iget v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iget v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v5

    move v5, v0

    move v0, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v7

    goto :goto_4

    :cond_5
    iget v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iget v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

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

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iput v6, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iput v11, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iput v10, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iput v9, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iput v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->h:Z

    iput v8, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v15, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v14, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v13, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v12, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->g:Z

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->i:Z

    const/4 v0, 0x5

    iput v0, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$initFeatureFlags$1;->l:I

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

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final Cc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->r:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array {p1, v0}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PAY_BY_LINK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final O(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final T0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetailConfirmAddress$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetailConfirmAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final U()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final Z0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->H:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final k0(Z)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;-><init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
