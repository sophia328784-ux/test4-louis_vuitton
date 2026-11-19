.class final Lcoil3/intercept/EngineInterceptor$intercept$2;
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
        "Lcoil3/request/SuccessResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcoil3/request/SuccessResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcoil3/intercept/EngineInterceptor;

.field public final synthetic d:Lcoil3/request/ImageRequest;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcoil3/request/Options;

.field public final synthetic g:Lcoil3/EventListener;

.field public final synthetic h:Lcoil3/memory/MemoryCache$Key;

.field public final synthetic i:Lcoil3/intercept/Interceptor$Chain;


# direct methods
.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->c:Lcoil3/intercept/EngineInterceptor;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->d:Lcoil3/request/ImageRequest;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->f:Lcoil3/request/Options;

    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->g:Lcoil3/EventListener;

    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->h:Lcoil3/memory/MemoryCache$Key;

    iput-object p7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->i:Lcoil3/intercept/Interceptor$Chain;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    iget-object v6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->h:Lcoil3/memory/MemoryCache$Key;

    iget-object v7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->i:Lcoil3/intercept/Interceptor$Chain;

    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->c:Lcoil3/intercept/EngineInterceptor;

    iget-object v2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->d:Lcoil3/request/ImageRequest;

    iget-object v3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->e:Ljava/lang/Object;

    iget-object v4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->f:Lcoil3/request/Options;

    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->g:Lcoil3/EventListener;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->b:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->d:Lcoil3/request/ImageRequest;

    iget-object v3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->c:Lcoil3/intercept/EngineInterceptor;

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, p0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v9, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->b:I

    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->e:Ljava/lang/Object;

    iget-object v6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->f:Lcoil3/request/Options;

    iget-object v7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->g:Lcoil3/EventListener;

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcoil3/intercept/EngineInterceptor;->c(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    iget-object p0, v3, Lcoil3/intercept/EngineInterceptor;->b:Lcoil3/util/SystemCallbacks;

    invoke-interface {p0}, Lcoil3/util/SystemCallbacks;->a()V

    iget-object p0, v3, Lcoil3/intercept/EngineInterceptor;->e:Lcoil3/memory/MemoryCacheService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-object v1, v8, Lcoil3/intercept/EngineInterceptor$intercept$2;->h:Lcoil3/memory/MemoryCache$Key;

    if-eqz v1, :cond_4

    iget-object v3, v4, Lcoil3/request/ImageRequest;->n:Lcoil3/request/CachePolicy;

    invoke-virtual {v3}, Lcoil3/request/CachePolicy;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    invoke-interface {v3}, Lcoil3/Image;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/ImageLoader;

    invoke-interface {p0}, Lcoil3/ImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_4
    :goto_1
    move p0, v0

    move-object v5, v4

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-boolean v5, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "coil#is_sampled"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    if-eqz v5, :cond_6

    const-string v6, "coil#disk_cache_key"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v5, Lcoil3/memory/MemoryCache$Value;

    iget-object v6, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    invoke-direct {v5, v6, v3}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    invoke-interface {p0, v1, v5}, Lcoil3/memory/MemoryCache;->h(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)V

    move-object v5, v4

    move p0, v9

    :goto_2
    iget-object v4, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    iget-object v6, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->c:Lcoil3/decode/DataSource;

    if-eqz p0, :cond_7

    move-object v7, v1

    :goto_3
    move-object p0, v8

    goto :goto_4

    :cond_7
    move-object v7, v2

    goto :goto_3

    :goto_4
    iget-object v8, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    iget-boolean p1, p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    sget-object v1, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->i:Lcoil3/intercept/Interceptor$Chain;

    instance-of v1, p0, Lcoil3/intercept/RealInterceptorChain;

    if-eqz v1, :cond_8

    check-cast p0, Lcoil3/intercept/RealInterceptorChain;

    iget-boolean p0, p0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    if-eqz p0, :cond_8

    move v10, v9

    goto :goto_5

    :cond_8
    move v10, v0

    :goto_5
    new-instance v3, Lcoil3/request/SuccessResult;

    move v9, p1

    invoke-direct/range {v3 .. v10}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    return-object v3
.end method
