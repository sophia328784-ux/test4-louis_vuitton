.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# static fields
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk40;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v7, p5

    const-string v1, "LVPushCard"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x2d8be6a4

    move-object/from16 v4, p4

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_1

    or-int/lit8 v4, v7, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v7

    goto :goto_1

    :cond_3
    move v4, v7

    :goto_1
    and-int/lit8 v6, p6, 0x2

    const/16 v8, 0x20

    if-eqz v6, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move/from16 v9, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_4

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v8

    goto :goto_2

    :cond_6
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :goto_3
    and-int/lit16 v10, v7, 0x180

    const/16 v11, 0x100

    if-nez v10, :cond_8

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v11

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    :cond_8
    and-int/lit16 v10, v7, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_5

    :cond_9
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v4, v12

    goto :goto_6

    :cond_a
    move-object/from16 v10, p3

    :goto_6
    and-int/lit16 v12, v4, 0x493

    const/16 v13, 0x492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_b

    move v12, v15

    goto :goto_7

    :cond_b
    move v12, v14

    :goto_7
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_12

    if-eqz v2, :cond_c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_c
    move-object v12, v0

    if-eqz v6, :cond_d

    move v2, v15

    goto :goto_8

    :cond_d
    move v2, v9

    :goto_8
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v0, v4, 0x70

    if-ne v0, v8, :cond_e

    move v0, v15

    goto :goto_9

    :cond_e
    move v0, v14

    :goto_9
    and-int/lit16 v1, v4, 0x380

    if-ne v1, v11, :cond_f

    move v1, v15

    goto :goto_a

    :cond_f
    move v1, v14

    :goto_a
    or-int/2addr v0, v1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_10

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_11

    :cond_10
    new-instance v1, Lb70;

    invoke-direct {v1, v2, v3, v14}, Lb70;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v15, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shl-int/lit8 v1, v4, 0x3

    const v4, 0xff80

    and-int v6, v1, v4

    const/4 v1, 0x0

    move-object v4, v10

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v12

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    move v2, v9

    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v0, Loh;

    const/4 v7, 0x2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Loh;-><init>(Landroidx/compose/ui/Modifier;ZLjava/lang/Object;Lkotlin/Function;III)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/layout/RowScope;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p5

    move/from16 v3, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x388bfeb4

    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    iget-object v4, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v8, v3, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_3
    and-int/lit8 v8, p9, 0x2

    if-eqz v8, :cond_4

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_4
    and-int/lit16 v9, v3, 0x180

    if-nez v9, :cond_7

    and-int/lit16 v9, v3, 0x200

    if-nez v9, :cond_5

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_3
    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v5, v9

    :cond_7
    :goto_5
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_9

    or-int/lit16 v5, v5, 0xc00

    :cond_8
    move-object/from16 v11, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v3, 0xc00

    if-nez v11, :cond_8

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v5, v12

    :goto_7
    and-int/lit16 v12, v3, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x4000

    goto :goto_8

    :cond_b
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v5, v13

    goto :goto_9

    :cond_c
    move-object/from16 v12, p4

    :goto_9
    const/high16 v13, 0x30000

    and-int/2addr v13, v3

    if-nez v13, :cond_e

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_d
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v5, v13

    :cond_e
    and-int/lit8 v13, p9, 0x20

    const/high16 v15, 0x180000

    if-eqz v13, :cond_10

    or-int/2addr v5, v15

    :cond_f
    move-object/from16 v15, p6

    goto :goto_c

    :cond_10
    and-int/2addr v15, v3

    if-nez v15, :cond_f

    move-object/from16 v15, p6

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_b

    :cond_11
    const/high16 v16, 0x80000

    :goto_b
    or-int v5, v5, v16

    :goto_c
    const v16, 0x92493

    and-int v7, v5, v16

    const v14, 0x92492

    move/from16 v17, v8

    const/4 v8, 0x0

    if-eq v7, v14, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    move v7, v8

    :goto_d
    and-int/lit8 v14, v5, 0x1

    invoke-virtual {v10, v14, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v19, 0x0

    if-eqz v17, :cond_13

    move-object/from16 v7, v19

    goto :goto_e

    :cond_13
    move-object v7, v0

    :goto_e
    if-eqz v9, :cond_14

    move-object/from16 v0, v19

    goto :goto_f

    :cond_14
    move-object v0, v11

    :goto_f
    if-eqz v13, :cond_15

    move-object/from16 v9, v19

    goto :goto_10

    :cond_15
    move-object v9, v15

    :goto_10
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v11, "LVPushCardContent"

    if-eqz v0, :cond_16

    const v13, -0x6b58f765

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v13, v5, 0x9

    and-int/lit8 v13, v13, 0xe

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v10, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 p2, v0

    move-object/from16 v31, v7

    move v3, v8

    move-object/from16 v30, v9

    move-object v0, v11

    goto/16 :goto_11

    :cond_16
    if-eqz v7, :cond_17

    const v13, -0x6b57e57b

    invoke-static {v10, v13, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v14, 0x42a00000    # 80.0f

    invoke-static {v13, v14}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v13, v14}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const-string v14, "pushCard_image"

    invoke-static {v13, v14}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v11

    sget-object v11, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0xe

    const/16 v17, 0x6038

    or-int v15, v17, v15

    const/high16 v17, 0x100000

    const/16 v16, 0x68

    move/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v21, v9

    move-object v9, v13

    const/4 v13, 0x0

    move-object/from16 p2, v0

    move-object v0, v14

    move/from16 v3, v20

    move-object/from16 v30, v21

    move-object/from16 v14, v22

    invoke-static/range {v7 .. v16}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v31, v7

    move-object v10, v14

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_17
    move-object/from16 p2, v0

    move-object/from16 v31, v7

    move v3, v8

    move-object/from16 v30, v9

    move-object v0, v11

    const v7, -0x6b53554a

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    invoke-interface {v1, v7, v8, v9}, Landroidx/compose/foundation/layout/RowScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v9}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v11, v10, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    iget-wide v11, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v10, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_22

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_18

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v9, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v15, v0, v8}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v1, 0x36

    invoke-static {v8, v3, v10, v1}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    move-object v8, v4

    iget-wide v3, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v10, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v8, :cond_21

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_19

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_19
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v10, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v10, v12, v10, v11}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v1, "pushCard_title_text"

    invoke-static {v10, v7, v15, v0, v1}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v1, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->c:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;

    move-object/from16 v22, v10

    iget-wide v9, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->e:J

    iget v4, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->b:I

    sget-object v7, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v16, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v27, v7, 0xe

    const/16 v28, 0x180

    const v29, 0x1aff8

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move/from16 v20, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v1

    move v1, v7

    move-object/from16 v26, v22

    move-object/from16 v7, p4

    move/from16 v22, v4

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v26

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;->Service:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;

    const/16 v13, 0xf

    if-ne v3, v4, :cond_1e

    move-object/from16 v9, v30

    if-eqz v9, :cond_1d

    const v4, 0x385b3844

    invoke-static {v10, v4, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    const/high16 v7, 0x380000

    and-int/2addr v7, v5

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_1a

    const/4 v8, 0x1

    goto :goto_14

    :cond_1a
    const/4 v8, 0x0

    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v8, :cond_1b

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_1c

    :cond_1b
    new-instance v7, Llt;

    invoke-direct {v7, v9, v13}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "pushCard_tag_view"

    const/4 v11, 0x2

    invoke-static {v4, v8, v7, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    and-int/lit16 v11, v1, 0x380

    const/16 v12, 0x1a

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v30, v9

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    const/4 v9, 0x1

    goto :goto_16

    :cond_1d
    move-object/from16 v30, v9

    :cond_1e
    const/4 v1, 0x0

    const v4, 0x385f535c

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :goto_16
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-nez v6, :cond_1f

    const v4, 0xa77eadb

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v2, v1

    move-object v1, v3

    :goto_17
    const/4 v9, 0x1

    goto :goto_18

    :cond_1f
    const v4, 0xa77eadc

    const-string v7, "pushCard_description_text"

    invoke-static {v10, v4, v0, v7}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v7, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->d:Landroidx/compose/ui/text/TextStyle;

    move v8, v5

    iget-wide v5, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;->f:J

    shr-int/2addr v8, v13

    and-int/lit8 v23, v8, 0xe

    const/16 v24, 0x6180

    const v25, 0x1aff8

    move-object/from16 v21, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v22, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move/from16 v16, v20

    const/16 v20, 0x0

    move v2, v1

    move-object v1, v3

    move-object/from16 v3, p5

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v22

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :goto_18
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;->Content:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;

    if-ne v1, v3, :cond_20

    const v1, -0x6b3bfc1a

    invoke-static {v10, v1, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v0, v10, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    const/16 v11, 0x38

    const/16 v12, 0x8

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_20
    const v0, -0x6b38d80a

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move-object/from16 v4, p2

    move-object/from16 v7, v30

    move-object/from16 v3, v31

    goto :goto_1a

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_23
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v3, v0

    move-object v4, v11

    move-object v7, v15

    :goto_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_24

    new-instance v0, Lgf;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lgf;-><init>(Landroidx/compose/foundation/layout/RowScope;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    const-string v1, "LVPushCardInternal"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x339f33d4

    move-object/from16 v7, p5

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v7, v6, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    and-int/lit8 v8, v6, 0x30

    if-nez v8, :cond_3

    or-int/lit8 v7, v7, 0x10

    :cond_3
    and-int/lit16 v8, v6, 0x180

    const/16 v9, 0x100

    if-nez v8, :cond_5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v7, v8

    :cond_5
    and-int/lit16 v8, v6, 0xc00

    const/16 v10, 0x800

    if-nez v8, :cond_7

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v10

    goto :goto_3

    :cond_6
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v7, v8

    :cond_7
    and-int/lit16 v8, v6, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_4

    :cond_8
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v7, v8

    :cond_9
    and-int/lit16 v8, v7, 0x2493

    const/16 v11, 0x2492

    const/4 v13, 0x1

    if-eq v8, v11, :cond_a

    move v8, v13

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    and-int/lit8 v11, v7, 0x1

    invoke-virtual {v2, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v8, v6, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v7, v7, -0x71

    move-object/from16 v8, p1

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-direct {v8, v14, v15, v12, v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;-><init>(JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit8 v7, v7, -0x71

    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v14, :cond_d

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v15, v8, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;->b:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p5, v11

    and-int/lit16 v11, v7, 0x380

    if-ne v11, v9, :cond_e

    move v9, v13

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_8
    and-int/lit16 v11, v7, 0x1c00

    if-ne v11, v10, :cond_f

    move v10, v13

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    or-int/2addr v9, v10

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_10

    if-ne v10, v14, :cond_11

    :cond_10
    new-instance v10, Lgq;

    invoke-direct {v10, v3, v4, v13}, Lgq;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v9, v7, 0xe

    const/16 v11, 0x30

    or-int/2addr v9, v11

    invoke-static {v0, v12, v10, v2, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v10, 0x6

    if-eqz v3, :cond_12

    const v12, 0x4b99c77d    # 2.0156154E7f

    invoke-static {v2, v12, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v12, v10

    invoke-static {v1, v4, v2, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_12
    const/4 v12, 0x0

    const v14, 0x4b9b149e    # 2.0326716E7f

    invoke-static {v2, v14, v12, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    :goto_a
    invoke-interface {v9, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v15}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-wide v13, v8, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;->a:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v13, v14, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-static {v1, v9, v12, v13, v15}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v9, v12, v2, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v14, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v14, :cond_14

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_13

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v9, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v7, 0x9

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-interface {v5, v7, v2, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p5

    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v8, p1

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    move-object v1, v0

    new-instance v0, Lj8;

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lj8;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
