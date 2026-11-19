.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0005\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "trackHeight",
        "",
        "isDragged",
        "isPressed",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a:F

    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->b:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v6, p3

    move-object/from16 v1, p5

    move/from16 v2, p8

    const-string v4, "PodcastTrackSlider"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7c0254a7

    move-object/from16 v7, p7

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v5, p9, 0x1

    const/4 v7, 0x4

    if-eqz v5, :cond_1

    or-int/lit8 v8, v2, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v2

    :goto_1
    and-int/lit8 v9, v2, 0x30

    move/from16 v15, p1

    if-nez v9, :cond_4

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v8, v9

    :cond_4
    and-int/lit16 v9, v2, 0x180

    if-nez v9, :cond_6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_3

    :cond_5
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v8, v9

    :cond_6
    and-int/lit16 v9, v2, 0xc00

    if-nez v9, :cond_8

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_4

    :cond_7
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v8, v9

    :cond_8
    const/high16 v9, 0x30000

    and-int/2addr v9, v2

    if-nez v9, :cond_a

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v9, 0x10000

    :goto_5
    or-int/2addr v8, v9

    :cond_a
    const v9, 0x92493

    and-int/2addr v9, v8

    const v13, 0x92492

    const/16 v16, 0x0

    if-eq v9, v13, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    move/from16 v9, v16

    :goto_6
    and-int/lit8 v13, v8, 0x1

    invoke-virtual {v11, v13, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_1a

    if-eqz v5, :cond_c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_c
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_d

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_e

    sget v9, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->b:F

    goto :goto_7

    :cond_e
    sget v9, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a:F

    :goto_7
    const/high16 v13, 0x3f400000    # 0.75f

    const/high16 v10, 0x43480000    # 200.0f

    const/4 v12, 0x0

    invoke-static {v13, v10, v7, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v7

    const/16 v12, 0x1b0

    const/16 v13, 0x8

    move v10, v8

    move-object v8, v7

    move v7, v9

    const-string v9, "trackHeight"

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v14, v18

    const/16 v2, 0x800

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-static {v4, v11}, Landroidx/compose/foundation/interaction/DragInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_f

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_10

    sget-object v9, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v9, v11}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v12, v9

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p7, v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v19, v4

    and-int/lit16 v4, v14, 0x1c00

    if-ne v4, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_8

    :cond_11
    move/from16 v2, v16

    :goto_8
    or-int v2, v18, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_13

    if-ne v4, v5, :cond_12

    goto :goto_9

    :cond_12
    move-object/from16 v2, p7

    move-object v15, v5

    move/from16 v18, v14

    move-object v14, v9

    goto :goto_a

    :cond_13
    :goto_9
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$1$1;

    move-object v2, v9

    const/4 v9, 0x0

    move-object v15, v5

    move/from16 v18, v14

    move-object/from16 v5, p6

    move-object v14, v2

    move-object/from16 v2, p7

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v4, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v18, 0x3

    invoke-static {v13, v2, v14, v4, v11}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_14

    if-ne v6, v15, :cond_15

    :cond_14
    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;

    invoke-direct {v6, v12, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v0, v2, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v2, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_16

    new-instance v4, Ljo0;

    move-object/from16 v6, p4

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Ljo0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_b

    :cond_16
    move-object/from16 v6, p4

    :goto_b
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/high16 v4, 0x70000

    and-int v4, v18, v4

    const/high16 v9, 0x20000

    if-ne v4, v9, :cond_17

    const/16 v16, 0x1

    :cond_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v16, :cond_18

    if-ne v4, v15, :cond_19

    :cond_18
    new-instance v4, Lee0;

    const/16 v9, 0x16

    invoke-direct {v4, v1, v9}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v4, Lkotlin/jvm/functions/Function0;

    sget-object v9, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/ComposableSingletons$PodcastTrackSliderKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/ComposableSingletons$PodcastTrackSliderKt;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/ComposableSingletons$PodcastTrackSliderKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v9, Lql0;

    const/4 v12, 0x1

    invoke-direct {v9, v10, v12}, Lql0;-><init>(Landroidx/compose/runtime/State;I)V

    const v10, 0x56818624

    invoke-static {v10, v9, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    and-int/lit8 v5, v5, 0xe

    const/high16 v9, 0x36180000

    or-int v17, v5, v9

    const/4 v9, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v6, p1

    move-object v15, v2

    move-object v10, v4

    move-object/from16 v12, v19

    invoke-static/range {v6 .. v17}, Landroidx/compose/material3/SliderKt;->a(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v11, v16

    goto :goto_c

    :cond_1a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1b

    move-object v1, v0

    new-instance v0, Lwo0;

    move/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lwo0;-><init>(Landroidx/compose/ui/Modifier;FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
