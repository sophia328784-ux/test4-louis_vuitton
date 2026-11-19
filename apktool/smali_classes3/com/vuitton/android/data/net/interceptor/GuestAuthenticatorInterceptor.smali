.class public final Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;
.super Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;",
        "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "twistAuthRepository",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lkotlin/Function0;",
        "",
        "isTwist",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lkotlin/jvm/functions/Function0;)V",
        "data"
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

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
            "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;

    iget v1, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;-><init>(Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->b:Lokhttp3/Interceptor$Chain;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->b:Lokhttp3/Interceptor$Chain;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object p1, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->b:Lokhttp3/Interceptor$Chain;

    iput v4, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of p2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-nez p2, :cond_5

    iput-object p1, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->b:Lokhttp3/Interceptor$Chain;

    iput v3, v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor$interceptSuspendable$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
