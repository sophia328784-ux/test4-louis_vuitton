.class public abstract Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordEmailKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Landroidx/compose/foundation/layout/ColumnScope;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x13c41dae

    move-object/from16 v6, p7

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v4, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v4

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/lit8 v7, v4, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v9, v4, 0x180

    if-nez v9, :cond_5

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_4

    :cond_4
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v6, v9

    :cond_5
    and-int/lit16 v9, v4, 0xc00

    if-nez v9, :cond_7

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_5

    :cond_6
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v6, v9

    :cond_7
    and-int/lit16 v9, v4, 0x6000

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_6

    :cond_8
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v6, v10

    goto :goto_7

    :cond_9
    move-object/from16 v9, p4

    :goto_7
    const/high16 v10, 0x30000

    and-int/2addr v10, v4

    const/high16 v11, 0x20000

    if-nez v10, :cond_b

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v11

    goto :goto_8

    :cond_a
    const/high16 v10, 0x10000

    :goto_8
    or-int/2addr v6, v10

    :cond_b
    const/high16 v10, 0x180000

    and-int/2addr v10, v4

    const/high16 v12, 0x100000

    if-nez v10, :cond_d

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v12

    goto :goto_9

    :cond_c
    const/high16 v10, 0x80000

    :goto_9
    or-int/2addr v6, v10

    :cond_d
    const v10, 0x92493

    and-int/2addr v10, v6

    const v13, 0x92492

    if-eq v10, v13, :cond_e

    const/4 v10, 0x1

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    and-int/lit8 v13, v6, 0x1

    invoke-virtual {v5, v13, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_19

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 p7, 0x380000

    and-int v13, v6, p7

    if-ne v13, v12, :cond_f

    const/4 v12, 0x1

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    move/from16 v17, v6

    const/4 v6, 0x0

    if-nez v12, :cond_10

    if-ne v13, v14, :cond_11

    :cond_10
    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordEmailKt$ForgetPasswordEmail$1$1;

    invoke-direct {v13, v6, v3}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordEmailKt$ForgetPasswordEmail$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v12, "ForgetPasswordEmail"

    invoke-direct {v10, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v10, v13}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const-string v6, "nativeForgetPassword_email_textField"

    invoke-static {v10, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v10, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const v13, 0x7f140d3b

    invoke-static {v5, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    sget-object v20, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v25, Landroidx/compose/ui/text/input/ImeAction;->j:I

    sget-object v20, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/ui/text/input/KeyboardType;->h:I

    new-instance v21, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v29, 0x73

    const/16 v30, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v21 .. v30}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v20, 0x70000

    and-int v15, v17, v20

    if-ne v15, v11, :cond_12

    const/4 v11, 0x1

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_13

    if-ne v15, v14, :cond_14

    :cond_13
    new-instance v15, Ly2;

    const/16 v11, 0xa

    invoke-direct {v15, v2, v11}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v24, v15

    check-cast v24, Lkotlin/jvm/functions/Function1;

    new-instance v23, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3e

    const/16 v31, 0x0

    invoke-direct/range {v23 .. v31}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v8, :cond_15

    const v11, 0x3349d8e9

    const v14, 0x7f140d1a

    const/4 v15, 0x0

    invoke-static {v5, v11, v14, v5, v15}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    const v11, 0x334bfd58

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v11, 0x0

    :goto_d
    shr-int/lit8 v14, v17, 0x3

    and-int/lit8 v14, v14, 0xe

    or-int/lit16 v14, v14, 0xc00

    shr-int/lit8 v20, v17, 0x9

    and-int/lit8 v20, v20, 0x70

    or-int v14, v14, v20

    shl-int/lit8 v22, v17, 0xc

    and-int v17, v22, p7

    or-int v14, v14, v17

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x7910

    move-object v4, v6

    const/4 v6, 0x0

    move/from16 v24, v17

    move-object/from16 v17, v5

    move-object v5, v10

    const/4 v10, 0x0

    move-object v7, v13

    const/4 v13, 0x0

    move/from16 v18, v14

    const/16 v25, 0x0

    const/4 v14, 0x0

    move/from16 v26, v15

    const/4 v15, 0x0

    const/16 v27, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v9, v11

    move-object v0, v12

    move-object/from16 v11, v21

    move-object/from16 v12, v23

    invoke-static/range {v2 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v17

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v5}, Landroidx/compose/foundation/layout/ColumnScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v2

    iget-object v6, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v0, "nativeForgetPassword_confirm_button"

    invoke-static {v2, v0}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v3, v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p3, :cond_16

    const v2, 0x33522dfa

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v2, ""

    :goto_e
    move-object v9, v2

    goto :goto_f

    :cond_16
    const/4 v15, 0x0

    const v2, 0x3352af6d

    const v3, 0x7f141147

    invoke-static {v4, v2, v3, v4, v15}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :goto_f
    if-eqz p3, :cond_17

    const v2, 0x33545570

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_10

    :cond_17
    const v2, 0x33556f58

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v8, v25

    :goto_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    move v12, v5

    goto :goto_11

    :cond_18
    move v12, v15

    :goto_11
    const/high16 v2, 0x70000000

    and-int v2, v22, v2

    const/16 v3, 0x168

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p5

    move-object v5, v0

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object/from16 v17, v4

    goto :goto_12

    :cond_19
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v0, Lzv;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
