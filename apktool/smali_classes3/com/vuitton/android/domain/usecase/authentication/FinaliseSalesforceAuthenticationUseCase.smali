.class public final Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/ATGSessionRepository;",
        "atgSessionRepository",
        "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;",
        "salesforceAuthRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

.field public final b:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;->a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;->b:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;->a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

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

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->d:I

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget p1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->d:I

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move p2, p1

    move-object p1, v6

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    if-eqz v2, :cond_9

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->c:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->d:I

    iput v6, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->c()Lkotlin/Unit;

    move-result-object v6

    if-ne v6, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->c:Ljava/lang/String;

    iput p2, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->d:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    invoke-interface {v3, v2, v0}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v8, v2

    move-object v2, p1

    move p1, p2

    move-object p2, v8

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p2, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    :try_start_1
    check-cast p2, Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;->b:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->c:Ljava/lang/String;

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase$run$1;->g:I

    invoke-interface {p0, v2, v0}, Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;->d(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    return-object p0

    :cond_8
    return-object p2

    :cond_9
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty access token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
