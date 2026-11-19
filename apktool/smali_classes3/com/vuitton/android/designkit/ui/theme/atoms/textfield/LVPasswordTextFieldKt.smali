.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVPasswordTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVPasswordTextFieldKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "value",
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
.method public static final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;ILandroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v0, p2

    move/from16 v15, p15

    move/from16 v1, p16

    move/from16 v2, p17

    const-string v3, "LVPasswordTextField-w8Xk4iI"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x1e23fd8d

    move-object/from16 v5, p14

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, v15, 0x6

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v15

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v8, v15

    :goto_1
    and-int/lit8 v9, v15, 0x30

    if-nez v9, :cond_4

    move-object/from16 v9, p1

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v8, v10

    goto :goto_3

    :cond_4
    move-object/from16 v9, p1

    :goto_3
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_6

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_4

    :cond_5
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v8, v10

    :cond_6
    and-int/lit8 v10, v2, 0x8

    if-eqz v10, :cond_7

    or-int/lit16 v8, v8, 0xc00

    goto :goto_7

    :cond_7
    and-int/lit16 v13, v15, 0xc00

    if-nez v13, :cond_a

    if-nez p3, :cond_8

    const/4 v13, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    :goto_5
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v8, v13

    :cond_a
    :goto_7
    and-int/lit8 v13, v2, 0x10

    const/16 v16, 0x4000

    if-eqz v13, :cond_c

    or-int/lit16 v8, v8, 0x6000

    :cond_b
    move/from16 v11, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_b

    move/from16 v11, p4

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v17, v16

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v8, v8, v17

    :goto_9
    const/high16 v17, 0x30000

    or-int v8, v8, v17

    const/high16 v17, 0x180000

    and-int v17, v15, v17

    move-object/from16 v12, p5

    if-nez v17, :cond_f

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x100000

    goto :goto_a

    :cond_e
    const/high16 v17, 0x80000

    :goto_a
    or-int v8, v8, v17

    :cond_f
    const/high16 v17, 0xc00000

    and-int v17, v15, v17

    move/from16 v14, p6

    if-nez v17, :cond_11

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x800000

    goto :goto_b

    :cond_10
    const/high16 v18, 0x400000

    :goto_b
    or-int v8, v8, v18

    :cond_11
    const/high16 v18, 0x6000000

    and-int v18, v15, v18

    move-object/from16 v6, p7

    if-nez v18, :cond_13

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x4000000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x2000000

    :goto_c
    or-int v8, v8, v19

    :cond_13
    const/high16 v19, 0x30000000

    and-int v19, v15, v19

    move/from16 v7, p8

    if-nez v19, :cond_15

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x20000000

    goto :goto_d

    :cond_14
    const/high16 v20, 0x10000000

    :goto_d
    or-int v8, v8, v20

    :cond_15
    move-object/from16 v21, v0

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_16

    or-int/lit8 v20, v1, 0x6

    move/from16 v22, v0

    :goto_e
    move/from16 v0, v20

    goto :goto_10

    :cond_16
    move/from16 v22, v0

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v20, 0x4

    goto :goto_f

    :cond_17
    const/16 v20, 0x2

    :goto_f
    or-int v20, v1, v20

    goto :goto_e

    :goto_10
    or-int/lit16 v5, v0, 0x1b0

    move/from16 v20, v5

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_18

    or-int/lit16 v0, v0, 0xdb0

    goto :goto_12

    :cond_18
    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/16 v23, 0x800

    goto :goto_11

    :cond_19
    const/16 v23, 0x400

    :goto_11
    or-int v20, v20, v23

    move/from16 v0, v20

    :goto_12
    move/from16 v20, v5

    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_1a

    or-int/lit16 v0, v0, 0x6000

    goto :goto_14

    :cond_1a
    move/from16 v23, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_1c

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v24

    if-eqz v24, :cond_1b

    goto :goto_13

    :cond_1b
    const/16 v16, 0x2000

    :goto_13
    or-int v16, v23, v16

    move/from16 v0, v16

    goto :goto_14

    :cond_1c
    move/from16 v0, p13

    move/from16 v0, v23

    :goto_14
    const v16, 0x12492493

    and-int v1, v8, v16

    const v2, 0x12492492

    move/from16 v16, v5

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1e

    and-int/lit16 v0, v0, 0x2493

    const/16 v1, 0x2492

    if-eq v0, v1, :cond_1d

    goto :goto_15

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16

    :cond_1e
    :goto_15
    move v0, v5

    :goto_16
    and-int/lit8 v1, v8, 0x1

    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v10, :cond_1f

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_17

    :cond_1f
    move-object/from16 v0, p3

    :goto_17
    if-eqz v13, :cond_20

    move v11, v5

    :cond_20
    if-eqz v22, :cond_21

    sget-object v1, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v27, v1

    goto :goto_18

    :cond_21
    move-object/from16 v27, p9

    :goto_18
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_22

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v28, v1

    check-cast v28, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    sget-object v29, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;->WhileEditing:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    if-eqz v20, :cond_23

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v30, v1

    goto :goto_19

    :cond_23
    move-object/from16 v30, p12

    :goto_19
    if-eqz v16, :cond_24

    const/16 v31, 0x0

    goto :goto_1a

    :cond_24
    move/from16 v31, p13

    :goto_1a
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v1, v8, 0xc

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_25

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v3, Landroidx/compose/runtime/MutableState;

    and-int/lit8 v8, v1, 0xe

    xor-int/lit8 v8, v8, 0x6

    const/4 v10, 0x4

    if-le v8, v10, :cond_26

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-nez v8, :cond_27

    :cond_26
    and-int/lit8 v1, v1, 0x6

    if-ne v1, v10, :cond_28

    :cond_27
    move v1, v5

    goto :goto_1b

    :cond_28
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_29

    if-ne v8, v2, :cond_2a

    :cond_29
    new-instance v8, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

    invoke-direct {v8, v3}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVPasswordTextFieldKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_2c

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    const v1, 0x251b43fa

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    move-object/from16 v22, v1

    goto :goto_1d

    :cond_2b
    const/4 v2, 0x0

    const v0, 0x251b311c

    invoke-static {v4, v0, v2}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v2, 0x0

    const v1, 0x251b3b14

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :goto_1d
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/BlockClipBoard;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/BlockClipBoard;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v16, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;

    move-object/from16 v19, p0

    move-object/from16 v26, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v14

    invoke-direct/range {v16 .. v31}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/a;-><init>(ILcom/vuitton/android/designkit/ui/theme/atoms/textfield/PasswordTextFieldState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Z)V

    move-object/from16 v2, v16

    const v3, -0x3501adb3    # -8333606.5f

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move/from16 v5, v23

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move/from16 v14, v31

    goto :goto_1e

    :cond_2d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v0, p3

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move v5, v11

    move-object/from16 v11, p10

    :goto_1e
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object v4, v0

    new-instance v0, Ly60;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v32, v1

    move-object/from16 v3, v21

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Ly60;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;ILandroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;ZIII)V

    move-object v1, v0

    move-object/from16 v0, v32

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method
