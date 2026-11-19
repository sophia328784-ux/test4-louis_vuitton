.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;IZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v11, p4

    move-object/from16 v6, p5

    move/from16 v12, p7

    const-string v2, "PdpVarianceImageItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, -0x7dcd9db2

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v4, p8, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v5, v12, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v12, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v12

    goto :goto_1

    :cond_3
    move v5, v12

    :goto_1
    and-int/lit8 v9, v12, 0x30

    const/16 v10, 0x20

    if-nez v9, :cond_5

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v10

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    :cond_5
    and-int/lit16 v9, v12, 0x180

    if-nez v9, :cond_7

    move/from16 v9, p2

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x100

    goto :goto_3

    :cond_6
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v5, v14

    goto :goto_4

    :cond_7
    move/from16 v9, p2

    :goto_4
    and-int/lit16 v14, v12, 0xc00

    const/16 v15, 0x800

    if-nez v14, :cond_9

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    move v14, v15

    goto :goto_5

    :cond_8
    const/16 v14, 0x400

    :goto_5
    or-int/2addr v5, v14

    :cond_9
    and-int/lit16 v14, v12, 0x6000

    if-nez v14, :cond_b

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x4000

    goto :goto_6

    :cond_a
    const/16 v14, 0x2000

    :goto_6
    or-int/2addr v5, v14

    :cond_b
    const/high16 v14, 0x30000

    and-int/2addr v14, v12

    if-nez v14, :cond_d

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v14, 0x10000

    :goto_7
    or-int/2addr v5, v14

    :cond_d
    move v14, v5

    const v5, 0x12493

    and-int/2addr v5, v14

    const v13, 0x12492

    const/4 v7, 0x0

    const/16 v16, 0x1

    if-eq v5, v13, :cond_e

    move/from16 v5, v16

    goto :goto_8

    :cond_e
    move v5, v7

    :goto_8
    and-int/lit8 v13, v14, 0x1

    invoke-virtual {v8, v13, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_f

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_f
    move-object v13, v0

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f140367

    invoke-static {v8, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-nez v0, :cond_10

    if-eqz v11, :cond_10

    const v0, 0x2543f7d7

    const v2, 0x7f14034f

    invoke-static {v8, v0, v2, v8, v7}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object v2, v0

    goto :goto_a

    :cond_10
    const v0, 0x2544f642

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v0, ""

    goto :goto_9

    :goto_a
    and-int/lit8 v0, v14, 0x70

    if-ne v0, v10, :cond_11

    move/from16 v0, v16

    goto :goto_b

    :cond_11
    move v0, v7

    :goto_b
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    and-int/lit16 v5, v14, 0x1c00

    if-ne v5, v15, :cond_12

    move/from16 v5, v16

    goto :goto_c

    :cond_12
    move v5, v7

    :goto_c
    or-int/2addr v0, v5

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    const/high16 v5, 0x70000

    and-int v10, v14, v5

    const/high16 v5, 0x20000

    if-ne v10, v5, :cond_13

    move/from16 v5, v16

    goto :goto_d

    :cond_13
    move v5, v7

    :goto_d
    or-int/2addr v0, v5

    and-int/lit16 v5, v14, 0x380

    const/16 v15, 0x100

    if-ne v5, v15, :cond_14

    move/from16 v5, v16

    goto :goto_e

    :cond_14
    move v5, v7

    :goto_e
    or-int/2addr v0, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_16

    if-ne v5, v15, :cond_15

    goto :goto_f

    :cond_15
    move-object v2, v6

    goto :goto_10

    :cond_16
    :goto_f
    new-instance v0, Loy;

    move v5, v9

    invoke-direct/range {v0 .. v6}, Loy;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/functions/Function0;)V

    move-object v2, v6

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_10
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const-string v0, "pdp_variationImageItem_view"

    const/4 v4, 0x2

    invoke-static {v13, v0, v5, v4}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;->SMALL:Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;

    const/high16 v5, 0x20000

    if-ne v10, v5, :cond_17

    move/from16 v7, v16

    :cond_17
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v7, :cond_18

    if-ne v5, v15, :cond_19

    :cond_18
    new-instance v5, Ly2;

    const/16 v6, 0x1c

    invoke-direct {v5, v2, v6}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance v5, Lbn0;

    invoke-direct {v5, v1, v11, v3}, Lbn0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;ZZ)V

    const v7, 0x4a57e1db    # 3537014.8f

    invoke-static {v7, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    shr-int/lit8 v5, v14, 0x6

    and-int/lit8 v5, v5, 0x70

    const v9, 0x6000c00

    or-int/2addr v9, v5

    const/16 v10, 0x74

    const/4 v2, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p3

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;->b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;Landroidx/compose/ui/graphics/Color;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v13

    goto :goto_11

    :cond_1a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1b

    new-instance v0, Lcn0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v8, p8

    move v5, v11

    move v7, v12

    invoke-direct/range {v0 .. v8}, Lcn0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;IZZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final b(FILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, 0x66205311

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    const/16 v7, 0x100

    if-nez v6, :cond_5

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v4, v6

    :cond_5
    and-int/lit16 v6, v4, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v8, :cond_6

    move v6, v10

    goto :goto_4

    :cond_6
    move v6, v9

    :goto_4
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v13, v8, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f140370

    invoke-static {v8, v6, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "PdpVarianceMoreIndicator--orJrPs"

    invoke-direct {v8, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_7

    new-instance v11, Lyk0;

    const/16 v14, 0x15

    invoke-direct {v11, v14}, Lyk0;-><init>(I)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v11}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    and-int/lit16 v4, v4, 0x380

    if-ne v4, v7, :cond_8

    move v14, v10

    goto :goto_5

    :cond_8
    move v14, v9

    :goto_5
    or-int/2addr v11, v14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_9

    if-ne v14, v12, :cond_a

    :cond_9
    new-instance v14, Lt50;

    const/4 v11, 0x3

    invoke-direct {v14, v11, v6, v2}, Lt50;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const-string v6, "pdp_variationMore_button"

    invoke-static {v8, v6, v14, v5}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->p:J

    move v6, v9

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    if-ne v4, v7, :cond_b

    move v6, v10

    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v6, :cond_c

    if-ne v4, v12, :cond_d

    :cond_c
    new-instance v4, Ly2;

    const/16 v6, 0x1d

    invoke-direct {v4, v2, v6}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lpx;

    invoke-direct {v4, v1, v10}, Lpx;-><init>(II)V

    const v6, 0x4adfd2a4    # 7334226.0f

    invoke-static {v6, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const v14, 0x6000030

    const/16 v15, 0x6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;->b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;Landroidx/compose/ui/graphics/Color;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v5, Lan0;

    invoke-direct {v5, v0, v1, v2, v3}, Lan0;-><init>(FILkotlin/jvm/functions/Function0;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    const-string v1, "PdpVariationImageList-icvEI7I"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x75cbf6ed

    move-object/from16 v5, p7

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v2, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v5, v8, 0x6

    and-int/lit8 v9, v8, 0x30

    if-nez v9, :cond_2

    move-object/from16 v9, p1

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x20

    goto :goto_0

    :cond_1
    const/16 v10, 0x10

    :goto_0
    or-int/2addr v5, v10

    goto :goto_1

    :cond_2
    move-object/from16 v9, p1

    :goto_1
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x100

    goto :goto_2

    :cond_3
    const/16 v10, 0x80

    :goto_2
    or-int/2addr v5, v10

    :cond_4
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_6

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x800

    goto :goto_3

    :cond_5
    const/16 v10, 0x400

    :goto_3
    or-int/2addr v5, v10

    :cond_6
    and-int/lit16 v10, v8, 0x6000

    const/4 v11, 0x1

    if-nez v10, :cond_8

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x4000

    goto :goto_4

    :cond_7
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v5, v10

    :cond_8
    const/high16 v10, 0x30000

    and-int/2addr v10, v8

    if-nez v10, :cond_a

    move/from16 v10, p4

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v12, 0x10000

    :goto_5
    or-int/2addr v5, v12

    goto :goto_6

    :cond_a
    move/from16 v10, p4

    :goto_6
    const/high16 v12, 0x180000

    and-int/2addr v12, v8

    if-nez v12, :cond_c

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_b
    const/high16 v12, 0x80000

    :goto_7
    or-int/2addr v5, v12

    :cond_c
    const/high16 v12, 0xc00000

    and-int/2addr v12, v8

    if-nez v12, :cond_e

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x800000

    goto :goto_8

    :cond_d
    const/high16 v12, 0x400000

    :goto_8
    or-int/2addr v5, v12

    :cond_e
    const v12, 0x492493

    and-int/2addr v12, v5

    const v14, 0x492492

    if-eq v12, v14, :cond_f

    move v12, v11

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    :goto_9
    and-int/lit8 v14, v5, 0x1

    invoke-virtual {v15, v14, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_38

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v12, v4

    check-cast v12, Ljava/util/Collection;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v18, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_b

    :cond_10
    const/4 v11, 0x1

    goto :goto_a

    :cond_11
    const/16 v16, 0x0

    :goto_b
    move-object/from16 v11, v16

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    if-eqz v11, :cond_12

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-virtual {v14, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_12
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v11}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v11

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v32, v2

    const/4 v2, 0x0

    invoke-static {v11, v13, v15, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v11

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_37

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_13

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v33, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v34, v0

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    const/16 v10, 0x36

    invoke-static {v0, v12, v15, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v32, :cond_36

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v19, v14

    iget-boolean v14, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_14

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_14
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    invoke-static {v15, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v12, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v15, v5, v15, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "pdp_variationLabel_text"

    invoke-static {v15, v9, v8, v1, v0}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_15

    new-instance v2, Lyk0;

    const/16 v5, 0x14

    invoke-direct {v2, v5}, Lyk0;-><init>(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    invoke-static {v0, v12, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->o:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    shr-int/lit8 v2, v33, 0x3

    and-int/lit8 v29, v2, 0xe

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    move-object/from16 v22, v21

    const-wide/16 v20, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v27, v25

    const/16 v25, 0x0

    move-object/from16 v35, v26

    const/16 v26, 0x0

    move-wide/from16 v37, v8

    move v8, v12

    move-wide/from16 v11, v37

    move/from16 v37, v27

    move-object/from16 v27, v0

    move/from16 v0, v37

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v28

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v10, v13

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    goto :goto_e

    :cond_17
    const/4 v13, 0x0

    :goto_e
    check-cast v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    const/4 v9, 0x3

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    if-nez v13, :cond_18

    const v12, -0x6e8fbf8d

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v36, v2

    move v2, v9

    move-object v8, v10

    const/16 v0, 0x30

    goto/16 :goto_12

    :cond_18
    const v12, -0x6e8fbf8c

    invoke-static {v15, v12, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-virtual {v10, v12, v0, v5}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v12

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v16, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move/from16 v36, v2

    new-instance v2, Ls3;

    invoke-direct {v2, v8, v9}, Ls3;-><init>(Ljava/lang/Object;I)V

    const/4 v8, 0x0

    invoke-direct {v11, v0, v5, v2, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x30

    invoke-static {v11, v14, v15, v0}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v15, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_35

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_19

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_19
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x78e1b5f4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-nez v0, :cond_1a

    const v0, 0x5caaf775

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v8, v10

    move v9, v12

    goto :goto_11

    :cond_1a
    const/4 v12, 0x0

    const v2, 0x5caaf776

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-eqz v0, :cond_1b

    const v0, -0x4580e51

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object v8, v10

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->w:J

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_1b
    move-object v8, v10

    const v0, -0x4566c0f

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    invoke-static {v0, v11}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v15, v9, v10}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_1c

    if-ne v12, v4, :cond_1d

    :cond_1c
    new-instance v12, Lr5;

    const/4 v11, 0x7

    invoke-direct {v12, v9, v10, v11}, Lr5;-><init>(JI)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    invoke-static {v0, v12, v15, v9}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-static {v15, v9, v1}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const-string v9, "pdp_selectedVariationValue_text"

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static {v0, v9, v11, v10}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-object v9, v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->c:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    sget-object v13, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/text/style/TextAlign;->h:I

    sget-object v14, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v22, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v13}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v30, 0x6180

    const v31, 0x1abf8

    move-object/from16 v19, v14

    const-wide/16 v13, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    const/16 v18, 0x30

    const-wide/16 v16, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v23, v20

    const-wide/16 v20, 0x0

    move/from16 v24, v23

    const/16 v23, 0x0

    move/from16 v25, v24

    const/16 v24, 0x1

    move/from16 v26, v25

    const/16 v25, 0x0

    move/from16 v27, v26

    const/16 v26, 0x0

    const/16 v29, 0x0

    move/from16 v2, v27

    move-object/from16 v27, v0

    move v0, v2

    const/4 v2, 0x3

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v28

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v9, v9

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    sub-float/2addr v9, v10

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/high16 v11, 0x42800000    # 64.0f

    add-float/2addr v10, v11

    div-float v10, v9, v10

    float-to-int v10, v10

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v12

    const v18, 0xe000

    const/high16 v19, 0x1c00000

    if-le v12, v10, :cond_2b

    const v2, -0x3ee64c09

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    sub-float/2addr v9, v2

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v11}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v13, v11, v15, v0}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_2a

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_1e

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v16, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v10, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v17

    move/from16 v21, v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v17, :cond_1f

    if-ne v2, v4, :cond_20

    :cond_1f
    new-instance v2, Lhb;

    const/16 v6, 0x16

    invoke-direct {v2, v9, v6}, Lhb;-><init>(II)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-static {v12, v6, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v12}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    move-object/from16 v22, v8

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v12, v8, v15, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v8

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v15, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v32, :cond_29

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v23, v1

    iget-boolean v1, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_21

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_21
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    invoke-static {v15, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v15, v13, v15, v11}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v15, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x177f1a4a

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v0, v35

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    if-ltz v11, :cond_25

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    and-int v1, v33, v19

    const/high16 v5, 0x800000

    if-ne v1, v5, :cond_22

    const/4 v1, 0x1

    goto :goto_16

    :cond_22
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_23

    if-ne v6, v4, :cond_24

    :cond_23
    new-instance v6, Lg10;

    const/4 v1, 0x1

    invoke-direct {v6, v7, v10, v1}, Lg10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move/from16 v1, v16

    and-int v16, v36, v18

    const/16 v17, 0x1

    const/4 v9, 0x0

    move/from16 v13, p4

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;IZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move/from16 v16, v1

    move v11, v2

    goto :goto_15

    :cond_25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 v11, 0x0

    throw v11

    :cond_26
    move/from16 v1, v16

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v6, v23

    invoke-direct {v0, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v22

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0, v11, v5}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_28

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_27

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_27
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_17
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v33, 0xc

    and-int/lit16 v0, v0, 0x380

    move-object/from16 v8, p5

    move/from16 v2, v21

    invoke-static {v2, v1, v8, v15, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;->b(FILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v5, 0x1

    const/4 v12, 0x0

    invoke-static {v15, v5, v5, v12}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    goto/16 :goto_1b

    :cond_28
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v11, 0x0

    throw v11

    :cond_29
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_2a
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_2b
    move-object v8, v6

    move-object/from16 v0, v35

    const/high16 v5, 0x800000

    move-object v6, v1

    const v1, -0x3ecc4aaa

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v15, v1, v6, v11}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_2c

    if-ne v10, v4, :cond_2d

    :cond_2c
    new-instance v10, Lp6;

    invoke-direct {v10, v2, v0}, Lp6;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    invoke-static {v1, v12, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v2, v9, v15, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v32, :cond_34

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_2e

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_2e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x3b7c0f68

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    if-ltz v11, :cond_32

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    const-string v1, "pdp_variationImageItem_view"

    invoke-static {v6, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    and-int v1, v33, v19

    if-ne v1, v5, :cond_2f

    const/4 v1, 0x1

    goto :goto_1a

    :cond_2f
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v1, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_30

    if-ne v13, v4, :cond_31

    :cond_30
    new-instance v13, Lg10;

    const/4 v1, 0x2

    invoke-direct {v13, v7, v10, v1}, Lg10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object v14, v13

    check-cast v14, Lkotlin/jvm/functions/Function0;

    and-int v16, v36, v18

    const/16 v17, 0x0

    move/from16 v13, p4

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;IZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move v11, v2

    goto :goto_19

    :cond_32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 v11, 0x0

    throw v11

    :cond_33
    const/4 v5, 0x1

    const/4 v12, 0x0

    invoke-static {v15, v12, v5, v12}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    :goto_1b
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v1, v34

    goto :goto_1c

    :cond_34
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_35
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_36
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_37
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_38
    move-object v8, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_39

    new-instance v0, Lnm;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnm;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void
.end method
