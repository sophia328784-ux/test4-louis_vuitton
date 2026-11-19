.class public final Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;",
        "getAuthTokenUseCase",
        "Lcom/vuitton/android/domain/repository/ATGSessionRepository;",
        "atgSessionRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/repository/ATGSessionRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/ATGSessionRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/repository/ATGSessionRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;->a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;->b:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;->b:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget p0, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->c:I

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;->a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p0, :cond_9

    move-object p0, v2

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object p0, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    const/4 p0, 0x0

    iput p0, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->c:I

    iput v6, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->a()Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p1, v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    if-eqz p1, :cond_8

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput p0, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->c:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase$run$1;->f:I

    invoke-interface {v4, p1, v0}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p0

    :cond_8
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Salesforce access token is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_9
    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    if-eqz p0, :cond_a

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz p0, :cond_b

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected access token type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method
