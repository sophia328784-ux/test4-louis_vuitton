.class final Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lokhttp3/Request;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Request;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.data.net.interceptor.SuspendAuthenticator$authenticate$1"
    f = "SuspendAuthenticator.kt"
    l = {
        0x19
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;

.field public final synthetic d:Lokhttp3/Route;

.field public final synthetic e:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;Lokhttp3/Route;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->c:Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->d:Lokhttp3/Route;

    iput-object p3, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->e:Lokhttp3/Response;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;

    iget-object v0, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->d:Lokhttp3/Route;

    iget-object v1, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->e:Lokhttp3/Response;

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->c:Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;-><init>(Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;Lokhttp3/Route;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->c:Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;

    iget-object v1, p0, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator$authenticate$1;->e:Lokhttp3/Response;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;->a(Lokhttp3/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
