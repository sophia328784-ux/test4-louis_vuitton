.class final synthetic Lcom/vuitton/android/domain/service/authentication/UserSessionService$loginState$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/domain/service/authentication/UserSessionService;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/LocalCacheRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/feature/TwistFeature;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iget-object v0, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->f:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->e:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/vuitton/android/domain/service/authentication/UserSessionService$clearCache$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService$clearCache$1;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    iput-object p1, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->f:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService$loginState$1;->a(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
