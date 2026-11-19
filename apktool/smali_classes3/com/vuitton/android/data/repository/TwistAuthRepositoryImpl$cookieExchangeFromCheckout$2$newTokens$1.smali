.class final Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;",
        "tokenDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;"
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
    c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1"
    f = "TwistAuthRepositoryImpl.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->e:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->e:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object p1

    iput-object v3, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iput v4, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->c:I

    iget-object v0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;->e:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    invoke-virtual {v0, p1, p0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method
