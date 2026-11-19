.class public final Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/SingleRowTopAppBarOverride;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;",
        "Landroidx/compose/material3/SingleRowTopAppBarOverride;",
        "Landroidx/compose/ui/graphics/Color;",
        "targetColor",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->a:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v0, p1

    move/from16 v1, p3

    iget v2, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->i:F

    const v3, 0x7f677649

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/4 v11, 0x2

    const/4 v12, 0x4

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v4, v3, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v4, v11, :cond_1

    move v4, v14

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v15, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->k:Landroidx/compose/material3/TopAppBarColors;

    iget-object v4, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const v5, 0x7fffffff

    and-int/2addr v2, v5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v5, :cond_19

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    new-instance v2, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1;

    invoke-direct {v2, v0}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1;-><init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Landroidx/compose/runtime/State;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v2, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v2, v8}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    move-object v7, v4

    move-wide v4, v9

    const/4 v9, 0x0

    const/16 v10, 0xc

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move-object/from16 v31, v6

    move-object v6, v2

    move-object/from16 v2, v31

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    new-instance v5, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$actionsRow$1;

    invoke-direct {v5, v0}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$actionsRow$1;-><init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;)V

    const v6, -0x62e0c0ee

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const-string v5, "SingleRowTopAppBar"

    const/4 v6, 0x0

    if-eqz v16, :cond_a

    const v7, 0x291870e6

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v24, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    and-int/lit8 v7, v3, 0xe

    if-ne v7, v12, :cond_4

    move v9, v14

    goto :goto_2

    :cond_4
    move v9, v13

    :goto_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_5

    if-ne v10, v2, :cond_6

    :cond_5
    new-instance v10, Lck;

    const/16 v9, 0xa

    invoke-direct {v10, v0, v9}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v10}, Landroidx/compose/foundation/gestures/DraggableKt;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v23

    if-ne v7, v12, :cond_7

    move v7, v14

    goto :goto_3

    :cond_7
    move v7, v13

    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_8

    if-ne v9, v2, :cond_9

    :cond_8
    new-instance v9, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1;

    invoke-direct {v9, v0, v6}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v28, v9

    check-cast v28, Lkotlin/jvm/functions/Function3;

    const/16 v29, 0x0

    const/16 v30, 0xbc

    sget-object v22, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v30}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_a
    const v7, 0x292236d1

    invoke-static {v8, v7, v13, v5}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    :goto_4
    iget-object v9, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->a:Landroidx/compose/ui/Modifier;

    invoke-interface {v9, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_b

    if-ne v10, v2, :cond_c

    :cond_b
    new-instance v10, Lya;

    invoke-direct {v10, v4, v11}, Lya;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v10}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_d

    new-instance v7, Lbp;

    const/16 v9, 0x13

    invoke-direct {v7, v9}, Lbp;-><init>(I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v13, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_e

    sget-object v9, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$4$1;->a:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$4$1;

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v4, v7, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v7, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->G()I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 p2, v6

    iget-object v6, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_18

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_f

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v7, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_10

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    :cond_10
    invoke-static {v9, v8, v9, v6}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_11
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v6, v5}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    iget-object v5, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->j:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    if-eqz v16, :cond_13

    invoke-interface/range {v16 .. v16}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v5

    if-eqz v5, :cond_13

    new-instance v6, Lw6;

    invoke-direct {v6, v5, v14}, Lw6;-><init>(Landroidx/compose/material3/TopAppBarState;I)V

    invoke-static {v4, v6}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_6

    :cond_12
    move-object v4, v5

    :cond_13
    :goto_6
    and-int/lit8 v3, v3, 0xe

    if-ne v3, v12, :cond_14

    move v13, v14

    :cond_14
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v13, :cond_15

    if-ne v3, v2, :cond_16

    :cond_15
    new-instance v3, Lxs;

    invoke-direct {v3, v0}, Lxs;-><init>(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v5, v3

    check-cast v5, Landroidx/compose/material3/internal/FloatProducer;

    iget-wide v6, v15, Landroidx/compose/material3/TopAppBarColors;->c:J

    iget-wide v9, v15, Landroidx/compose/material3/TopAppBarColors;->d:J

    iget-wide v12, v15, Landroidx/compose/material3/TopAppBarColors;->e:J

    iget-wide v14, v15, Landroidx/compose/material3/TopAppBarColors;->f:J

    move-wide/from16 v31, v14

    move-wide v15, v9

    move-wide/from16 v10, v31

    iget-object v14, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->b:Lkotlin/jvm/functions/Function2;

    move-wide/from16 v16, v15

    iget-object v15, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->c:Landroidx/compose/ui/text/TextStyle;

    iget-object v9, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->d:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v18, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    move-object/from16 v18, v3

    iget-object v3, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->f:Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v19, v3

    iget-object v3, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->g:Lkotlin/jvm/functions/Function2;

    move-object/from16 v20, v3

    iget v3, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->i:F

    move/from16 v22, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_17

    new-instance v3, Liq;

    const/16 v2, 0x18

    invoke-direct {v3, v2}, Liq;-><init>(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v24, 0x0

    move-object/from16 v23, v8

    move-object/from16 v31, v18

    move-object/from16 v18, v3

    const/4 v3, 0x1

    move-wide/from16 v32, v16

    move-object/from16 v16, v9

    move-wide/from16 v8, v32

    move-object/from16 v17, v31

    invoke-static/range {v4 .. v24}, Landroidx/compose/material3/AppBarKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/Composer;I)V

    move-object/from16 v8, v23

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_19
    const-string v0, "The expandedHeight is expected to be specified and finite"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1a
    move v3, v14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_1b

    new-instance v4, Lrs;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v0, v1, v3}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
