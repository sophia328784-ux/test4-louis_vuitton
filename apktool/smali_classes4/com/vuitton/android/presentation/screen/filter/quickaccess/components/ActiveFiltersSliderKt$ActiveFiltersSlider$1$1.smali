.class final Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;
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
    c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt$ActiveFiltersSlider$1$1"
    f = "ActiveFiltersSlider.kt"
    l = {
        0x79,
        0x7a,
        0x7e,
        0x81,
        0x85
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/ScrollState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->e:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->f:Landroidx/compose/foundation/ScrollState;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->g:F

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->h:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->i:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->h:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->i:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->c:Z

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->d:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->e:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->f:Landroidx/compose/foundation/ScrollState;

    iget v5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->g:F

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;-><init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/ScrollState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    const/4 v5, 0x6

    const/16 v6, 0x190

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->f:Landroidx/compose/foundation/ScrollState;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->i:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->d:Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->h:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    if-eq v2, v14, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v12, :cond_1

    if-ne v2, v11, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->c:Z

    if-eqz v2, :cond_6

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, v10}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->e:Z

    if-nez v2, :cond_a

    sget-object v2, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const-wide/16 v8, 0x64

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9, v2}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    iput v3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/foundation/ScrollState;->g()I

    move-result v2

    move-object/from16 v3, v16

    invoke-static {v6, v4, v3, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    iput v14, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    invoke-virtual {v7, v2, v3, v0}, Landroidx/compose/foundation/ScrollState;->f(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_1
    sget-object v2, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v3, 0x190

    invoke-static {v3, v4, v2}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput v13, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->g:F

    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    move-object/from16 v3, v16

    invoke-static {v6, v4, v3, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    iput v12, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    invoke-virtual {v7, v4, v2, v0}, Landroidx/compose/foundation/ScrollState;->f(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    sget-object v2, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v3, 0x190

    invoke-static {v3, v4, v2}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput v11, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$ActiveFiltersSlider$1$1;->b:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    :goto_4
    return-object v1

    :cond_c
    :goto_5
    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, v10}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
