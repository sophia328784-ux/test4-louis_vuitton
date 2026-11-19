.class final Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "loginState",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"
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
    c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$fetchNotifications$1$1"
    f = "TopBarAvatarViewModelImpl.kt"
    l = {
        0x5b,
        0x5d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->c:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->c:Ljava/lang/Object;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->b:I

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->c:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$fetchNotifications$1$1;->b:I

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_4

    :goto_1
    return-object v3

    :cond_4
    :goto_2
    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
