.class public final Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;",
        "getUserAvatarUseCase",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "<init>",
        "(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

.field public final d:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    sget-object p2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->f:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->g:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p3, 0x0

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p6

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p6, p3, p3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->yc()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p6

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$1;

    invoke-direct {v0, p1, p0, p3}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$1;-><init>(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, p3, p3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;

    const/4 p6, 0x4

    invoke-direct {p1, p6, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p2, p4, p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->i:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final yc()V
    .locals 3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
