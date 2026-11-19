.class final Lcoil3/RealImageLoader$execute$result$1;
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
        "Lcoil3/request/ImageResult;",
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
        "Lcoil3/request/ImageResult;",
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
    c = "coil3.RealImageLoader$execute$result$1"
    f = "RealImageLoader.kt"
    l = {
        0x8f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcoil3/request/ImageRequest;

.field public final synthetic d:Lcoil3/RealImageLoader;

.field public final synthetic e:Lcoil3/size/Size;

.field public final synthetic f:Lcoil3/EventListener;

.field public final synthetic g:Lcoil3/Image;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->c:Lcoil3/request/ImageRequest;

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->d:Lcoil3/RealImageLoader;

    iput-object p3, p0, Lcoil3/RealImageLoader$execute$result$1;->e:Lcoil3/size/Size;

    iput-object p4, p0, Lcoil3/RealImageLoader$execute$result$1;->f:Lcoil3/EventListener;

    iput-object p5, p0, Lcoil3/RealImageLoader$execute$result$1;->g:Lcoil3/Image;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;

    iget-object v4, p0, Lcoil3/RealImageLoader$execute$result$1;->f:Lcoil3/EventListener;

    iget-object v5, p0, Lcoil3/RealImageLoader$execute$result$1;->g:Lcoil3/Image;

    iget-object v1, p0, Lcoil3/RealImageLoader$execute$result$1;->c:Lcoil3/request/ImageRequest;

    iget-object v2, p0, Lcoil3/RealImageLoader$execute$result$1;->d:Lcoil3/RealImageLoader;

    iget-object v3, p0, Lcoil3/RealImageLoader$execute$result$1;->e:Lcoil3/size/Size;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcoil3/RealImageLoader$execute$result$1;->b:I

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

    new-instance v3, Lcoil3/intercept/RealInterceptorChain;

    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->d:Lcoil3/RealImageLoader;

    iget-object p1, p1, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    iget-object v5, p1, Lcoil3/ComponentRegistry;->a:Ljava/util/List;

    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->g:Lcoil3/Image;

    if-eqz p1, :cond_2

    move v10, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v10, p1

    :goto_0
    iget-object v4, p0, Lcoil3/RealImageLoader$execute$result$1;->c:Lcoil3/request/ImageRequest;

    const/4 v6, 0x0

    iget-object v8, p0, Lcoil3/RealImageLoader$execute$result$1;->e:Lcoil3/size/Size;

    iget-object v9, p0, Lcoil3/RealImageLoader$execute$result$1;->f:Lcoil3/EventListener;

    move-object v7, v4

    invoke-direct/range {v3 .. v10}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V

    iput v2, p0, Lcoil3/RealImageLoader$execute$result$1;->b:I

    invoke-virtual {v3, p0}, Lcoil3/intercept/RealInterceptorChain;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
