.class public final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BY\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;",
        "settingsTracker",
        "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;",
        "getUserConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;",
        "patchUserConsentsUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
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

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final e:Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;

.field public final f:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final i:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final j:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 28
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p4

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v8

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v10, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    const/4 v11, 0x3

    invoke-direct {v10, v5, v5, v11, v5}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v12, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-direct {v12, v5, v5, v11, v5}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->k(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v14

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_CUSTOMER_MATCH:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v13}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p1, v3

    const/16 v3, 0x9

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    aput-object v7, v3, p1

    aput-object v12, v3, v14

    const/4 v7, 0x2

    aput-object v10, v3, v7

    aput-object v1, v3, v11

    const/4 v1, 0x4

    aput-object v13, v3, v1

    const/4 v1, 0x5

    aput-object v2, v3, v1

    const/4 v1, 0x6

    aput-object v9, v3, v1

    aput-object v15, v3, v4

    const/16 v1, 0x8

    aput-object v6, v3, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v12, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    const/16 v26, 0x1fff

    const/16 v27, 0x0

    const/4 v13, 0x0

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

    invoke-direct/range {v12 .. v27}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;-><init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v2, v3, v12}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$1;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v5, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz v8, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveProfile$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveProfile$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v5, v3, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v5, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method


# virtual methods
.method public final Aa()V
    .locals 10

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/MyLV/Dashboard/Profil"

    const-string v3, "EditProfil"

    const-string v4, "MyLV"

    const-string v5, "navigation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final N3()Z
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    if-ne v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    if-ne v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    if-ne v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final Z5()V
    .locals 4

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V
    .locals 13

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_mysettings"

    const-string v4, "mylv_mysettings"

    const-string v5, "consent_manager"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_myinfo_missing_phone_number"

    const-string v4, "mylv_contactsettings"

    const-string v5, "consent_manager"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactPreferencesScreen;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactPreferencesScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/mysettings/contactPreferences"

    const-string v4, "mylv/my_settings/contact_preferences"

    const-string v5, "response"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;

    const-string v1, "consent_disabled"

    const-string v2, "consent_enabled"

    if-eqz v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;->a:Z

    if-eqz p1, :cond_3

    move-object v6, v2

    goto :goto_0

    :cond_3
    move-object v6, v1

    :goto_0
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "mylv_myprivacysettings"

    const-string v7, "google_customer_match_consent"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v1, v3

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "mylv_myprivacysettings"

    const-string v6, "via_partners"

    const-string v7, "google_customer_match_consent"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "mylv_myprivacysettings"

    const-string v6, "privacy_policy"

    const-string v7, "google_customer_match_consent"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "consent_manager"

    const-string v6, "close_popin"

    const-string v7, "sms_marketing"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "consent_manager"

    const-string v6, "cta_complete_your_profile"

    const-string v7, "sms_marketing"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_8
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;->a:Z

    if-eqz p1, :cond_9

    move-object v6, v2

    goto :goto_2

    :cond_9
    move-object v6, v1

    :goto_2
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "consent_manager"

    const-string v7, "sms_marketing"

    const-string v8, "click"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_a
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;->a:Z

    const-string v0, "phone"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModelKt;->a(Ljava/lang/String;Z)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_3

    :cond_b
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;->a:Z

    const-string v0, "sms"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModelKt;->a(Ljava/lang/String;Z)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_3

    :cond_c
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;->a:Z

    const-string v0, "mail"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModelKt;->a(Ljava/lang/String;Z)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_3

    :cond_d
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;->a:Z

    const-string v0, "newsletter"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModelKt;->a(Ljava/lang/String;Z)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_3

    :cond_e
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;->a:Z

    const-string v0, "email_tracking"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModelKt;->a(Ljava/lang/String;Z)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final db(Z)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final ja(Z)V
    .locals 3

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final k3()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final v1()V
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Landroidx/compose/runtime/MutableState;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final yc(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;
    .locals 10

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v9, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Landroidx/compose/runtime/MutableState;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
