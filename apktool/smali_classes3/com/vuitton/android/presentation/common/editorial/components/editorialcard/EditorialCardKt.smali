.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 56

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v5, p6

    move/from16 v15, p7

    move-object/from16 v6, p9

    move-object/from16 v9, p10

    move/from16 v1, p15

    move/from16 v10, p16

    const-string v11, "EditorialCard"

    if-eqz v0, :cond_0

    invoke-static {v0, v11}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x2e58e42c

    move-object/from16 v4, p14

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v3, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v4, v10, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v16, v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v16, v1, 0x6

    if-nez v16, :cond_3

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x4

    goto :goto_0

    :cond_2
    const/16 v16, 0x2

    :goto_0
    or-int v16, v1, v16

    goto :goto_1

    :cond_3
    move/from16 v16, v1

    :goto_1
    and-int/lit8 v17, v1, 0x30

    const/16 v18, 0x20

    if-nez v17, :cond_6

    if-nez p1, :cond_4

    const/16 v17, -0x1

    :goto_2
    move/from16 v8, v17

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    goto :goto_2

    :goto_3
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move/from16 v8, v18

    goto :goto_4

    :cond_5
    const/16 v8, 0x10

    :goto_4
    or-int v16, v16, v8

    :cond_6
    and-int/lit16 v8, v1, 0x180

    const/16 v17, 0x80

    move/from16 v19, v4

    if-nez v8, :cond_8

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_7
    move/from16 v8, v17

    :goto_5
    or-int v16, v16, v8

    :cond_8
    and-int/lit16 v8, v1, 0xc00

    const/16 v20, 0x400

    const/16 v21, 0x800

    if-nez v8, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_9

    move/from16 v8, v21

    goto :goto_6

    :cond_9
    move/from16 v8, v20

    :goto_6
    or-int v16, v16, v8

    :cond_a
    and-int/lit16 v8, v1, 0x6000

    if-nez v8, :cond_c

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x4000

    goto :goto_7

    :cond_b
    const/16 v8, 0x2000

    :goto_7
    or-int v16, v16, v8

    :cond_c
    const/high16 v8, 0x30000

    and-int/2addr v8, v1

    if-nez v8, :cond_e

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/high16 v8, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v8, 0x10000

    :goto_8
    or-int v16, v16, v8

    :cond_e
    const/high16 v8, 0x180000

    and-int/2addr v8, v1

    if-nez v8, :cond_10

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/high16 v8, 0x100000

    goto :goto_9

    :cond_f
    const/high16 v8, 0x80000

    :goto_9
    or-int v16, v16, v8

    :cond_10
    const/high16 v8, 0xc00000

    and-int/2addr v8, v1

    if-nez v8, :cond_12

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_11

    const/high16 v8, 0x800000

    goto :goto_a

    :cond_11
    const/high16 v8, 0x400000

    :goto_a
    or-int v16, v16, v8

    :cond_12
    and-int/lit16 v8, v10, 0x100

    const/high16 v22, 0x6000000

    if-eqz v8, :cond_13

    or-int v16, v16, v22

    move/from16 v4, p8

    goto :goto_c

    :cond_13
    and-int v22, v1, v22

    move/from16 v4, p8

    if-nez v22, :cond_15

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x4000000

    goto :goto_b

    :cond_14
    const/high16 v23, 0x2000000

    :goto_b
    or-int v16, v16, v23

    :cond_15
    :goto_c
    const/high16 v23, 0x30000000

    and-int v23, v1, v23

    if-nez v23, :cond_17

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x20000000

    goto :goto_d

    :cond_16
    const/high16 v23, 0x10000000

    :goto_d
    or-int v16, v16, v23

    :cond_17
    move/from16 v13, v16

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const/16 v16, 0x4

    goto :goto_e

    :cond_18
    const/16 v16, 0x2

    :goto_e
    and-int/lit16 v7, v10, 0x800

    const/16 v4, 0x30

    if-eqz v7, :cond_19

    or-int/lit8 v16, v16, 0x30

    move-object/from16 v4, p11

    :goto_f
    move-object/from16 v18, v0

    move/from16 v0, v16

    goto :goto_11

    :cond_19
    move-object/from16 v4, p11

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    goto :goto_10

    :cond_1a
    const/16 v18, 0x10

    :goto_10
    or-int v16, v16, v18

    goto :goto_f

    :goto_11
    and-int/lit16 v1, v10, 0x1000

    if-eqz v1, :cond_1b

    or-int/lit16 v0, v0, 0x180

    goto :goto_12

    :cond_1b
    move/from16 v16, v0

    move-object/from16 v0, p12

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    const/16 v17, 0x100

    :cond_1c
    or-int v16, v16, v17

    move/from16 v0, v16

    :goto_12
    move/from16 v16, v1

    and-int/lit16 v1, v10, 0x2000

    if-eqz v1, :cond_1d

    or-int/lit16 v0, v0, 0xc00

    move v4, v0

    move-object/from16 v0, p13

    goto :goto_13

    :cond_1d
    move/from16 v17, v0

    move-object/from16 v0, p13

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    move/from16 v20, v21

    :cond_1e
    or-int v17, v17, v20

    move/from16 v4, v17

    :goto_13
    const v17, 0x12492493

    and-int v0, v13, v17

    move/from16 v17, v1

    const v1, 0x12492492

    const/16 v39, 0x1

    if-ne v0, v1, :cond_20

    and-int/lit16 v0, v4, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    :cond_20
    :goto_14
    move/from16 v0, v39

    :goto_15
    and-int/lit8 v1, v13, 0x1

    invoke-virtual {v12, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz v19, :cond_21

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_21
    move-object/from16 v0, v18

    :goto_16
    if-eqz v8, :cond_22

    const/16 v40, 0x0

    goto :goto_17

    :cond_22
    move/from16 v40, p8

    :goto_17
    const/16 v1, 0xf

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v7, :cond_24

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_23

    new-instance v7, Lrt;

    invoke-direct {v7, v1}, Lrt;-><init>(I)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v41, v7

    goto :goto_18

    :cond_24
    move-object/from16 v41, p11

    :goto_18
    const/16 v7, 0x8

    if-eqz v16, :cond_26

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_25

    new-instance v1, Liv;

    invoke-direct {v1, v7}, Liv;-><init>(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_19

    :cond_26
    move-object/from16 v1, p12

    :goto_19
    if-eqz v17, :cond_28

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_27

    new-instance v7, Lrt;

    const/16 v14, 0x10

    invoke-direct {v7, v14}, Lrt;-><init>(I)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v7, Lkotlin/jvm/functions/Function0;

    goto :goto_1a

    :cond_28
    move-object/from16 v7, p13

    :goto_1a
    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    move-object/from16 p12, v1

    iget-object v1, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move/from16 v16, v4

    if-nez v1, :cond_29

    const v1, -0x7a57a026

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v1, 0x0

    goto :goto_1b

    :cond_29
    const v1, -0x7a57a025

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_2a

    new-instance v1, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v1, v14}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v1, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    const v17, 0x3fe38e39

    const/high16 v18, 0x3f100000    # 0.5625f

    if-ne v14, v8, :cond_2b

    sget-object v14, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModelKt$WhenMappings;->a:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v14, v14, v19

    packed-switch v14, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    const/4 v14, 0x0

    goto :goto_1c

    :pswitch_1
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1c

    :pswitch_2
    move/from16 v14, v18

    goto :goto_1c

    :pswitch_3
    move/from16 v14, v17

    goto :goto_1c

    :pswitch_4
    const v14, 0x3f4ccccd    # 0.8f

    goto :goto_1c

    :pswitch_5
    const v14, 0x3f2aaaab

    :goto_1c
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_2d

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move/from16 v20, v14

    move-object/from16 v14, p3

    if-ne v14, v4, :cond_2c

    move/from16 v4, v39

    goto :goto_1d

    :cond_2c
    const/4 v4, 0x0

    :goto_1d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_2d
    move/from16 v20, v14

    move-object/from16 v14, p3

    :goto_1e
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v21, v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_31

    cmpg-float v1, v20, v17

    if-nez v1, :cond_2e

    goto :goto_1f

    :cond_2e
    cmpg-float v1, v20, v18

    if-nez v1, :cond_2f

    goto :goto_1f

    :cond_2f
    if-eqz v4, :cond_30

    :goto_1f
    move/from16 v1, v39

    goto :goto_20

    :cond_30
    const/4 v1, 0x0

    :goto_20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v17, v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_33

    instance-of v1, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    if-eqz v1, :cond_32

    move-object v1, v5

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;->a:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_CENTERED:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    if-ne v1, v2, :cond_32

    move/from16 v1, v39

    goto :goto_21

    :cond_32
    const/4 v1, 0x0

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_36

    instance-of v2, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    if-eqz v2, :cond_34

    move-object v2, v5

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;->a:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    move-object/from16 v25, v3

    sget-object v3, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_LEFT:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    if-ne v2, v3, :cond_35

    move/from16 v2, v39

    goto :goto_22

    :cond_34
    move-object/from16 v25, v3

    :cond_35
    const/4 v2, 0x0

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_23

    :cond_36
    move-object/from16 v25, v3

    :goto_23
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_38

    if-eqz v21, :cond_37

    iget-boolean v3, v6, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a:Z

    if-eqz v3, :cond_37

    move/from16 v3, v39

    goto :goto_24

    :cond_37
    const/4 v3, 0x0

    :goto_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_38
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_3c

    instance-of v3, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v3, :cond_39

    move-object v3, v5

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;->b:Z

    if-nez v3, :cond_3a

    :cond_39
    instance-of v3, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v3, :cond_3b

    move-object v3, v5

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v3, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v3, v5, :cond_3b

    :cond_3a
    move/from16 v3, v39

    goto :goto_25

    :cond_3b
    const/4 v3, 0x0

    :goto_25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3c
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const/4 v7, 0x0

    invoke-static {v3, v5, v12, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    move-object/from16 v29, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    move-object/from16 v30, v5

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v25, :cond_55

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v31, v0

    iget-boolean v0, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_3d

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_26

    :cond_3d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_26
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v32, v14

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v5, v14, v11}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    move-object/from16 v33, v0

    xor-int/lit8 v0, v17, 0x1

    move-object/from16 v17, v3

    new-instance v3, Lrq;

    move-object/from16 v34, v7

    const/16 v7, 0xc

    invoke-direct {v3, v7}, Lrq;-><init>(I)V

    const/4 v7, 0x6

    invoke-static {v5, v0, v3, v12, v7}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v3, Lrq;

    const/16 v5, 0xd

    invoke-direct {v3, v5}, Lrq;-><init>(I)V

    const/16 v5, 0x30

    invoke-static {v0, v1, v3, v12, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lrq;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Lrq;-><init>(I)V

    invoke-static {v0, v2, v1, v12, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lrq;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lrq;-><init>(I)V

    invoke-static {v0, v4, v1, v12, v5}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lrq;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lrq;-><init>(I)V

    shr-int/lit8 v2, v13, 0x12

    and-int/lit8 v3, v2, 0x70

    invoke-static {v0, v15, v1, v12, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-boolean v1, v6, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a:Z

    iget-boolean v3, v6, Lcom/vuitton/android/presentation/model/common/A11ySettings;->b:Z

    move/from16 v23, v3

    new-instance v3, Lr;

    move/from16 v24, v4

    const/16 v4, 0xd

    move-object v15, v8

    move-object/from16 p8, v14

    move/from16 p0, v16

    move-object/from16 v44, v17

    move-object/from16 v7, v21

    move-object/from16 v8, v27

    move-object/from16 v45, v28

    move-object/from16 v43, v30

    move v14, v5

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v8}, Lr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v48, v8

    const v4, 0x7bd748e4

    invoke-static {v4, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit16 v4, v13, 0x380

    const v5, 0x36c30

    or-int/2addr v4, v5

    shl-int/lit8 v5, p0, 0x1b

    const/high16 v6, 0x70000000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    move-object/from16 v50, p12

    move v6, v1

    move/from16 v52, v2

    move-object v10, v3

    move-object v14, v11

    move-object v11, v12

    move/from16 p14, v13

    move/from16 v1, v20

    move-object/from16 v8, v21

    move/from16 v7, v23

    move/from16 v3, v24

    move/from16 v5, v26

    move-object/from16 v49, v31

    move-object/from16 v51, v33

    move-object/from16 v2, p2

    move-object/from16 v13, p6

    move v12, v4

    move/from16 v4, v18

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardBackgroundKt;->a(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v11

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v5, 0x30

    invoke-static {v2, v1, v4, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v25, :cond_54

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_3e

    move-object/from16 v5, v32

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_27
    move-object/from16 v6, v51

    goto :goto_28

    :cond_3e
    move-object/from16 v5, v32

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_27

    :goto_28
    invoke-static {v4, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v34

    move-object/from16 v3, v44

    invoke-static {v2, v4, v1, v4, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, p8

    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v10, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move/from16 v9, v39

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v0, v8, v9}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v7, v29

    move-object/from16 v8, v43

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v25, :cond_53

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_3f

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_29

    :cond_3f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_29
    invoke-static {v4, v7, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v9, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v4, v1, v4, v3}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz p5, :cond_40

    instance-of v0, v13, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v0, :cond_41

    move-object v0, v13

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-eq v0, v1, :cond_40

    sget-object v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-eq v0, v1, :cond_40

    goto :goto_2a

    :cond_40
    move-object/from16 v6, p5

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_2d

    :cond_41
    :goto_2a
    const v0, 0x4e346da0    # 7.5677082E8f

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v6, p5

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v12, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "editorialCard_surtitle_text"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->p:Landroidx/compose/ui/text/TextStyle;

    sget-object v1, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    const/4 v9, 0x1

    if-eq v1, v9, :cond_43

    const/4 v5, 0x2

    if-ne v1, v5, :cond_42

    const v1, 0x4cd8b318

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2b
    move-wide/from16 v18, v7

    goto :goto_2c

    :cond_42
    const/4 v1, 0x0

    const v0, 0x4cd89a9d    # 1.13562856E8f

    invoke-static {v4, v0, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v1, 0x0

    const/4 v5, 0x2

    const v7, 0x4cd8a6d2    # 1.13587856E8f

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2b

    :goto_2c
    const/16 v37, 0x0

    const v38, 0x1fff8

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v34, v0

    move-object/from16 v35, v4

    invoke-static/range {v16 .. v38}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2e

    :goto_2d
    const v0, 0x4e3efe9e    # 8.0108941E8f

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2e
    if-nez p4, :cond_44

    const v0, 0x4e3fad98    # 8.0395622E8f

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v53, p0

    move/from16 v24, p14

    move v7, v1

    move/from16 v46, v2

    move-object v6, v13

    move-object/from16 v54, v14

    goto/16 :goto_30

    :cond_44
    const v0, 0x4e3fad99    # 8.0395629E8f

    invoke-static {v4, v0, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const-string v1, "editorialCard_title_text"

    invoke-static {v0, v1, v3, v2}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    sget-object v3, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v3, v3, v7

    const/4 v9, 0x1

    if-eq v3, v9, :cond_46

    if-ne v3, v5, :cond_45

    const v3, 0x4be9d696    # 3.0649644E7f

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2f

    :cond_45
    const/4 v3, 0x0

    const v0, 0x4be9be1b    # 3.063711E7f

    invoke-static {v4, v0, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_46
    const/4 v3, 0x0

    const v7, 0x4be9ca50    # 3.064336E7f

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2f
    const/16 v21, 0x0

    const v22, 0x1fff8

    move-object/from16 v35, v4

    move/from16 v47, v5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move/from16 v46, v2

    move/from16 v42, v3

    move-wide v2, v7

    const-wide/16 v7, 0x0

    move/from16 v39, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 v53, p0

    move/from16 v24, p14

    move-object/from16 v54, v18

    move-object/from16 v19, v35

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v19

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v6, p6

    :goto_30
    instance-of v0, v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v0, :cond_4c

    move-object v1, v6

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_REPLAY:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v1, v2, :cond_4c

    const v1, 0x4e4b6ea8    # 8.532567E8f

    move-object/from16 v2, v54

    invoke-static {v4, v1, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v8

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v10, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v3, "editorialCard_action_button"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v1, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v9, 0x1

    if-eq v1, v9, :cond_48

    const/4 v5, 0x2

    if-ne v1, v5, :cond_47

    const v1, 0x4cd96078    # 1.13968064E8f

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_31
    move-object/from16 v16, v1

    goto :goto_32

    :cond_47
    const v0, 0x4cd948b7    # 1.13919416E8f

    invoke-static {v4, v0, v7}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_48
    const v1, 0x4cd95492    # 1.13943696E8f

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->g:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_31

    :goto_32
    const v1, 0x7f140a15

    invoke-static {v4, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    move/from16 v1, v53

    and-int/lit8 v3, v1, 0xe

    const/4 v5, 0x4

    if-ne v3, v5, :cond_49

    move v14, v9

    goto :goto_33

    :cond_49
    move v14, v7

    :goto_33
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, v45

    if-nez v14, :cond_4b

    if-ne v3, v5, :cond_4a

    goto :goto_34

    :cond_4a
    move-object/from16 v11, p10

    goto :goto_35

    :cond_4b
    :goto_34
    new-instance v3, Lh1;

    const/16 v8, 0x1b

    move-object/from16 v11, p10

    invoke-direct {v3, v11, v8}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_35
    move-object/from16 v20, v3

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v13, 0x1f8

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v14, v4

    invoke-static/range {v12 .. v23}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_36

    :cond_4c
    move-object/from16 v11, p10

    move-object/from16 v5, v45

    move/from16 v1, v53

    move-object/from16 v2, v54

    const/4 v9, 0x1

    const v3, 0x4e5613fe    # 8.9790861E8f

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_36
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    instance-of v3, v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v3, :cond_4d

    const v0, 0x670fdf39

    invoke-static {v4, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v15, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v16, 0x0

    const/16 v17, 0xb

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v2, "editorialCard_notifyMe_button"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v2, v24, 0x70

    move/from16 v3, v52

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int v5, v2, v1

    move-object/from16 v1, p1

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v3

    move-object v14, v4

    move-object v4, v1

    move v3, v2

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, v49

    move-object/from16 v1, v50

    goto/16 :goto_3b

    :cond_4d
    move-object v14, v4

    move/from16 v3, v40

    move-object/from16 v8, v41

    move-object/from16 v4, p1

    if-eqz v0, :cond_52

    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v0, v10, :cond_52

    const v0, 0x671029a7

    invoke-static {v14, v0, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v0

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v2, "editorialCard_addToCalendar_button"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit16 v1, v1, 0x380

    const/16 v2, 0x100

    if-ne v1, v2, :cond_4e

    move v1, v9

    goto :goto_37

    :cond_4e
    move v1, v7

    :goto_37
    const/high16 v2, 0x380000

    and-int v2, v24, v2

    const/high16 v10, 0x100000

    if-ne v2, v10, :cond_4f

    move v2, v9

    goto :goto_38

    :cond_4f
    move v2, v7

    :goto_38
    or-int/2addr v1, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_51

    if-ne v2, v5, :cond_50

    goto :goto_39

    :cond_50
    move-object/from16 v1, v50

    goto :goto_3a

    :cond_51
    :goto_39
    new-instance v2, Ldt;

    move-object/from16 v1, v50

    const/16 v5, 0x8

    invoke-direct {v2, v1, v6, v5}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_3a
    check-cast v2, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v5, v24, 0x70

    invoke-static {v0, v4, v2, v14, v5}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, v49

    goto :goto_3b

    :cond_52
    move-object/from16 v1, v50

    const v0, 0x67106118

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v2, v49

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3b
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v13, v1

    move-object v1, v2

    move v9, v3

    move-object v12, v8

    move-object/from16 v35, v14

    move-object/from16 v14, v48

    goto :goto_3c

    :cond_53
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_54
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_55
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_56
    move-object/from16 v4, p1

    move-object v6, v5

    move-object v11, v9

    move-object v14, v12

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v9, p8

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v35, v14

    move-object/from16 v1, v18

    move-object/from16 v14, p13

    :goto_3c
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_57

    move-object v2, v0

    new-instance v0, Ldw;

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v55, v2

    move-object v2, v4

    move-object v7, v6

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v16}, Ldw;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    move-object/from16 v2, v55

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_57
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
