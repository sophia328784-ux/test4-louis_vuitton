.class final Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase"
    f = "AuthenticateCodeExchangeUseCase.kt"
    l = {
        0x10,
        0x15,
        0x18
    }
    m = "run-gIAlu-s"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;->a(Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
