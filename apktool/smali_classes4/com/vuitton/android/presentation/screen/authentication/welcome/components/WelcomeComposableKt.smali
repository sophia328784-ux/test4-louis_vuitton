.class public abstract Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const-string v1, "WelcomeComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x12e3656b

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    or-int/lit8 v4, v11, 0x6

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    :goto_0
    or-int/2addr v4, v5

    move-object/from16 v14, p2

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_1

    :cond_2
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v4, v5

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_4

    or-int/lit16 v4, v4, 0xc00

    :cond_3
    move/from16 v7, p3

    goto :goto_3

    :cond_4
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_3

    move/from16 v7, p3

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x800

    goto :goto_2

    :cond_5
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    or-int/lit16 v8, v4, 0x6000

    and-int/lit8 v9, v12, 0x20

    if-eqz v9, :cond_6

    const v8, 0x36000

    or-int/2addr v4, v8

    move v8, v4

    move-object/from16 v4, p4

    goto :goto_5

    :cond_6
    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/high16 v10, 0x20000

    goto :goto_4

    :cond_7
    const/high16 v10, 0x10000

    :goto_4
    or-int/2addr v8, v10

    :goto_5
    and-int/lit8 v10, v12, 0x40

    if-eqz v10, :cond_8

    const/high16 v13, 0x180000

    or-int/2addr v8, v13

    move-object/from16 v13, p5

    goto :goto_7

    :cond_8
    move-object/from16 v13, p5

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/high16 v15, 0x100000

    goto :goto_6

    :cond_9
    const/high16 v15, 0x80000

    :goto_6
    or-int/2addr v8, v15

    :goto_7
    and-int/lit16 v15, v12, 0x80

    if-eqz v15, :cond_a

    const/high16 v16, 0xc00000

    or-int v8, v8, v16

    move-object/from16 v6, p6

    goto :goto_9

    :cond_a
    move-object/from16 v6, p6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x800000

    goto :goto_8

    :cond_b
    const/high16 v16, 0x400000

    :goto_8
    or-int v8, v8, v16

    :goto_9
    move-object/from16 v16, v0

    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_c

    const/high16 v17, 0x6000000

    or-int v8, v8, v17

    move/from16 v17, v0

    move-object/from16 v0, p7

    goto :goto_b

    :cond_c
    move/from16 v17, v0

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/high16 v18, 0x4000000

    goto :goto_a

    :cond_d
    const/high16 v18, 0x2000000

    :goto_a
    or-int v8, v8, v18

    :goto_b
    and-int/lit16 v0, v12, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_e

    const/high16 v19, 0x30000000

    or-int v8, v8, v19

    move-object/from16 v0, p8

    goto :goto_d

    :cond_e
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000000

    goto :goto_c

    :cond_f
    const/high16 v19, 0x10000000

    :goto_c
    or-int v8, v8, v19

    :goto_d
    and-int/lit16 v0, v12, 0x400

    move/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p9

    if-eqz v19, :cond_10

    move/from16 v22, v20

    goto :goto_e

    :cond_10
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x4

    goto :goto_e

    :cond_11
    const/16 v22, 0x2

    :goto_e
    const v23, 0x12492493

    and-int v0, v8, v23

    const v4, 0x12492492

    const/16 v23, 0x1

    move/from16 v24, v5

    const/4 v5, 0x0

    if-ne v0, v4, :cond_13

    and-int/lit8 v0, v22, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    goto :goto_f

    :cond_12
    move v0, v5

    goto :goto_10

    :cond_13
    :goto_f
    move/from16 v0, v23

    :goto_10
    and-int/lit8 v4, v8, 0x1

    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v24, :cond_14

    move/from16 v16, v5

    goto :goto_11

    :cond_14
    move/from16 v16, v7

    :goto_11
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v9, :cond_16

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_15

    new-instance v1, Lb51;

    const/16 v4, 0x19

    invoke-direct {v1, v4}, Lb51;-><init>(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move/from16 v29, v20

    move-object/from16 v20, v1

    move/from16 v1, v29

    goto :goto_12

    :cond_16
    move/from16 v1, v20

    move-object/from16 v20, p4

    :goto_12
    if-eqz v10, :cond_18

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_17

    new-instance v4, Lb51;

    const/16 v7, 0x1a

    invoke-direct {v4, v7}, Lb51;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v4, Lkotlin/jvm/functions/Function0;

    move/from16 v29, v19

    move-object/from16 v19, v4

    move/from16 v4, v29

    goto :goto_13

    :cond_18
    move/from16 v4, v19

    move-object/from16 v19, p5

    :goto_13
    if-eqz v15, :cond_1a

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_19

    new-instance v6, Lb51;

    const/16 v7, 0x1b

    invoke-direct {v6, v7}, Lb51;-><init>(I)V

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v6, Lkotlin/jvm/functions/Function0;

    :cond_1a
    move-object/from16 v21, v6

    const/4 v6, 0x2

    if-eqz v17, :cond_1c

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1b

    new-instance v7, Lb51;

    const/16 v9, 0x1c

    invoke-direct {v7, v9}, Lb51;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move/from16 v29, v22

    move-object/from16 v22, v7

    move/from16 v7, v29

    goto :goto_14

    :cond_1c
    move/from16 v7, v22

    move-object/from16 v22, p7

    :goto_14
    if-eqz v18, :cond_1e

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_1d

    new-instance v9, Lb51;

    const/16 v10, 0x1d

    invoke-direct {v9, v10}, Lb51;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v9, Lkotlin/jvm/functions/Function0;

    goto :goto_15

    :cond_1e
    move-object/from16 v9, p8

    :goto_15
    if-eqz v4, :cond_20

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1f

    new-instance v4, Lr61;

    invoke-direct {v4, v5}, Lr61;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v4

    goto :goto_16

    :cond_20
    move-object/from16 v24, p9

    :goto_16
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 v10, 0x70000000

    and-int v15, v8, v10

    move/from16 p3, v1

    const/high16 v1, 0x20000000

    if-ne v15, v1, :cond_21

    move/from16 v1, v23

    goto :goto_17

    :cond_21
    move v1, v5

    :goto_17
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v1, :cond_22

    if-ne v15, v0, :cond_23

    :cond_22
    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt$WelcomeComposable$7$1;

    const/4 v1, 0x0

    invoke-direct {v15, v9, v1}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt$WelcomeComposable$7$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0xc46a6b3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->b:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->h:Landroidx/compose/material3/SnackbarHostState;

    and-int/lit8 v4, v8, 0x70

    const/16 v5, 0x20

    if-ne v4, v5, :cond_24

    move/from16 v5, v23

    goto :goto_18

    :cond_24
    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_25

    if-ne v6, v0, :cond_26

    :cond_25
    new-instance v6, Lr30;

    const/4 v5, 0x2

    invoke-direct {v6, v2, v5}, Lr30;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x20

    if-ne v4, v5, :cond_27

    goto :goto_19

    :cond_27
    const/16 v23, 0x0

    :goto_19
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    if-nez v23, :cond_28

    if-ne v4, v0, :cond_29

    :cond_28
    new-instance v4, Lr30;

    invoke-direct {v4, v2, v5}, Lr30;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    move-object/from16 v18, v4

    check-cast v18, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v0, v8, 0x3

    and-int/lit8 v4, v0, 0x70

    or-int v4, p3, v4

    and-int/lit16 v6, v8, 0x1c00

    or-int/2addr v4, v6

    const/high16 v6, 0x380000

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    shl-int/lit8 v6, v8, 0x6

    const/high16 v23, 0x1c00000

    and-int v6, v6, v23

    or-int/2addr v4, v6

    shl-int/lit8 v6, v8, 0x3

    const/high16 v8, 0xe000000

    and-int/2addr v8, v6

    or-int/2addr v4, v8

    and-int/2addr v6, v10

    or-int v26, v4, v6

    shl-int/lit8 v4, v7, 0x3

    and-int/lit8 v27, v4, 0x70

    const/16 v28, 0x0

    move-object/from16 v23, v1

    move-object/from16 v25, v3

    invoke-static/range {v13 .. v28}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v25

    and-int/lit8 v0, v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    move-object v0, v13

    move/from16 v4, v16

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v24

    goto :goto_1a

    :cond_2a
    move-object v1, v3

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move v4, v7

    move-object/from16 v0, v16

    move-object v7, v6

    move-object/from16 v6, p5

    :goto_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2b

    move-object v1, v0

    new-instance v0, Lb90;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v12}, Lb90;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method
