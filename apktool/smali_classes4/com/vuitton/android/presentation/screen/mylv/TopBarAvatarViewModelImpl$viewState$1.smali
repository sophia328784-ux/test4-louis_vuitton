.class final Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;-><init>(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;",
        "avatar",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
        "initials",
        "",
        "hasUnreadNotifications",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$viewState$1"
    f = "TopBarAvatarViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

.field public synthetic c:Ljava/lang/String;

.field public synthetic d:Z


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iput-object p2, p3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->c:Ljava/lang/String;

    iput-boolean p0, p3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->d:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$viewState$1;->d:Z

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;

    invoke-direct {p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Z)V

    return-object p1
.end method
