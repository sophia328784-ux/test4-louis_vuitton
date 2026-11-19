.class public final Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BQ\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;",
        "getConsentForCustomization",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;",
        "notificationsPreferencesTracker",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;",
        "getNotificationsPreferencesUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;",
        "unsubscribeBackInStockUseCase",
        "Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;",
        "saveNotificationsPreferencesUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
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
.field public final b:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final f:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

.field public final i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/StateFlow;

.field public final q:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final r:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final s:Lkotlinx/coroutines/flow/Flow;

.field public final t:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->s:Lkotlinx/coroutines/flow/Flow;

    const/4 v2, 0x5

    new-array v2, v2, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p3, v2, p1

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object v0, v2, p1

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p1, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;-><init>(Ljava/util/Map;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->M()V

    sget-object p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PreferencesScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PreferencesScreen;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v1, v2}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->a(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a(Ljava/util/Map;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSaveEvent;

    invoke-direct {v5, v3, v1, v4, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSaveEvent;-><init>(ZZZZ)V

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$SystemNotificationPopinScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$SystemNotificationPopinScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/NotificationsDisabled"

    const-string v4, "notifications_disabled_popin"

    const-string v5, "notifications_permission"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PersonalizationPopinScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PersonalizationPopinScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/Personalization"

    const-string v4, "personalization_popin"

    const-string v5, "personalization_optin"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PreferencesScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PreferencesScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/Notifications"

    const-string v4, "notifications_settings"

    const-string v5, "mylv"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableNotificationsClick;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableNotificationsClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/NotificationsDisabled"

    const-string v4, "activate"

    const-string v5, "notifications_permission"

    const-string v6, "notifications"

    const-string v7, "notifications_permission"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnCloseNotificationsDisabledPopin;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnCloseNotificationsDisabledPopin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/NotificationsDisabled"

    const-string v4, "close_popin"

    const-string v5, "notifications_permission"

    const-string v6, "click"

    const-string v7, "notifications_permission"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableOptionsClick;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableOptionsClick;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Consent/Personalization"

    const-string v4, "enable_options"

    const-string v5, "personalization_optin"

    const-string v6, "notifications"

    const-string v7, "personalization_optin"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnClosePersonalizationPopin;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnClosePersonalizationPopin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/Consent/Personalization"

    const-string v3, "close_popin"

    const-string v4, "personalization_optin"

    const-string v5, "click"

    const-string v6, "personalization_optin"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final M()V
    .locals 15

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    const v4, 0x7f140ea2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const v6, 0x7f140ea3

    const/4 v7, 0x1

    invoke-direct {v3, v6, v4, v5, v7}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZ)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    const v5, 0x7f140ea7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const v8, 0x7f140ea8

    invoke-direct {v3, v8, v5, v6, v7}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZ)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v8, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    const v3, 0x7f140ea5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v0

    :goto_2
    const/16 v13, 0x8

    const/4 v14, 0x0

    const v9, 0x7f140ea6

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v2, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v5, v1}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    if-eqz v0, :cond_3

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final O7()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSettingsEvent;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesSettingsEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final h5()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->s2(Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;Z)V

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final j2()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final m3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$SystemNotificationPopinScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$SystemNotificationPopinScreen;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PersonalizationPopinScreen;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$PersonalizationPopinScreen;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final m8()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesEntryPointEvent;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$NotificationsPreferencesEntryPointEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final q8()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NotifyMeDisabled;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->s2(Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$DisableBackInStock;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$DisableBackInStock;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$1;

    invoke-direct {v2, p0, v4}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableNotificationsClick;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableNotificationsClick;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2;

    invoke-direct {v2, p0, v4}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableOptionsClick;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnEnableOptionsClick;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    :cond_2
    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final s2(Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final w1()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->s:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final z9()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
