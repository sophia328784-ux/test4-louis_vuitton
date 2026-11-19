.class public final Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0015BI\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;",
        "getConsentForCustomizationUseCase",
        "Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;",
        "getShowInboxLongPressTooltipUseCase",
        "Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;",
        "updateShowInboxLongPressTooltipUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;)V",
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
.field public static final synthetic t:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/foundation/logger/Logger;

.field public final d:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final e:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;

.field public final h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final i:J

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/Flow;

.field public final s:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;)V
    .locals 18
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

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;

    move-object/from16 v1, p5

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-wide/16 v1, 0x12c

    iput-wide v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->i:J

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v14, 0x0

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v10, v11, v14}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v12

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->r:Lkotlinx/coroutines/flow/Flow;

    const/16 v12, 0x8

    new-array v12, v12, [Lkotlinx/coroutines/flow/Flow;

    aput-object v2, v12, v10

    const/4 v2, 0x1

    aput-object v7, v12, v2

    const/4 v2, 0x2

    aput-object v9, v12, v2

    const/4 v15, 0x3

    aput-object v5, v12, v15

    const/4 v2, 0x4

    aput-object v6, v12, v2

    const/4 v2, 0x5

    aput-object v8, v12, v2

    const/4 v2, 0x6

    aput-object v4, v12, v2

    aput-object v1, v12, v11

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v12, v0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v5, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;

    const/16 v12, 0x1fe

    const/4 v13, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v13}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v15, v14, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->s:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 v0, 0x3

    invoke-static {v1, v3, v3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final G5()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$closeNotificationPopup$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$closeNotificationPopup$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I9(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M()V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final R6(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final Ua(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->s:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a2()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$hideLongPressTooltip$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$hideLongPressTooltip$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final gc(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;)V
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$Screen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const/4 v4, 0x0

    const-string v5, "mylv"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationClicked;

    if-eqz v0, :cond_1

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "read_message"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationSwiped;

    if-eqz v0, :cond_2

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "swipe_Delete_intention"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDeleted;

    if-eqz v0, :cond_3

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "delete_confirm"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TryAgainClicked;

    if-eqz v0, :cond_4

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "try_again"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationLongClicked;

    if-eqz v0, :cond_5

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "long_press"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDialogClosed;

    if-eqz v0, :cond_6

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "preview_exit"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipOpened;

    if-eqz v0, :cond_7

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v4, "open_tooltip"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_7
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TooltipClosed;

    if-eqz p1, :cond_8

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/MyLV/Dashboard/Notifications-Inbox"

    const-string v3, "tooltip_disappear"

    const-string v4, "mylv"

    const-string v5, "navigation"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final h3()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$showLongPressTooltip$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$showLongPressTooltip$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final l3(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$openNotificationPopup$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$openNotificationPopup$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final q7(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$onItemExpanded$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$onItemExpanded$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
