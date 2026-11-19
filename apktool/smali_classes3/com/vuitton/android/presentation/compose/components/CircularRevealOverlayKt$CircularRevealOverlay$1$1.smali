.class final Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;
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
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.compose.components.CircularRevealOverlayKt$CircularRevealOverlay$1$1"
    f = "CircularRevealOverlay.kt"
    l = {
        0x36,
        0x37,
        0x40
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(ZLandroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->e:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->d:Landroidx/compose/animation/core/Animatable;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->c:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;-><init>(ZLandroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->c:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->d:Landroidx/compose/animation/core/Animatable;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput v3, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->b:I

    invoke-virtual {v5, v1, p0}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v6, Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 p1, 0x0

    sget-object v1, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v2, 0x1c2

    invoke-static {v2, p1, v1, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    iput v4, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->b:I

    iget-object v5, p0, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->d:Landroidx/compose/animation/core/Animatable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xc

    move-object v10, p0

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p0, v10, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object v10, p0

    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    iput v2, v10, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;->b:I

    invoke-virtual {v5, p0, v10}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
