.class public final Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;
.super Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;",
        "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;",
        "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
        "tokenRefreshCoordinator",
        "<init>",
        "(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;)V",
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
.field public final a:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;->a:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;

    iget v1, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;-><init>(Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->b:Lokhttp3/internal/http/RealInterceptorChain;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->b:Lokhttp3/internal/http/RealInterceptorChain;

    iput v3, v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor$interceptSuspendable$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;->a:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
