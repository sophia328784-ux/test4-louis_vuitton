.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v7, p7

    if-eqz v0, :cond_0

    const-string v1, "CustomizationCreationCard"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, -0x5cc04e48

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v0, v7, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    and-int/lit8 v2, v7, 0x30

    if-nez v2, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    goto :goto_3

    :cond_4
    move-object/from16 v2, p1

    :goto_3
    and-int/lit16 v3, v7, 0x180

    move-object/from16 v14, p2

    if-nez v3, :cond_6

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_4

    :cond_5
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v0, v3

    :cond_6
    and-int/lit16 v3, v7, 0xc00

    move-object/from16 v15, p3

    if-nez v3, :cond_8

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x800

    goto :goto_5

    :cond_7
    const/16 v3, 0x400

    :goto_5
    or-int/2addr v0, v3

    :cond_8
    and-int/lit16 v3, v7, 0x6000

    move-object/from16 v5, p4

    if-nez v3, :cond_a

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x4000

    goto :goto_6

    :cond_9
    const/16 v3, 0x2000

    :goto_6
    or-int/2addr v0, v3

    :cond_a
    const/high16 v3, 0x30000

    and-int/2addr v3, v7

    move-object/from16 v10, p5

    if-nez v3, :cond_c

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v3, 0x10000

    :goto_7
    or-int/2addr v0, v3

    :cond_c
    const v3, 0x12493

    and-int/2addr v3, v0

    const v4, 0x12492

    if-eq v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v3, "pdp_customizationCard_view"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    new-instance v13, Lr;

    const/16 v18, 0x16

    move-object/from16 v17, v2

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, 0x37e51a2c

    invoke-static {v2, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    shr-int/lit8 v0, v0, 0x9

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v13, v0, 0xc00

    const/4 v14, 0x2

    const/4 v9, 0x0

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v0, Lz2;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lz2;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v8, p8

    if-eqz v0, :cond_0

    const-string v1, "GenericCustomizationCard"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, -0x35c573cb

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    and-int/lit8 v1, v8, 0x30

    if-nez v1, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_2

    :cond_3
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_4
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x180

    :cond_5
    move-object/from16 v3, p2

    goto :goto_4

    :cond_6
    and-int/lit16 v3, v8, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_3

    :cond_7
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :goto_4
    and-int/lit16 v4, v8, 0xc00

    if-nez v4, :cond_9

    move-object/from16 v4, p3

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x800

    goto :goto_5

    :cond_8
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    goto :goto_6

    :cond_9
    move-object/from16 v4, p3

    :goto_6
    and-int/lit16 v5, v8, 0x6000

    if-nez v5, :cond_b

    move-object/from16 v5, p4

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x4000

    goto :goto_7

    :cond_a
    const/16 v6, 0x2000

    :goto_7
    or-int/2addr v0, v6

    goto :goto_8

    :cond_b
    move-object/from16 v5, p4

    :goto_8
    and-int/lit8 v6, p9, 0x20

    const/high16 v10, 0x30000

    if-eqz v6, :cond_d

    or-int/2addr v0, v10

    :cond_c
    move-object/from16 v10, p5

    goto :goto_a

    :cond_d
    and-int/2addr v10, v8

    if-nez v10, :cond_c

    move-object/from16 v10, p5

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v11, 0x10000

    :goto_9
    or-int/2addr v0, v11

    :goto_a
    const/high16 v11, 0x180000

    and-int/2addr v11, v8

    if-nez v11, :cond_10

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/high16 v11, 0x100000

    goto :goto_b

    :cond_f
    const/high16 v11, 0x80000

    :goto_b
    or-int/2addr v0, v11

    :cond_10
    const v11, 0x92493

    and-int/2addr v11, v0

    const v13, 0x92492

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eq v11, v13, :cond_11

    move v11, v12

    goto :goto_c

    :cond_11
    move v11, v15

    :goto_c
    and-int/lit8 v13, v0, 0x1

    invoke-virtual {v14, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v11, 0x0

    if-eqz v1, :cond_12

    move v1, v12

    move-object v12, v11

    goto :goto_d

    :cond_12
    move v1, v12

    move-object v12, v3

    :goto_d
    if-eqz v6, :cond_13

    move-object v13, v11

    goto :goto_e

    :cond_13
    move-object v13, v10

    :goto_e
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/high16 v6, 0x380000

    if-nez v10, :cond_14

    const v10, -0x6cb8824c

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 p5, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move v1, v15

    const/high16 v6, 0x100000

    goto :goto_10

    :cond_14
    const v11, -0x6cb8824b

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int v11, v0, v6

    const/high16 v1, 0x100000

    if-ne v11, v1, :cond_15

    const/4 v11, 0x1

    goto :goto_f

    :cond_15
    move v11, v15

    :goto_f
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v11, v11, v16

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v11, :cond_16

    if-ne v1, v3, :cond_17

    :cond_16
    new-instance v1, Lkm0;

    invoke-direct {v1, v7, v2, v15}, Lkm0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Modify;

    invoke-direct {v11, v1}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState$Modify;-><init>(Lkotlin/jvm/functions/Function0;)V

    and-int/lit8 v1, v0, 0xe

    move/from16 p5, v6

    shl-int/lit8 v6, v0, 0x3

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v1, v6

    shr-int/lit8 v6, v0, 0x3

    const v16, 0xe000

    and-int v6, v6, v16

    or-int/2addr v1, v6

    const/16 v16, 0x0

    move v6, v15

    move v15, v1

    move v1, v6

    const/high16 v6, 0x100000

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationConfigurationCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_10
    if-nez v11, :cond_1b

    const v10, -0x6cb1d0f0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->e:Ljava/lang/String;

    and-int v11, v0, p5

    if-ne v11, v6, :cond_18

    const/4 v15, 0x1

    goto :goto_11

    :cond_18
    move v15, v1

    :goto_11
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v6, v15

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_19

    if-ne v11, v3, :cond_1a

    :cond_19
    new-instance v11, Lkm0;

    const/4 v3, 0x1

    invoke-direct {v11, v7, v2, v3}, Lkm0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;I)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v3, v0, 0xe

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v6, v0, 0x380

    or-int/2addr v3, v6

    and-int/lit16 v0, v0, 0x1c00

    or-int v16, v3, v0

    move-object v12, v5

    move-object v15, v14

    move-object v14, v11

    move-object v11, v4

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v14, v15

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1b
    const v0, 0x25c87d12

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_13

    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v6, v10

    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1d

    new-instance v0, Lgf;

    const/4 v10, 0x4

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v1, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lgf;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    if-eqz v0, :cond_0

    const-string v1, "PdpCustomizationContainer"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v6, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0xdd942e8

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v3, 0x92

    const/16 v16, 0x1

    const/4 v8, 0x0

    if-eq v1, v3, :cond_4

    move/from16 v1, v16

    goto :goto_3

    :cond_4
    move v1, v8

    :goto_3
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_5

    const v3, 0x6a12b35c

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v3, v8

    goto :goto_5

    :cond_5
    const v3, 0x6a12b35d

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v3, 0x7f140cbd

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v3, 0x7f140cbb

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const v3, 0x7f140c42

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    and-int/lit16 v3, v0, 0x380

    if-ne v3, v2, :cond_6

    move/from16 v3, v16

    goto :goto_4

    :cond_6
    move v3, v8

    :goto_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_7

    if-ne v12, v1, :cond_8

    :cond_7
    new-instance v12, Lye0;

    const/16 v3, 0x8

    invoke-direct {v12, v5, v3}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v14, v0, 0xe

    const/4 v15, 0x4

    move v3, v8

    const/4 v8, 0x0

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-nez v8, :cond_9

    const v7, 0x6a1bb87f

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_9
    const v9, 0x6a1bb880

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_e

    const v7, -0x298eed72

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v7, 0x7f140aad

    move-object v9, v8

    invoke-static {v13, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f140aab

    invoke-static {v13, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    and-int/lit16 v11, v0, 0x380

    if-ne v11, v2, :cond_b

    move/from16 v11, v16

    goto :goto_7

    :cond_b
    move v11, v3

    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_c

    if-ne v12, v1, :cond_d

    :cond_c
    new-instance v12, Lye0;

    const/16 v11, 0x9

    invoke-direct {v12, v5, v11}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v14, v0, 0xe

    const/16 v15, 0x20

    const/4 v11, 0x0

    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v18

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_e
    const v7, -0x2985f7cf

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    const v8, 0x7f140959

    if-nez v7, :cond_f

    const v7, 0x6a27f686

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v2, v8

    goto :goto_b

    :cond_f
    const v9, 0x6a27f687

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    invoke-static {v13, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f140958

    invoke-static {v13, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    and-int/lit16 v12, v0, 0x380

    if-ne v12, v2, :cond_10

    move/from16 v12, v16

    goto :goto_a

    :cond_10
    move v12, v3

    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_11

    if-ne v14, v1, :cond_12

    :cond_11
    new-instance v14, Lye0;

    const/16 v12, 0xa

    invoke-direct {v14, v5, v12}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v12, v14

    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v14, v0, 0xe

    const/16 v15, 0x20

    move/from16 v17, v8

    move-object v8, v10

    move-object v10, v11

    const/4 v11, 0x0

    move/from16 v2, v17

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-nez v7, :cond_13

    const v7, 0x6a313a06

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_13
    const v8, 0x6a313a07

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v8, 0x7f140948

    invoke-static {v13, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    and-int/lit16 v8, v0, 0x380

    const/16 v11, 0x100

    if-ne v8, v11, :cond_14

    move/from16 v8, v16

    goto :goto_c

    :cond_14
    move v8, v3

    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_15

    if-ne v11, v1, :cond_16

    :cond_15
    new-instance v11, Lye0;

    const/16 v8, 0xb

    invoke-direct {v11, v5, v8}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v12, v11

    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v14, v0, 0xe

    const/16 v15, 0x24

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-nez v7, :cond_17

    const v0, 0x6a391906

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_17
    const v8, 0x6a391907

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-static {v13, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const v9, 0x7f14094b

    invoke-static {v13, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->e:Ljava/lang/String;

    and-int/lit16 v11, v0, 0x380

    const/16 v12, 0x100

    if-ne v11, v12, :cond_18

    goto :goto_e

    :cond_18
    move/from16 v16, v3

    :goto_e
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int v11, v16, v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_19

    if-ne v12, v1, :cond_1a

    :cond_19
    new-instance v12, Ljm0;

    invoke-direct {v12, v5, v7, v3}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v11, v12

    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v0, v0, 0xe

    move-object v7, v8

    move-object v12, v13

    move v13, v0

    move-object v8, v2

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCustomizationContainerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v13, v12

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1c

    new-instance v0, Lgi0;

    const/16 v2, 0x8

    move/from16 v1, p4

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
