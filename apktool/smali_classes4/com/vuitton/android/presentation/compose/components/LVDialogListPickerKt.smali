.class public abstract Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isDialogOpen",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Ljava/util/List;ZZLkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v9, p9

    move/from16 v10, p10

    if-eqz v0, :cond_0

    const-string v1, "LVDialogListPicker"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x17e0bab3

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    goto :goto_3

    :cond_4
    move-object/from16 v2, p1

    :goto_3
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :cond_6
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_8

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_5

    :cond_7
    const/16 v6, 0x400

    :goto_5
    or-int/2addr v0, v6

    goto :goto_6

    :cond_8
    move-object/from16 v5, p3

    :goto_6
    and-int/lit8 v6, v10, 0x10

    if-eqz v6, :cond_a

    or-int/lit16 v0, v0, 0x6000

    :cond_9
    move/from16 v7, p4

    goto :goto_8

    :cond_a
    and-int/lit16 v7, v9, 0x6000

    if-nez v7, :cond_9

    move/from16 v7, p4

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x4000

    goto :goto_7

    :cond_b
    const/16 v8, 0x2000

    :goto_7
    or-int/2addr v0, v8

    :goto_8
    and-int/lit8 v8, v10, 0x20

    const/high16 v11, 0x30000

    if-eqz v8, :cond_d

    or-int/2addr v0, v11

    :cond_c
    move/from16 v11, p5

    goto :goto_a

    :cond_d
    and-int/2addr v11, v9

    if-nez v11, :cond_c

    move/from16 v11, p5

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v13, 0x10000

    :goto_9
    or-int/2addr v0, v13

    :goto_a
    const/high16 v13, 0x180000

    and-int/2addr v13, v9

    if-nez v13, :cond_10

    move-object/from16 v13, p6

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x100000

    goto :goto_b

    :cond_f
    const/high16 v14, 0x80000

    :goto_b
    or-int/2addr v0, v14

    goto :goto_c

    :cond_10
    move-object/from16 v13, p6

    :goto_c
    and-int/lit16 v14, v10, 0x80

    const/high16 v15, 0xc00000

    if-eqz v14, :cond_12

    or-int/2addr v0, v15

    :cond_11
    move-object/from16 v15, p7

    goto :goto_e

    :cond_12
    and-int/2addr v15, v9

    if-nez v15, :cond_11

    move-object/from16 v15, p7

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x800000

    goto :goto_d

    :cond_13
    const/high16 v16, 0x400000

    :goto_d
    or-int v0, v0, v16

    :goto_e
    const v16, 0x492493

    and-int v1, v0, v16

    move/from16 p8, v0

    const v0, 0x492492

    const/16 v16, 0x1

    const/4 v13, 0x0

    if-eq v1, v0, :cond_14

    move/from16 v0, v16

    goto :goto_f

    :cond_14
    move v0, v13

    :goto_f
    and-int/lit8 v1, p8, 0x1

    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v6, :cond_15

    move/from16 v15, v16

    goto :goto_10

    :cond_15
    move v15, v7

    :goto_10
    if-eqz v8, :cond_16

    move/from16 v17, v13

    goto :goto_11

    :cond_16
    move/from16 v17, v11

    :goto_11
    const/4 v0, 0x0

    if-eqz v14, :cond_17

    move-object/from16 v18, v0

    goto :goto_12

    :cond_17
    move-object/from16 v18, p7

    :goto_12
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v6, :cond_18

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/4 v7, 0x3

    invoke-static {v13, v4, v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_19

    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v11, v4}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v28, v11

    check-cast v28, Lkotlinx/coroutines/CoroutineScope;

    if-eqz v3, :cond_1a

    iget-object v0, v3, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;->c:Ljava/lang/String;

    :cond_1a
    if-nez v0, :cond_1b

    const-string v0, ""

    :cond_1b
    move-object v11, v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->F:I

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_1c

    new-instance v14, Lu00;

    invoke-direct {v14, v7, v1}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v22, v14

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    shl-int/lit8 v0, p8, 0x3

    and-int/lit8 v7, v0, 0x70

    const v14, 0xe000

    and-int v14, p8, v14

    or-int/2addr v7, v14

    shl-int/lit8 v14, p8, 0xc

    const/high16 v16, 0x70000

    and-int v14, v14, v16

    or-int/2addr v7, v14

    const/high16 v14, 0x380000

    and-int/2addr v0, v14

    or-int/2addr v0, v7

    const/high16 v7, 0x1c00000

    and-int v7, p8, v7

    or-int v25, v0, v7

    const/16 v26, 0x30

    const/16 v27, 0x270c

    move v0, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v7, v0

    move-object/from16 v16, v2

    move-object/from16 v24, v4

    invoke-static/range {v11 .. v27}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v24

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, -0x4ef338dd

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_1d

    new-instance v0, Lu00;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/c;

    move-object v6, v1

    move-object v4, v3

    move-object v2, v5

    move-object v1, v8

    move-object/from16 v5, v28

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/compose/components/c;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x51c3439b

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0x186

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object v4, v11

    move-object v1, v13

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1e
    move-object v4, v11

    const v0, -0x4ec32f11

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    move v5, v15

    move/from16 v6, v17

    move-object/from16 v8, v18

    goto :goto_14

    :cond_1f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v8, p7

    move v5, v7

    move v6, v11

    :goto_14
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_20

    new-instance v0, Lai;

    const/4 v11, 0x2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, Lai;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;ZZLkotlin/jvm/functions/Function2;Ljava/lang/Object;III)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
