.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$logoutUser$1"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0x25f,
        0x264
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->d:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_6

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->e:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->l()V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;->d:I

    invoke-virtual {v1, p0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "MyInformationViewModelImpl"

    const-string v0, "Unable to reset Dynamic Yield ID"

    invoke-interface {p0, p1, v0, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    invoke-interface {p0, v3}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140d81

    invoke-direct {p0, p1, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, p0, v5}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
