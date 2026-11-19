.class public final Lcom/vuitton/android/domain/service/authentication/UserSessionService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatcher",
        "Lcom/vuitton/android/domain/repository/LocalCacheRepository;",
        "localCacheRepository",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/service/feature/TwistFeature;",
        "twist",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/LocalCacheRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/feature/TwistFeature;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/LocalCacheRepository;

.field public final b:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final d:Lcom/vuitton/android/domain/service/feature/TwistFeature;

.field public final e:Lkotlinx/coroutines/internal/ContextScope;

.field public f:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

.field public final g:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/LocalCacheRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/feature/TwistFeature;)V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->a:Lcom/vuitton/android/domain/repository/LocalCacheRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->d:Lcom/vuitton/android/domain/service/feature/TwistFeature;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->getDefault()Lkotlinx/coroutines/scheduling/DefaultScheduler;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->e:Lkotlinx/coroutines/internal/ContextScope;

    invoke-interface {p3}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    new-instance v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$loginState$1;

    const-string v5, "onLoginStateChanged(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    const-string v4, "onLoginStateChanged"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->b:Lkotlinx/coroutines/flow/SharingStarted;

    invoke-interface {p3}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    iput-object p0, v2, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->g:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;

    iget v1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$init$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->g:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p0

    return p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;

    iget v1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iget v4, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iget v5, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iget v4, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iget v5, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    iget v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iget v6, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iget v8, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const/4 p1, 0x0

    iput p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    iput p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iput p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iput v6, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    invoke-interface {v7, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move v6, p1

    move v8, v6

    move-object p1, v2

    move v2, v8

    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    iget-object v9, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->d:Lcom/vuitton/android/domain/service/feature/TwistFeature;

    invoke-interface {v9}, Lcom/vuitton/android/domain/service/feature/FeatureState;->getEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    instance-of v4, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v4, :cond_7

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    goto :goto_5

    :cond_7
    instance-of p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p1, :cond_9

    iput v8, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    iput v6, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iput v5, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    invoke-interface {v7, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v6

    move v5, v8

    :goto_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    :goto_3
    move v6, v4

    move v8, v5

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    goto :goto_5

    :cond_a
    instance-of v5, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz v5, :cond_b

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    goto :goto_5

    :cond_b
    instance-of p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz p1, :cond_d

    iput v8, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    iput v6, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    invoke-interface {v7, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_6

    :cond_c
    move v4, v6

    move v5, v8

    :goto_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    goto :goto_3

    :cond_d
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    :goto_5
    iget-object p0, p0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p1, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v8, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->b:I

    iput v6, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->d:I

    iput v3, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService$refreshLoadingState$1;->h:I

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->b(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    :goto_6
    return-object v1

    :cond_e
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_9

    :cond_f
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_10

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_9
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_10
    throw p0
.end method
