.class final Lcoil3/compose/AsyncImagePainter$launchJob$1;
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
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.compose.AsyncImagePainter$launchJob$1"
    f = "AsyncImagePainter.kt"
    l = {
        0xea,
        0xee
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Lcoil3/compose/AsyncImagePainter;

.field public c:I

.field public final synthetic d:Lcoil3/compose/AsyncImagePainter;

.field public final synthetic e:Lcoil3/compose/AsyncImagePainter$Input;


# direct methods
.method public constructor <init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->d:Lcoil3/compose/AsyncImagePainter;

    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->e:Lcoil3/compose/AsyncImagePainter$Input;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->d:Lcoil3/compose/AsyncImagePainter;

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->e:Lcoil3/compose/AsyncImagePainter$Input;

    invoke-direct {p1, v0, p0, p2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil3/compose/AsyncImagePainter$launchJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->c:I

    const/4 v2, 0x2

    iget-object v3, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->d:Lcoil3/compose/AsyncImagePainter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->b:Lcoil3/compose/AsyncImagePainter;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcoil3/compose/AsyncImagePainter;->s:Lcoil3/compose/AsyncImagePreviewHandler;

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->e:Lcoil3/compose/AsyncImagePainter$Input;

    if-eqz p1, :cond_4

    iget-object v2, v1, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    invoke-static {v3, v2, v4}, Lcoil3/compose/AsyncImagePainter;->j(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    move-result-object v2

    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    iput v4, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->c:I

    invoke-interface {p1, v1, v2, p0}, Lcoil3/compose/AsyncImagePreviewHandler;->a(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State;

    goto :goto_4

    :cond_4
    iget-object p1, v1, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcoil3/compose/AsyncImagePainter;->j(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    move-result-object p1

    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    iput-object v3, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->b:Lcoil3/compose/AsyncImagePainter;

    iput v2, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->c:I

    invoke-interface {v1, p1, p0}, Lcoil3/ImageLoader;->b(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object p0, v3

    :goto_2
    check-cast p1, Lcoil3/request/ImageResult;

    sget-object v0, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcoil3/request/SuccessResult;

    if-eqz v0, :cond_6

    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    check-cast p1, Lcoil3/request/SuccessResult;

    iget-object v1, p1, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    iget-object v2, p1, Lcoil3/request/SuccessResult;->b:Lcoil3/request/ImageRequest;

    iget-object v2, v2, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    iget p0, p0, Lcoil3/compose/AsyncImagePainter;->r:I

    invoke-static {v1, v2, p0}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcoil3/compose/AsyncImagePainter$State$Success;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/SuccessResult;)V

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_6
    instance-of v0, p1, Lcoil3/request/ErrorResult;

    if-eqz v0, :cond_8

    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    check-cast p1, Lcoil3/request/ErrorResult;

    iget-object v1, p1, Lcoil3/request/ErrorResult;->a:Lcoil3/Image;

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcoil3/request/ErrorResult;->b:Lcoil3/request/ImageRequest;

    iget-object v2, v2, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    iget p0, p0, Lcoil3/compose/AsyncImagePainter;->r:I

    invoke-static {v1, v2, p0}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    :cond_7
    invoke-direct {v0, v5, p1}, Lcoil3/compose/AsyncImagePainter$State$Error;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V

    goto :goto_3

    :goto_4
    invoke-static {v3, p1}, Lcoil3/compose/AsyncImagePainter;->k(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v5
.end method
