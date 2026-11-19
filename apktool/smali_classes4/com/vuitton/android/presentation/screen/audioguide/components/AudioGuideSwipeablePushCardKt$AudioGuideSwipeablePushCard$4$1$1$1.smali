.class final Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1"
    f = "AudioGuideSwipeablePushCard.kt"
    l = {
        0x54,
        0x59
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->c:Landroidx/compose/animation/core/Animatable;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->d:F

    iput p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->e:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->d:F

    iget v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->e:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->c:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->c:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v6, v0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/TwoWayConverter;

    invoke-interface {v6}, Landroidx/compose/animation/core/TwoWayConverter;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    iget-object v0, v0, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->d:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->d:F

    cmpl-float v6, v6, v8

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v10, 0x12c

    const/4 v11, 0x0

    if-gez v6, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v10, v9, v3, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    iput v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->b:I

    move-object v1, v0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->c:Landroidx/compose/animation/core/Animatable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;

    goto :goto_5

    :cond_5
    :goto_1
    cmpl-float v0, v4, v11

    if-lez v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/high16 v0, -0x40800000    # -1.0f

    :goto_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->e:F

    mul-float/2addr v0, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v10, v9, v3, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    iput v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->b:I

    move-object v2, v0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;->c:Landroidx/compose/animation/core/Animatable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    :goto_3
    return-object v7

    :cond_7
    :goto_4
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
