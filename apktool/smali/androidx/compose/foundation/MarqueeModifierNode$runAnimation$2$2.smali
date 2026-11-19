.class final Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "contentWithSpacingWidth",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2"
    f = "BasicMarquee.kt"
    l = {
        0x1ab,
        0x1ad,
        0x1b1,
        0x1b1
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Landroidx/compose/animation/core/AnimationSpec;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/compose/foundation/MarqueeModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->e:Landroidx/compose/foundation/MarqueeModifierNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->e:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;-><init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v5, p0

    iget-object v0, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->e:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v7, v0, Landroidx/compose/foundation/MarqueeModifierNode;->A:Landroidx/compose/animation/core/Animatable;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->c:I

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_0
    iget-object v0, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    iget-object v1, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->b:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v2, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_5

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    iget v14, v0, Landroidx/compose/foundation/MarqueeModifierNode;->p:I

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v6, v0, Landroidx/compose/foundation/MarqueeModifierNode;->r:I

    iget v13, v0, Landroidx/compose/foundation/MarqueeModifierNode;->q:I

    iget v15, v0, Landroidx/compose/foundation/MarqueeModifierNode;->s:F

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    invoke-interface {v9, v15}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v9, v15

    div-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v4, v10

    float-to-int v4, v4

    sget-object v10, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    new-instance v15, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v15, v4, v13, v10}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    neg-int v4, v13

    add-int/2addr v4, v6

    invoke-static {v4}, Landroidx/compose/animation/core/StartOffset;->a(I)J

    move-result-wide v10

    const v4, 0x7fffffff

    if-ne v14, v4, :cond_6

    invoke-static {v15, v12, v10, v11, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JI)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    goto :goto_0

    :cond_6
    sget-object v16, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    new-instance v13, Landroidx/compose/animation/core/RepeatableSpec;

    const/16 v19, 0x0

    move-wide/from16 v17, v10

    invoke-direct/range {v13 .. v19}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v13

    :goto_0
    new-instance v6, Ljava/lang/Float;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    iput-object v4, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->b:Landroidx/compose/animation/core/AnimationSpec;

    iput v2, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->c:I

    invoke-virtual {v7, v6, v5}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v4

    :goto_1
    :try_start_1
    iget-object v0, v0, Landroidx/compose/foundation/MarqueeModifierNode;->A:Landroidx/compose/animation/core/Animatable;

    iput-object v12, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    iput-object v12, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->b:Landroidx/compose/animation/core/AnimationSpec;

    iput v3, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_8

    goto :goto_5

    :cond_8
    :goto_2
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/lang/Float;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Ljava/lang/Float;-><init>(F)V

    const/4 v1, 0x3

    iput v1, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->c:I

    invoke-virtual {v7, v0, v5}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    goto :goto_5

    :cond_9
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_4
    new-instance v1, Ljava/lang/Float;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->d:Ljava/lang/Object;

    iput-object v12, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->b:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v2, 0x4

    iput v2, v5, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->c:I

    invoke-virtual {v7, v1, v5}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_a

    :goto_5
    return-object v8

    :cond_a
    :goto_6
    throw v0
.end method
