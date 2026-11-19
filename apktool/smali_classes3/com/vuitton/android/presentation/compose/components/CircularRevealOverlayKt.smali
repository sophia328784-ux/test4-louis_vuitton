.class public abstract Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/geometry/Offset;",
        "overlayOriginInWindow",
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


# direct methods
.method public static final a(ZLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/Modifier;JILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    const-string v2, "CircularRevealOverlay-fWhpE4E"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x2df14958

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p8, v4

    move-object/from16 v9, p1

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    or-int/lit16 v6, v4, 0x180

    and-int/lit8 v10, p9, 0x8

    if-eqz v10, :cond_3

    or-int/lit16 v4, v4, 0xd80

    move-wide/from16 v12, p3

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p3

    invoke-virtual {v3, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x800

    goto :goto_2

    :cond_4
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v4, v6

    :goto_3
    or-int/lit16 v4, v4, 0x6000

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v14, 0x20000

    if-eqz v6, :cond_5

    move v6, v14

    goto :goto_4

    :cond_5
    const/high16 v6, 0x10000

    :goto_4
    or-int/2addr v4, v6

    const v6, 0x12493

    and-int/2addr v6, v4

    const v15, 0x12492

    const/4 v11, 0x0

    if-eq v6, v15, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    move v6, v11

    :goto_5
    and-int/lit8 v15, v4, 0x1

    invoke-virtual {v3, v15, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_7

    sget-object v6, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->e:J

    :cond_7
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v10, :cond_8

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v8, v10, :cond_9

    invoke-static {v9}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v8, Landroidx/compose/animation/core/Animatable;

    move/from16 p3, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    and-int/lit8 v15, v4, 0xe

    if-ne v15, v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    move v5, v11

    :goto_6
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v5, v15

    const/high16 v15, 0x70000

    and-int/2addr v15, v4

    if-ne v15, v14, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    move v14, v11

    :goto_7
    or-int/2addr v5, v14

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v5, :cond_c

    if-ne v14, v10, :cond_d

    :cond_c
    new-instance v14, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;

    invoke-direct {v14, v1, v8, v7, v15}, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$1$1;-><init>(ZLandroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v1, :cond_f

    invoke-virtual {v8}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v5, v5, p3

    if-lez v5, :cond_e

    goto :goto_8

    :cond_e
    const v2, 0x61e9262a

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-wide v10, v12

    goto/16 :goto_e

    :cond_f
    :goto_8
    const v5, 0x61d5a939

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 p3, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v10, :cond_10

    sget-object v15, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$2$1;->a:Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt$CircularRevealOverlay$2$1;

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v9, v14, v15}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    move-wide/from16 v16, v12

    iget-wide v11, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v3, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_17

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_11

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v14, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_12

    new-instance v5, Lj6;

    const/16 v9, 0xd

    invoke-direct {v5, v9, v6}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v5}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int/lit8 v5, v4, 0x70

    const/16 v9, 0x20

    if-ne v5, v9, :cond_13

    const/4 v5, 0x1

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    and-int/lit16 v4, v4, 0x1c00

    const/16 v9, 0x800

    if-ne v4, v9, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    or-int/2addr v4, v5

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_15

    if-ne v5, v10, :cond_16

    :cond_15
    move-object v12, v8

    goto :goto_c

    :cond_16
    move-wide/from16 v10, v16

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto :goto_d

    :goto_c
    new-instance v8, Lwg;

    move-object/from16 v9, p1

    move-object v13, v6

    move-wide/from16 v10, v16

    const/4 v4, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v13}, Lwg;-><init>(Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v8

    :goto_d
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x6

    invoke-static {v2, v5, v3, v6}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    const/16 v2, 0x1c2

    move v6, v2

    move-wide v4, v10

    goto :goto_f

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p3

    :cond_18
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    move-wide v4, v12

    :goto_f
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    move-object v3, v0

    new-instance v0, Llm;

    move-object/from16 v2, p1

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Llm;-><init>(ZLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/Modifier;JILkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
