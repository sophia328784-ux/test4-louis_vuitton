.class public abstract Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordResetKt;
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
.method public static final a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x31e5b742

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v8, 0x180

    if-nez v3, :cond_5

    move/from16 v3, p2

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    goto :goto_4

    :cond_5
    move/from16 v3, p2

    :goto_4
    and-int/lit16 v5, v8, 0xc00

    if-nez v5, :cond_7

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_5

    :cond_6
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    :cond_7
    and-int/lit16 v5, v8, 0x6000

    move-object/from16 v14, p4

    if-nez v5, :cond_9

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_6

    :cond_8
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v0, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v8

    move-object/from16 v6, p5

    if-nez v5, :cond_b

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v0, v5

    :cond_b
    const/high16 v5, 0x180000

    and-int/2addr v5, v8

    const/high16 v9, 0x100000

    if-nez v5, :cond_d

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v9

    goto :goto_8

    :cond_c
    const/high16 v5, 0x80000

    :goto_8
    or-int/2addr v0, v5

    :cond_d
    const v5, 0x92493

    and-int/2addr v5, v0

    const v10, 0x92492

    if-eq v5, v10, :cond_e

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    :goto_9
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v11, v10, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 v10, 0x380000

    and-int/2addr v10, v0

    if-ne v10, v9, :cond_f

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    const/4 v15, 0x0

    if-nez v9, :cond_10

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v9, :cond_11

    :cond_10
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordResetKt$ForgetPasswordReset$1$1;

    invoke-direct {v10, v15, v7}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordResetKt$ForgetPasswordReset$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->g:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    new-instance v12, Lf1;

    const/16 v13, 0x17

    invoke-direct {v12, v1, v2, v13}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v13, -0x4d0ca638

    invoke-static {v13, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    shl-int/lit8 v12, v0, 0x3

    const/high16 v13, 0x70000

    and-int/2addr v12, v13

    or-int/lit8 v12, v12, 0x30

    shl-int/lit8 v13, v0, 0x6

    const/high16 v32, 0x1c00000

    and-int v13, v13, v32

    or-int v29, v12, v13

    const/high16 v30, 0x180000

    const v31, 0x6ff49

    move-object/from16 v28, v11

    move-object v11, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v13, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v13, v5

    move-object/from16 v16, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v9 .. v31}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v28

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v10, "ForgetPasswordReset"

    invoke-direct {v9, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {v1, v9, v12, v6}, Landroidx/compose/foundation/layout/ColumnScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v9

    iget-object v13, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v10, v12}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v12, 0x0

    invoke-static {v9, v12, v10, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v9, "nativeForgetPassword_confirm_button"

    invoke-static {v6, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz v4, :cond_12

    const v6, 0x64d0dcea

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v6, ""

    :goto_b
    move-object/from16 v16, v6

    goto :goto_c

    :cond_12
    const v6, 0x64d15da3

    const v9, 0x7f140635

    invoke-static {v11, v6, v9, v11, v5}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :goto_c
    if-eqz v4, :cond_13

    const v6, 0x64d2ed20

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_d

    :cond_13
    const v6, 0x64d40708

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    :goto_d
    shl-int/lit8 v5, v0, 0xf

    and-int v5, v5, v32

    shl-int/lit8 v0, v0, 0xc

    const/high16 v6, 0x70000000

    and-int/2addr v0, v6

    or-int v9, v5, v0

    const/16 v10, 0x168

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p5

    move/from16 v19, v3

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    goto :goto_e

    :cond_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_15

    new-instance v0, Lzv;

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
