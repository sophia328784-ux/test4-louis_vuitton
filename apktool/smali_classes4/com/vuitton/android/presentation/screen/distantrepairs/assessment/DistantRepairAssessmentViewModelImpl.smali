.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$Companion;,
        Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001%B\u0089\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;",
        "getCareServiceByIdUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;",
        "updateCareServiceUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;",
        "getAddressListUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "contactUsDelegate",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
        "Companion",
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


# static fields
.field public static final synthetic R:I


# instance fields
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final F:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lkotlinx/coroutines/flow/StateFlow;

.field public final I:Ljava/lang/String;

.field public final J:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final K:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final L:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final M:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final N:Lkotlinx/coroutines/channels/BufferedChannel;

.field public O:Ljava/util/List;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/foundation/logger/Logger;

.field public final d:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final e:Lkotlinx/serialization/json/Json;

.field public final f:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

.field public final l:Lcom/vuitton/android/core/events/LVEventSender;

.field public final m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 30
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

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->d:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->e:Lkotlinx/serialization/json/Json;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->l:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p7

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p3, v9

    move/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p4, v12

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    move-object/from16 p7, v15

    invoke-direct/range {p3 .. p9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move/from16 p1, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    move/from16 p4, v1

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p5, v1

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p6, v1

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v26, 0x1ff

    const/16 v27, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p7, v4

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p8, v1

    const/16 v1, 0x10

    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    aput-object v6, v1, p4

    const/4 v6, 0x1

    aput-object v7, v1, v6

    const/4 v6, 0x2

    aput-object v8, v1, v6

    const/4 v6, 0x3

    aput-object v9, v1, v6

    const/4 v7, 0x4

    aput-object v10, v1, v7

    const/4 v7, 0x5

    aput-object v11, v1, v7

    const/4 v7, 0x6

    aput-object v13, v1, v7

    aput-object v14, v1, p1

    const/16 v7, 0x8

    aput-object v15, v1, v7

    const/16 v7, 0x9

    aput-object v2, v1, v7

    const/16 v2, 0xa

    aput-object p7, v1, v2

    const/16 v2, 0xb

    aput-object p5, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object p6, v1, v2

    const/16 v2, 0xe

    aput-object p8, v1, v2

    const/16 v2, 0xf

    aput-object v5, v1, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v7, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    const v20, 0x1fffc

    move-object v8, v4

    const/4 v4, 0x1

    move-object v9, v5

    const/4 v5, 0x0

    move v10, v6

    const/4 v6, 0x0

    move-object v11, v7

    const/4 v7, 0x0

    move-object v13, v8

    const/4 v8, 0x0

    move-object v14, v9

    const/4 v9, 0x0

    move v15, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v24, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move-object/from16 v26, v19

    const/16 v19, 0x0

    move-object/from16 v0, v23

    move-object/from16 v28, v24

    move-object/from16 v29, v26

    invoke-direct/range {v2 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, v29

    invoke-static {v0, v1, v9, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->H:Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "CARESERVICE_ID"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->I:Ljava/lang/String;

    move/from16 v0, p4

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->J:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->K:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->M:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->N:Lkotlinx/coroutines/channels/BufferedChannel;

    move-object/from16 v0, v28

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->O:Ljava/util/List;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$1;

    invoke-direct {v3, v2, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    const/4 v15, 0x3

    invoke-static {v0, v2, v2, v3, v15}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_1
    invoke-interface/range {v25 .. v25}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;)Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    move-result-object v2

    move-object/from16 v8, v25

    invoke-interface {v8, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->L8(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    sget-object v2, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void

    :cond_2
    move-object/from16 v25, v8

    goto :goto_1
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v2, p5, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;

    if-eqz v2, :cond_0

    move-object v2, p5

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;

    invoke-direct {v2, p0, p5}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :pswitch_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->c:Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->d:I

    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->c:Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, p2

    move p2, p1

    move-object p1, v8

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/Result;

    iget-object p1, p5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0, p5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    :cond_1
    if-nez p1, :cond_3

    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-virtual {p0, v6, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Dc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object p5, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p5, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Cc(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    move-result-object p1

    if-nez p1, :cond_5

    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-virtual {p0, v6, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Dc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetailKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object p2

    iget-object p3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    const p5, 0x7ffffe

    invoke-static {p2, p3, v7, v7, p5}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object p2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    iput-object p4, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    const/4 p5, 0x3

    iput p5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-virtual {p3, p1, p2, v2}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_6

    goto :goto_6

    :cond_6
    :goto_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_8

    move-object p2, p1

    check-cast p2, Lkotlin/Unit;

    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->c:Ljava/lang/Object;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->d:I

    const/4 p2, 0x4

    iput p2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_7

    goto :goto_6

    :cond_7
    move p2, v6

    :goto_4
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p4, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->M:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p5, Lkotlin/Result;

    invoke-direct {p5, p4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->c:Ljava/lang/Object;

    iput p2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->d:I

    const/4 p2, 0x5

    iput p2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-interface {p3, p5, v2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string p4, "DistantRepairAssessmentViewModelImpl"

    const-string p5, "Unable to update address"

    invoke-interface {p3, p4, p5, p2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->b:Ljava/lang/Object;

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->c:Ljava/lang/Object;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->d:I

    const/4 p1, 0x6

    iput p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateAddressesPatch$1;->g:I

    invoke-virtual {p0, v5, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Dc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_9

    :goto_6
    return-object v3

    :cond_9
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final yc(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 p1, 0x0

    const/4 v3, 0x2

    const v4, 0x7f140a5a

    invoke-direct {v2, v4, p1, v3, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->e:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget p0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v9, p1

    move v3, v7

    :cond_5
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object p1, v8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_CANCELLATION_REASON:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v9, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iput v6, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    invoke-virtual {v0, p1, v7, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9, v8, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v8, p1

    move v3, v7

    :cond_7
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object p1, v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_PAYMENT_METHODS_ICONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v6, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    invoke-virtual {v0, p1, v7, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v6, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v5, p0

    move p0, v7

    :cond_9
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object p1, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_BILLING_ADDRESS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput p0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->d:I

    iput v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$initFeatureFlags$1;->g:I

    invoke-virtual {v0, p1, v7, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_a

    :goto_3
    return-object v2

    :cond_a
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final A0(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Ec(Landroid/content/Context;)V

    return-void
.end method

.method public final B0(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    :cond_3
    return-void
.end method

.method public final Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const v3, 0x7f140f9c

    invoke-direct {v1, v3, v0, v2, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Cc(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;
    .locals 61

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v8, ""

    if-nez v6, :cond_1

    move-object v6, v8

    :cond_1
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x2

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->e:Lkotlinx/serialization/json/Json;

    if-le v6, v9, :cond_5

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->g:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;

    invoke-direct {v9, v6}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->F:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;

    invoke-direct {v12, v11}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;-><init>(Ljava/lang/String;)V

    filled-new-array {v9, v12}, [Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;

    invoke-direct {v11, v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f13003a

    goto :goto_1

    :cond_2
    const v4, 0x7f13003c

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;->Companion:Lcom/vuitton/foundation/model/domain/model/account/address/AddressState$Companion;

    invoke-virtual {v11}, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v11

    invoke-direct {v9, v11}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v10, v9, v6}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;->b:Ljava/lang/String;

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;

    iget-object v6, v9, Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;->a:Ljava/lang/String;

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_3
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez p2, :cond_6

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :goto_4
    if-eqz v5, :cond_2d

    sget-object v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v14

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->e:Ljava/lang/String;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->g:Ljava/lang/String;

    move-object/from16 v16, v8

    const/4 v11, 0x0

    iget-wide v7, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    move-object/from16 p1, v11

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    sget-object v17, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v18, v3

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->j:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    move-object/from16 v21, v3

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->k:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    move-object/from16 v23, v3

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object/from16 v3, p1

    :goto_5
    if-nez v3, :cond_8

    move-object/from16 v24, v16

    goto :goto_6

    :cond_8
    move-object/from16 v24, v3

    :goto_6
    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object/from16 v3, p1

    :goto_7
    if-nez v3, :cond_a

    move-object/from16 v25, v16

    goto :goto_8

    :cond_a
    move-object/from16 v25, v3

    :goto_8
    if-eqz v1, :cond_b

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->k:Ljava/lang/String;

    goto :goto_9

    :cond_b
    move-object/from16 v3, p1

    :goto_9
    if-nez v3, :cond_c

    move-object/from16 v26, v16

    goto :goto_a

    :cond_c
    move-object/from16 v26, v3

    :goto_a
    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->l:Ljava/lang/String;

    goto :goto_b

    :cond_d
    move-object/from16 v3, p1

    :goto_b
    if-nez v3, :cond_e

    move-object/from16 v27, v16

    goto :goto_c

    :cond_e
    move-object/from16 v27, v3

    :goto_c
    if-eqz v1, :cond_f

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->p:Ljava/lang/String;

    goto :goto_d

    :cond_f
    move-object/from16 v3, p1

    :goto_d
    if-nez v3, :cond_10

    move-object/from16 v28, v16

    goto :goto_e

    :cond_10
    move-object/from16 v28, v3

    :goto_e
    if-eqz v1, :cond_11

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->q:Ljava/lang/String;

    goto :goto_f

    :cond_11
    move-object/from16 v3, p1

    :goto_f
    if-nez v3, :cond_12

    move-object/from16 v29, v16

    goto :goto_10

    :cond_12
    move-object/from16 v29, v3

    :goto_10
    invoke-static/range {v18 .. v18}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    iget-object v0, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v10, v4}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->e(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    goto :goto_11

    :cond_13
    move-object/from16 v30, v4

    :goto_11
    if-eqz v1, :cond_14

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->t:Ljava/lang/String;

    goto :goto_12

    :cond_14
    move-object/from16 v3, p1

    :goto_12
    if-nez v3, :cond_15

    move-object/from16 v31, v16

    goto :goto_13

    :cond_15
    move-object/from16 v31, v3

    :goto_13
    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    goto :goto_14

    :cond_16
    move-object/from16 v3, p1

    :goto_14
    if-nez v3, :cond_17

    move-object/from16 v32, v16

    goto :goto_15

    :cond_17
    move-object/from16 v32, v3

    :goto_15
    if-eqz v2, :cond_18

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    goto :goto_16

    :cond_18
    move-object/from16 v3, p1

    :goto_16
    if-nez v3, :cond_19

    move-object/from16 v33, v16

    goto :goto_17

    :cond_19
    move-object/from16 v33, v3

    :goto_17
    if-eqz v2, :cond_1a

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->k:Ljava/lang/String;

    goto :goto_18

    :cond_1a
    move-object/from16 v3, p1

    :goto_18
    if-nez v3, :cond_1b

    move-object/from16 v34, v16

    goto :goto_19

    :cond_1b
    move-object/from16 v34, v3

    :goto_19
    if-eqz v2, :cond_1c

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->l:Ljava/lang/String;

    goto :goto_1a

    :cond_1c
    move-object/from16 v3, p1

    :goto_1a
    if-nez v3, :cond_1d

    move-object/from16 v35, v16

    goto :goto_1b

    :cond_1d
    move-object/from16 v35, v3

    :goto_1b
    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->p:Ljava/lang/String;

    goto :goto_1c

    :cond_1e
    move-object/from16 v3, p1

    :goto_1c
    if-nez v3, :cond_1f

    move-object/from16 v36, v16

    goto :goto_1d

    :cond_1f
    move-object/from16 v36, v3

    :goto_1d
    if-eqz v2, :cond_20

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->q:Ljava/lang/String;

    goto :goto_1e

    :cond_20
    move-object/from16 v3, p1

    :goto_1e
    if-nez v3, :cond_21

    move-object/from16 v37, v16

    goto :goto_1f

    :cond_21
    move-object/from16 v37, v3

    :goto_1f
    invoke-static/range {v18 .. v18}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v10, v4}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->e(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_22
    move-object/from16 v38, v4

    if-eqz v2, :cond_23

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->t:Ljava/lang/String;

    goto :goto_20

    :cond_23
    move-object/from16 v0, p1

    :goto_20
    if-nez v0, :cond_24

    move-object/from16 v39, v16

    goto :goto_21

    :cond_24
    move-object/from16 v39, v0

    :goto_21
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->w:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v40, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->b:Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->c:Ljava/lang/String;

    move-object/from16 v42, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->d:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->e:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object/from16 p0, v3

    iget-wide v2, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->f:D

    move-object/from16 v44, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->g:Ljava/lang/Double;

    move-object/from16 v47, v0

    iget v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->h:I

    move/from16 v48, v0

    iget-boolean v0, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->i:Z

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;->j:Z

    move/from16 v49, v0

    move-wide/from16 v45, v2

    move/from16 v50, v10

    invoke-direct/range {v40 .. v50}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;IZZ)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_22

    :cond_25
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->x:Ljava/lang/String;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    move-object/from16 v47, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    if-eqz v0, :cond_26

    sget-object v19, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    move-object/from16 v50, v0

    goto :goto_23

    :cond_26
    move-object/from16 v50, p1

    :goto_23
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->F:Ljava/lang/String;

    move-object/from16 v51, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->G:Ljava/lang/String;

    move-object/from16 v52, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->H:Ljava/lang/String;

    move-object/from16 v53, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    move-object/from16 v54, v0

    if-eqz v1, :cond_27

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->d:Ljava/lang/String;

    goto :goto_24

    :cond_27
    move-object/from16 v0, p1

    :goto_24
    if-nez v0, :cond_28

    move-object/from16 v55, v16

    goto :goto_25

    :cond_28
    move-object/from16 v55, v0

    :goto_25
    if-eqz v1, :cond_29

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    goto :goto_26

    :cond_29
    move-object/from16 v0, p1

    :goto_26
    if-nez v0, :cond_2a

    move-object/from16 v56, v16

    goto :goto_27

    :cond_2a
    move-object/from16 v56, v0

    :goto_27
    if-eqz v1, :cond_2b

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    goto :goto_28

    :cond_2b
    move-object/from16 v0, p1

    :goto_28
    if-nez v0, :cond_2c

    move-object/from16 v57, v16

    goto :goto_29

    :cond_2c
    move-object/from16 v57, v0

    :goto_29
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->M:Ljava/lang/String;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->N:Ljava/lang/String;

    move-object/from16 v20, v11

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    const/16 v60, 0x0

    move-object/from16 v58, v0

    move-object/from16 v59, v1

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    move-object/from16 v42, v4

    move-object/from16 v16, v6

    move-object/from16 v46, v10

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-wide/from16 v18, v7

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v60}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    :cond_2d
    const/16 p1, 0x0

    return-object p1
.end method

.method public final Dc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->b:Z

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->b:Z

    iput v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$handleUpdateError$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Ec(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    const-string v2, ""

    if-eqz v1, :cond_6

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->k:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->l:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object v10, v3

    :goto_2
    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->p:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->t:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->r:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object v13, v3

    :goto_3
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->q:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object v14, v3

    :goto_4
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->o:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object v15, v1

    :goto_5
    const-string v16, ""

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->e:Lkotlinx/serialization/json/Json;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->c(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final J0()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-static {v3, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    if-nez v1, :cond_2

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz v1, :cond_1

    iget-wide v3, v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentConfirmationScreen;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v3, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentConfirmationScreen;-><init>(Ljava/lang/String;D)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_5
    return-void
.end method

.method public final K0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DeclineRepairClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DeclineRepairClickedEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$declineAssessment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$declineAssessment$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final L()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->N:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final L6(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final L8(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->P:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v0, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ViewEstimate;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ViewEstimate;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->d:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v1, p1, v0}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->M3()V

    :cond_1
    return-void
.end method

.method public final M3()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final N0()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AssessmentConfirmClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AssessmentConfirmClickedEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final P0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final S(I)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final T8(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final V()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->M:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->H:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final b6(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getAddresses$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getAddresses$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final l7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->O:Ljava/util/List;

    if-eqz p1, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    :cond_4
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->O:Ljava/util/List;

    if-eqz p2, :cond_e

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_e

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_9

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_a
    move-object v3, v1

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :goto_5
    if-ge v4, v6, :cond_c

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v2

    :cond_d
    check-cast v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    :cond_e
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Ec(Landroid/content/Context;)V

    return-void
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ReceiveNextButtonClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ReceiveNextButtonClickedEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRM:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p1, p1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SendNextButtonClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SendNextButtonClickedEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p1, v0, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AcceptEstimateClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AcceptEstimateClickedEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v0, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final o0(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Q:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->K:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final t7()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getUserFirstName$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$getUserFirstName$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final w0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->J:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final z1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->H:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
