.class public final Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "twistAuthRepository",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
        "Param",
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
.field public final a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    move-object p0, p2

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move-object p2, v7

    :goto_2
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    if-eqz p2, :cond_7

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object p0, v7

    :goto_3
    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;

    iget-object v2, p1, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;->b:Ljava/util/UUID;

    invoke-direct {p2, v2, v6, p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    invoke-interface {v3, p2, v0}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->g(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_a

    :try_start_1
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    invoke-interface {v3, p0, v0}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_5
    return-object v1

    :cond_9
    :goto_6
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_a
    return-object p0
.end method
