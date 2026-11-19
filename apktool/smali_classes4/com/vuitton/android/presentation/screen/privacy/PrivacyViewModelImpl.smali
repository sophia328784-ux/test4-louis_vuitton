.class public final Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0089\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;",
        "getConsentTypeByLocale",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;",
        "getConsentListUseCase",
        "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;",
        "shouldRequestNotificationsPermissionUseCase",
        "Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;",
        "setNotificationsPermissionAskedUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;",
        "setPiplCbdtAgreementUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;",
        "getPiplCbdtAgreementUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;",
        "setConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;",
        "initializePrivacyRelatedToolsUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;",
        "startAppsFlyerUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;",
        "stopAppsFlyerUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;",
        "userHasConsentForAppsFlyerUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;

.field public final m:Lcom/vuitton/android/core/events/LVEventSender;

.field public final n:Lcom/vuitton/foundation/logger/Logger;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final v:Lkotlinx/coroutines/flow/SharedFlow;

.field public final w:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final x:Lkotlinx/coroutines/flow/SharedFlow;

.field public final y:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 19
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p16

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

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->m:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->n:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->GDPR:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-static {v8, v9, v10, v11}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {v8, v9, v10, v11}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->w:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->x:Lkotlinx/coroutines/flow/SharedFlow;

    const/4 v12, 0x6

    new-array v12, v12, [Lkotlinx/coroutines/flow/Flow;

    aput-object v2, v12, v8

    aput-object v3, v12, v9

    const/4 v3, 0x2

    aput-object v4, v12, v3

    const/4 v3, 0x3

    aput-object v6, v12, v3

    const/4 v4, 0x4

    aput-object v7, v12, v4

    aput-object v5, v12, v11

    new-instance v4, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v4, v12}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlinx/coroutines/flow/SharingStarted$Companion;->b:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v9, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p4, v9

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    move/from16 p7, v15

    move/from16 p8, v16

    move/from16 p9, v17

    move/from16 p10, v18

    invoke-direct/range {p4 .. p12}, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v6, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->y:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->APPSFLYER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object/from16 v1, p3

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;

    invoke-direct {v4, v0, v10}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v10, v10, v4, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->PIPL:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getPiplCbdtAgreement$1;

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getPiplCbdtAgreement$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v10, v10, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_2

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_5
    move-object v6, v5

    :goto_3
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_6

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_4

    :cond_6
    move-object v2, v5

    :goto_4
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_7

    move v9, v4

    goto :goto_5

    :cond_7
    move v9, v3

    :goto_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_9
    move-object v6, v5

    :goto_6
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_a

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_7

    :cond_a
    move-object v2, v5

    :goto_7
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_b

    move v10, v4

    goto :goto_8

    :cond_b
    move v10, v3

    :goto_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v6, :cond_c

    goto :goto_9

    :cond_d
    move-object v2, v5

    :goto_9
    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v2, :cond_e

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :cond_e
    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v5, v1, :cond_f

    move v11, v4

    goto :goto_a

    :cond_f
    move v11, v3

    :goto_a
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;-><init>(ZZZZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v9, 0x0

    const-string v10, "LVPass/Consent_manager"

    const/4 v11, 0x0

    const-string v12, "consent_manager"

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_16

    :cond_10
    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;

    if-eqz v2, :cond_21

    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    if-eqz v7, :cond_11

    goto :goto_b

    :cond_12
    move-object v6, v5

    :goto_b
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_13

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_c

    :cond_13
    move-object v2, v5

    :goto_c
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_14

    move v8, v4

    goto :goto_d

    :cond_14
    move v8, v3

    :goto_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v7, :cond_15

    goto :goto_e

    :cond_16
    move-object v6, v5

    :goto_e
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_17

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_f

    :cond_17
    move-object v2, v5

    :goto_f
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_18

    move v9, v4

    goto :goto_10

    :cond_18
    move v9, v3

    :goto_10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v7, :cond_19

    goto :goto_11

    :cond_1a
    move-object v6, v5

    :goto_11
    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v6, :cond_1b

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_12

    :cond_1b
    move-object v2, v5

    :goto_12
    sget-object v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v2, v6, :cond_1c

    move v10, v4

    goto :goto_13

    :cond_1c
    move v10, v3

    :goto_13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v6, :cond_1d

    goto :goto_14

    :cond_1e
    move-object v2, v5

    :goto_14
    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v2, :cond_1f

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :cond_1f
    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v5, v1, :cond_20

    move v11, v4

    goto :goto_15

    :cond_20
    move v11, v3

    :goto_15
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;-><init>(ZZZZLjava/lang/Boolean;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v9, 0x0

    const-string v10, "LVPass/consent_manager"

    const-string v11, "save"

    const-string v12, "consent_manager"

    const-string v13, "submit_consent"

    const/4 v14, 0x0

    const/16 v16, 0x21

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_16
    invoke-virtual {v0, v8}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_21
    invoke-static {}, Lv40;->g()V

    return-void
.end method


# virtual methods
.method public final O4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$initiatePrivacyRelatedTools$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$initiatePrivacyRelatedTools$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->y:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d1(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;Z)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    :goto_2
    move-object v2, v3

    goto/16 :goto_8

    :cond_1
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    goto :goto_2

    :cond_7
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    if-eqz v3, :cond_9

    if-eqz p2, :cond_8

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_6

    :cond_8
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    goto :goto_2

    :cond_9
    instance-of v2, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    if-eqz v2, :cond_b

    if-eqz p2, :cond_a

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_7

    :cond_a
    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    goto :goto_2

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_c
    :goto_8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final kb()Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->UNSET:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-ne v0, v2, :cond_2

    return v3

    :cond_3
    return v1
.end method

.method public final n8()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final xc(Z)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->MANDATORY:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->a4()V

    :cond_2
    return-void
.end method

.method public final za(Z)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->MANDATORY:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->a4()V

    :cond_2
    return-void
.end method

.method public final zc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$agreePiplCbdt$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$agreePiplCbdt$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
