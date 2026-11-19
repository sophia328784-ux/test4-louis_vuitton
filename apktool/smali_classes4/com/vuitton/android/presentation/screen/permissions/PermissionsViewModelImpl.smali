.class public final Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dBi\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;",
        "notificationsPreferencesTracker",
        "Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;",
        "getNotificationsPreferencesUseCase",
        "Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;",
        "saveNotificationsPreferencesUseCase",
        "Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;",
        "getContactabilityUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;",
        "getConsentForCustomisationTrackerUseCase",
        "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;",
        "shouldRequestNotificationsPermissionUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;",
        "updateConsentForCustomisationTrackerUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;)V",
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
.field public static final synthetic v:I


# instance fields
.field public final b:Lcom/vuitton/android/core/events/LVEventSender;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

.field public final e:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;

.field public final k:Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;

.field public final l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final s:Lkotlinx/coroutines/flow/SharedFlow;

.field public final t:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final u:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;)V
    .locals 13
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 p1, p4

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->b:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 p1, p5

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 p1, p6

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    move-object/from16 p1, p7

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;

    const-string p1, "RUN_TIME_NOTIFICATION_TYPE"

    invoke-virtual {p2, p1}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;

    if-nez p1, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;->UNKNOWN:Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;

    :cond_0
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/permissions/models/NotificationType;

    move-object/from16 p1, p3

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v5, v6, v2, v7}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->s:Lkotlinx/coroutines/flow/SharedFlow;

    const/4 v8, 0x7

    invoke-static {v5, v5, v2, v8}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v8

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    aput-object v4, v7, v5

    aput-object p1, v7, v6

    const/4 p1, 0x2

    aput-object v0, v7, p1

    const/4 p1, 0x3

    aput-object v1, v7, p1

    const/4 v0, 0x4

    aput-object v3, v7, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v0, v7}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object p2, v4

    move/from16 p9, v5

    move-object/from16 p10, v6

    move-object/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    move-object/from16 p8, v12

    invoke-direct/range {p2 .. p10}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;ZZZZLcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->l4()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$1;

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final A6(Z)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Ac(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Bc()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->yc()V

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void
.end method

.method public final Ac(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Bc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$updateNotificationState$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$updateNotificationState$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final E4()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Gb()V

    return-void
.end method

.method public final Gb()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V
    .locals 12

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v4, "manage_my_preferences"

    const-string v5, "contactability"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_0
    move-object v4, p2

    sget-object p2, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "enable_notifications"

    const-string v6, "contactability"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "enable_personalization"

    const-string v6, "contactability"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final Y6()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final Z2()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->s:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final aa(ZLul0;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onNotificationButtonClicked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onNotificationButtonClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;ZLul0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final l4()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;->a()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final s3()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final u8()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onActivateNotificationsClicked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onActivateNotificationsClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;

    invoke-direct {v1, p0, p1, v3}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowDeviceNotificationsPermissionsBottomSheet;

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$2;

    invoke-direct {v1, p0, p1, v3}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$2;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$NotifyMeEnabled;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$NotifyMeEnabled;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v1, v2}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Bc()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->yc()V

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final x9()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final yc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$closeBottomSheetAndSendResult$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$closeBottomSheetAndSendResult$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zc(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel;)V
    .locals 16

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$CustomizationEnabled;->a:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModelKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "accept_perso"

    const-string v5, "contactability"

    const-string v6, "notify_me"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object/from16 v0, p0

    goto/16 :goto_6

    :pswitch_1
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/Consent/Notifications"

    const-string v5, "accept_perso"

    const-string v6, "portal"

    const-string v7, "notify_me"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    goto/16 :goto_6

    :pswitch_2
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/Consent/Inbox"

    const-string v6, "accept_perso"

    const-string v7, "inbox"

    const-string v8, "notify_me"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v3

    goto/16 :goto_6

    :pswitch_3
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/Consent/Notifications"

    const-string v7, "accept_perso"

    const-string v8, "back_in_stock"

    const-string v9, "notify_me"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v4

    goto/16 :goto_6

    :pswitch_4
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x61

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/Consent/Notifications"

    const-string v8, "accept_perso"

    const-string v9, "fashion_show_article"

    const-string v10, "notify_me"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v5

    goto/16 :goto_6

    :pswitch_5
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x61

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/Consent/Notifications"

    const-string v9, "accept_perso"

    const-string v10, "explore"

    const-string v11, "notify_me"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    move-object/from16 v0, p0

    move-object v1, v6

    goto/16 :goto_6

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$EnableDeviceNotifications;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$EnableDeviceNotifications;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$EnableDeviceNotifications;->a:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModelKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_6
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "activate"

    const-string v5, "contactability"

    const-string v6, "notify_me"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/Consent/Notifications"

    const-string v5, "activate"

    const-string v6, "portal"

    const-string v7, "notify_me"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "LVPass/Consent/Inbox"

    const-string v6, "activate"

    const-string v7, "inbox"

    const-string v8, "notify_me"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/Consent/Notifications"

    const-string v7, "activate"

    const-string v8, "back_in_stock"

    const-string v9, "notify_me"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :pswitch_a
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x61

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/Consent/Notifications"

    const-string v8, "activate"

    const-string v9, "fashion_show_article"

    const-string v10, "notify_me"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :pswitch_b
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x61

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/Consent/Notifications"

    const-string v9, "activate"

    const-string v10, "explore"

    const-string v11, "notify_me"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_5

    :cond_1
    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsTrackingUIModel$NotifyMeEnabled;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/Notifications"

    const-string v4, "accept_disable"

    const-string v5, "back_in_stock"

    const-string v6, "notify_me"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :goto_6
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
