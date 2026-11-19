.class public final Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/repository/AccountRepository;",
        "accountRepository",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/AccountRepository;

.field public final c:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->b:Lcom/vuitton/android/domain/repository/AccountRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->c:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->b:Lcom/vuitton/android/domain/repository/AccountRepository;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AccountRepository;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->e:I

    iget-object v7, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v7, p1, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->c:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne p0, v7, :cond_5

    move v3, v6

    :cond_5
    iput-object v4, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AccountRepository;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase$run$1;->e:I

    invoke-interface {v2, p1, v3}, Lcom/vuitton/android/domain/repository/AccountRepository;->n(ZZ)Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    return-object p0
.end method
