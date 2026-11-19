.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "value",
        "",
        "count",
        "",
        "showSupportingText",
        "system"
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
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V
    .locals 35

    move-object/from16 v0, p1

    move-object/from16 v12, p11

    move/from16 v1, p14

    move/from16 v2, p15

    move/from16 v3, p16

    const-string v4, "LVReadOnlyTextField"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x6abe88ab

    move-object/from16 v6, p13

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v1, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v9, v1

    :goto_1
    and-int/lit8 v10, v1, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v9, v10

    :cond_4
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v9, v9, 0x180

    :cond_5
    move-object/from16 v11, p2

    goto :goto_4

    :cond_6
    and-int/lit16 v11, v1, 0x180

    if-nez v11, :cond_5

    move-object/from16 v11, p2

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_3

    :cond_7
    const/16 v16, 0x80

    :goto_3
    or-int v9, v9, v16

    :goto_4
    and-int/lit8 v16, v3, 0x8

    if-eqz v16, :cond_8

    or-int/lit16 v9, v9, 0xc00

    goto :goto_7

    :cond_8
    and-int/lit16 v14, v1, 0xc00

    if-nez v14, :cond_b

    if-nez p3, :cond_9

    const/4 v14, -0x1

    goto :goto_5

    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    :goto_5
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v9, v14

    :cond_b
    :goto_7
    and-int/lit8 v14, v3, 0x10

    if-eqz v14, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v15, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v15, v1, 0x6000

    if-nez v15, :cond_c

    move/from16 v15, p4

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x4000

    goto :goto_8

    :cond_e
    const/16 v18, 0x2000

    :goto_8
    or-int v9, v9, v18

    :goto_9
    const/high16 v18, 0x30000

    and-int v18, v1, v18

    move-object/from16 v13, p5

    if-nez v18, :cond_10

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v19, 0x10000

    :goto_a
    or-int v9, v9, v19

    :cond_10
    and-int/lit8 v19, v3, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_11

    or-int v9, v9, v20

    move/from16 v8, p6

    goto :goto_c

    :cond_11
    and-int v20, v1, v20

    move/from16 v8, p6

    if-nez v20, :cond_13

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v21, 0x80000

    :goto_b
    or-int v9, v9, v21

    :cond_13
    :goto_c
    and-int/lit16 v7, v3, 0x80

    const/high16 v22, 0xc00000

    if-eqz v7, :cond_14

    or-int v9, v9, v22

    move-object/from16 v1, p7

    goto :goto_e

    :cond_14
    and-int v22, v1, v22

    move-object/from16 v1, p7

    if-nez v22, :cond_16

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    const/high16 v22, 0x800000

    goto :goto_d

    :cond_15
    const/high16 v22, 0x400000

    :goto_d
    or-int v9, v9, v22

    :cond_16
    :goto_e
    const/high16 v22, 0x36000000

    or-int v9, v9, v22

    or-int/lit8 v22, v2, 0x6

    and-int/lit8 v23, v2, 0x30

    if-nez v23, :cond_18

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    const/16 v23, 0x20

    goto :goto_f

    :cond_17
    const/16 v23, 0x10

    :goto_f
    or-int v22, v22, v23

    :cond_18
    move/from16 v1, v22

    and-int/lit16 v6, v3, 0x1000

    if-eqz v6, :cond_19

    or-int/lit16 v1, v1, 0x180

    goto :goto_11

    :cond_19
    move/from16 v22, v1

    and-int/lit16 v1, v2, 0x180

    if-nez v1, :cond_1b

    move-object/from16 v1, p12

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v17, 0x100

    goto :goto_10

    :cond_1a
    const/16 v17, 0x80

    :goto_10
    or-int v17, v22, v17

    move/from16 v1, v17

    goto :goto_11

    :cond_1b
    move-object/from16 v1, p12

    move/from16 v1, v22

    :goto_11
    or-int/lit16 v1, v1, 0xc00

    const v17, 0x12492493

    and-int v2, v9, v17

    const v3, 0x12492492

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1d

    and-int/lit16 v2, v1, 0x493

    const/16 v3, 0x492

    if-eq v2, v3, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    goto :goto_13

    :cond_1d
    :goto_12
    move v2, v6

    :goto_13
    and-int/lit8 v3, v9, 0x1

    invoke-virtual {v5, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v10, :cond_1e

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v2

    goto :goto_14

    :cond_1e
    move-object/from16 v24, v11

    :goto_14
    if-eqz v16, :cond_1f

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v32, v2

    goto :goto_15

    :cond_1f
    move-object/from16 v32, p3

    :goto_15
    if-eqz v14, :cond_20

    move v4, v6

    goto :goto_16

    :cond_20
    move v4, v15

    :goto_16
    if-eqz v19, :cond_21

    const/4 v8, 0x0

    :cond_21
    move v3, v9

    if-eqz v7, :cond_22

    const/4 v9, 0x0

    goto :goto_17

    :cond_22
    move-object/from16 v9, p7

    :goto_17
    sget-object v7, Landroidx/compose/foundation/text/KeyboardOptions;->h:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/foundation/text/KeyboardOptions;->i:Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v14, :cond_23

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v17, :cond_24

    const/16 v16, 0x0

    goto :goto_18

    :cond_24
    move-object/from16 v16, p12

    :goto_18
    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v14, :cond_25

    new-instance v15, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v15}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v15, Landroidx/compose/ui/focus/FocusRequester;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/focus/FocusManager;

    sget-object v17, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt$WhenMappings;->a:[I

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    move/from16 v22, v1

    aget v1, v17, v19

    if-eq v1, v6, :cond_27

    const/4 v6, 0x2

    if-ne v1, v6, :cond_26

    const v1, 0x4ac16c62    # 6338097.0f

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_26
    const/4 v6, 0x0

    const v0, 0x4ac15984    # 6335682.0f

    invoke-static {v5, v0, v6}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_27
    const/4 v6, 0x0

    const v1, 0x4ac1637c    # 6336958.0f

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    and-int/lit8 v6, v22, 0xe

    move-object/from16 p3, v1

    const/4 v1, 0x4

    if-ne v6, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v1, v1, v17

    move/from16 p4, v1

    and-int/lit8 v1, v22, 0x70

    move/from16 p6, v3

    const/16 v3, 0x20

    if-ne v1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_1b

    :cond_29
    const/4 v1, 0x0

    :goto_1b
    or-int v1, p4, v1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_2a

    if-ne v3, v14, :cond_2b

    :cond_2a
    new-instance v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1;

    const/4 v1, 0x0

    invoke-direct {v3, v10, v2, v12, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v15}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_2c

    new-instance v1, Ln60;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ln60;-><init>(I)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v3, 0x30030

    and-int/lit8 v14, p6, 0xe

    or-int/2addr v3, v14

    const v14, 0xe000

    and-int v15, p6, v14

    or-int/2addr v3, v15

    shl-int/lit8 v15, p6, 0x3

    const/high16 v17, 0x380000

    and-int v15, v15, v17

    or-int/2addr v3, v15

    shl-int/lit8 v15, p6, 0x6

    const/high16 v18, 0xe000000

    and-int v19, v15, v18

    or-int v3, v3, v19

    const/high16 v19, 0x70000000

    and-int v19, v15, v19

    or-int v28, v3, v19

    shr-int/lit8 v3, p6, 0x15

    move/from16 p1, v14

    and-int/lit8 v14, v3, 0x70

    or-int/lit16 v14, v14, 0xc00

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v14

    shl-int/lit8 v14, v22, 0xc

    and-int v14, v14, v17

    or-int/2addr v3, v14

    shl-int/lit8 v14, v22, 0x15

    and-int v14, v14, v18

    or-int v29, v3, v14

    and-int v3, v15, p1

    or-int/2addr v3, v6

    shl-int/lit8 v6, v22, 0x9

    and-int v6, v6, v17

    or-int v30, v3, v6

    const v31, 0x2eac480

    move-object/from16 v27, v5

    const/4 v5, 0x1

    move-object v12, v7

    const/4 v7, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move-object/from16 v18, p11

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v31}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V

    move v5, v4

    move v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v13, v16

    move-object/from16 v11, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    goto :goto_1c

    :cond_2d
    move-object/from16 v33, v0

    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move v7, v8

    move-object v3, v11

    move v5, v15

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    :goto_1c
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v1, v0

    new-instance v0, Le70;

    move-object/from16 v6, p5

    move-object/from16 v12, p11

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v34, v1

    move-object/from16 v2, v33

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Le70;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;III)V

    move-object/from16 v1, v34

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method
