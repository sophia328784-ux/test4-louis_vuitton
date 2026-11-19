.class final Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/api/RefreshTokenAuthenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.sightcall.universal.api.RefreshTokenAuthenticator$authenticate$1$1"
    f = "RefreshTokenAuthenticator.kt"
    l = {
        0x18
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $request:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Request;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $response:Lokhttp3/Response;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Request;",
            ">;",
            "Lokhttp3/Response;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$response:Lokhttp3/Response;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;

    iget-object v0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$response:Lokhttp3/Response;

    invoke-direct {p1, v0, p0, p2}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    iget-object p0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/agent/registration/AccessTokensRequest;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->refreshToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, ""

    :cond_3
    invoke-static {p1}, Lcom/sightcall/universal/agent/registration/NewRegistrationMapperKt;->createAccessTokensRequest(Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/AccessTokensRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->$response:Lokhttp3/Response;

    iput-object p1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->label:I

    new-instance v2, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v2, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p0

    new-instance v4, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;

    invoke-direct {v4, v2, v3}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;-><init>(Lkotlin/coroutines/Continuation;Lokhttp3/Response;)V

    invoke-virtual {p0, p1, v4}, Lcom/sightcall/universal/agent/UniversalAgent;->refreshToken(Lcom/sightcall/universal/agent/registration/AccessTokensRequest;Lcom/sightcall/universal/agent/RefreshTokenCallback;)V

    invoke-virtual {v2}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
