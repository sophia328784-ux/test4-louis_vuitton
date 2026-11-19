.class final Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1"
    f = "LVZoomableContentComponent.kt"
    l = {
        0x4c,
        0x4e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic l:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->e:F

    iput p2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->f:F

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->g:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->h:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->i:Landroidx/compose/runtime/MutableFloatState;

    iput-object p6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->j:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->k:Landroidx/compose/runtime/MutableFloatState;

    iput-object p8, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->l:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;

    iget-object v7, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->k:Landroidx/compose/runtime/MutableFloatState;

    iget-object v8, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->l:Landroidx/compose/runtime/MutableFloatState;

    iget v1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->e:F

    iget v2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->f:F

    iget-object v3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->h:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->i:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->j:Landroidx/compose/runtime/MutableState;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;-><init>(FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->c:I

    const/4 v3, 0x3

    invoke-static {v1, v4, v0, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v1, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->c:I

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v1, v3, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    :goto_2
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v4, v8

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v6

    :goto_3
    iget-object v7, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->h:Landroidx/compose/runtime/MutableState;

    if-eqz v4, :cond_8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_8
    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v9

    iget-object v10, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->i:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v10}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v11

    mul-float/2addr v11, v9

    iget v9, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->f:F

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v11, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->e:F

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-interface {v10, v9}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-interface {v10}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v9

    cmpg-float v9, v9, v11

    if-nez v9, :cond_9

    move v8, v6

    :cond_9
    xor-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    iget-object v11, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->l:Landroidx/compose/runtime/MutableFloatState;

    iget-object v12, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->k:Landroidx/compose/runtime/MutableFloatState;

    if-lez v8, :cond_a

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;->j:Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/unit/IntSize;

    iget-wide v13, v13, Landroidx/compose/ui/unit/IntSize;->a:J

    const/16 v15, 0x20

    shr-long/2addr v13, v15

    long-to-int v13, v13

    int-to-float v13, v13

    invoke-interface {v10}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v14

    sub-float/2addr v14, v9

    mul-float/2addr v14, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v14, v13

    neg-float v5, v14

    invoke-interface {v12}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v16

    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v17

    move/from16 v19, v9

    move-object/from16 p1, v10

    shr-long v9, v17, v15

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    add-float v9, v9, v16

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v12, v5}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    iget-wide v8, v5, Landroidx/compose/ui/unit/IntSize;->a:J

    const-wide v14, 0xffffffffL

    and-long/2addr v8, v14

    long-to-int v5, v8

    int-to-float v5, v5

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v8

    sub-float v8, v8, v19

    mul-float/2addr v8, v5

    div-float/2addr v8, v13

    neg-float v5, v8

    invoke-interface {v11}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v9

    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v12

    and-long/2addr v12, v14

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    add-float/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v11, v5}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    goto :goto_4

    :cond_a
    move/from16 v19, v9

    move-object/from16 p1, v10

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move/from16 v5, v19

    invoke-interface {v8, v5}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    :goto_4
    if-nez v4, :cond_d

    iget-object v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v4, :cond_c

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_d
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
