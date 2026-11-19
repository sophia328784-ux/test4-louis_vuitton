.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationContainerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationContainerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "displayEmptyPadding",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    move-object/from16 v15, p10

    move-object/from16 v6, p11

    const-string v7, "PdpVariationContainer-4pSRD38"

    if-eqz v0, :cond_0

    invoke-static {v0, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x5827aa39

    move-object/from16 v9, p12

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v8, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int v9, p13, v9

    move-object/from16 v14, p1

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x10

    if-eqz v16, :cond_2

    const/16 v16, 0x20

    goto :goto_1

    :cond_2
    move/from16 v16, v17

    :goto_1
    or-int v9, v9, v16

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x100

    goto :goto_2

    :cond_3
    const/16 v16, 0x80

    :goto_2
    or-int v9, v9, v16

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x800

    goto :goto_3

    :cond_4
    const/16 v16, 0x400

    :goto_3
    or-int v9, v9, v16

    if-nez v5, :cond_5

    const/16 v16, -0x1

    :goto_4
    move/from16 v11, v16

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    goto :goto_4

    :goto_5
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x4000

    goto :goto_6

    :cond_6
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v9, v11

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x20000

    goto :goto_7

    :cond_7
    const/high16 v11, 0x10000

    :goto_7
    or-int/2addr v9, v11

    move-object/from16 v11, p6

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_8
    const/high16 v16, 0x80000

    :goto_8
    or-int v9, v9, v16

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x400000

    :goto_9
    or-int v9, v9, v16

    move/from16 v16, v9

    move-object/from16 v9, p8

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/high16 v18, 0x4000000

    goto :goto_a

    :cond_a
    const/high16 v18, 0x2000000

    :goto_a
    or-int v16, v16, v18

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000000

    goto :goto_b

    :cond_b
    const/high16 v18, 0x10000000

    :goto_b
    or-int v29, v16, v18

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4

    goto :goto_c

    :cond_c
    const/16 v16, 0x2

    :goto_c
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v17, 0x20

    :cond_d
    or-int v26, v16, v17

    const v16, 0x12492493

    and-int v13, v29, v16

    const v1, 0x12492492

    const/4 v9, 0x1

    if-ne v13, v1, :cond_f

    and-int/lit8 v1, v26, 0x13

    const/16 v13, 0x12

    if-eq v1, v13, :cond_e

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    move v1, v9

    :goto_e
    and-int/lit8 v13, v29, 0x1

    invoke-virtual {v12, v13, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v13, :cond_13

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    move v1, v9

    goto :goto_10

    :cond_11
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    if-gt v14, v9, :cond_12

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v0, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, -0x50182167

    const/4 v9, 0x0

    invoke-static {v12, v1, v9, v7}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    move-object/from16 v30, v0

    goto :goto_11

    :cond_14
    const/4 v9, 0x0

    const v1, -0x50174902

    invoke-static {v12, v1, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    move-object/from16 v30, v0

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v9, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v1, v3, v12, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v3, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v8, :cond_44

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    const/16 v31, 0x0

    iget-boolean v14, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_15

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x7b52b3f6

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v3, 0x9

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationContainerKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v14, v9

    const/4 v14, 0x1

    if-eq v9, v14, :cond_30

    const v14, 0x36000

    const/4 v4, 0x2

    const/high16 v16, 0x70000000

    if-eq v9, v4, :cond_28

    const/4 v3, 0x3

    if-eq v9, v3, :cond_20

    const/4 v3, 0x4

    if-eq v9, v3, :cond_1b

    const/4 v3, 0x5

    if-eq v9, v3, :cond_16

    const v1, 0x4daacb23    # 3.58179936E8f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_16
    const v3, 0x4da26999    # 3.4060368E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    if-le v3, v14, :cond_1a

    const v3, 0x4da335e2    # 3.42277184E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v3, 0x7f141041

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/util/List;

    and-int v1, v29, v16

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_17

    const/4 v1, 0x1

    goto :goto_14

    :cond_17
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_18

    if-ne v3, v13, :cond_19

    :cond_18
    new-instance v3, Ll3;

    const/16 v1, 0xc

    invoke-direct {v3, v1, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v1, v1, 0xc00

    const/16 v24, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p1

    move/from16 v23, v1

    move-object/from16 v22, v12

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_1a
    const/4 v9, 0x0

    const v1, 0x4daa1a38    # 3.56730624E8f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_1b
    const v3, 0x4d994eaa    # 3.21508672E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    if-le v3, v14, :cond_1f

    if-eqz p2, :cond_1f

    const v3, 0x4d9a6607    # 3.23797216E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v3, 0x7f14103d

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/util/List;

    and-int v1, v29, v16

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_16

    :cond_1c
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1d

    if-ne v3, v13, :cond_1e

    :cond_1d
    new-instance v3, Ll3;

    const/16 v1, 0xb

    invoke-direct {v3, v1, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v1, v1, 0xc00

    const/16 v24, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p1

    move/from16 v23, v1

    move-object/from16 v22, v12

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_1f
    const/4 v9, 0x0

    const v1, 0x4da13798

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_20
    const v3, 0x4d8c9310

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_27

    const v3, 0x4d8d5f59    # 2.9647952E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v3, 0x7f141042

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/List;

    and-int/lit8 v3, v26, 0x70

    const/16 v9, 0x20

    if-ne v3, v9, :cond_21

    const/4 v3, 0x1

    goto :goto_18

    :cond_21
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_22

    if-ne v4, v13, :cond_23

    :cond_22
    new-instance v4, Lym0;

    const/4 v3, 0x1

    invoke-direct {v4, v6, v1, v3}, Lym0;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/Map$Entry;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v21, v4

    check-cast v21, Lkotlin/jvm/functions/Function0;

    and-int v1, v29, v16

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_24

    const/4 v1, 0x1

    goto :goto_19

    :cond_24
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_25

    if-ne v3, v13, :cond_26

    :cond_25
    new-instance v3, Ll3;

    const/16 v1, 0xa

    invoke-direct {v3, v1, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v22, v3

    check-cast v22, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v24, v1, v14

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, p1

    move-object/from16 v23, v12

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    const/16 v9, 0x20

    const v3, 0x4d982678    # 3.1908224E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v9, v1

    goto/16 :goto_13

    :cond_28
    const/16 v9, 0x20

    const v4, 0x4d7fda9c    # 2.68282304E8f

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_2f

    const v4, 0x4d80a6e5    # 2.69802656E8f

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v4, 0x7f14103e

    invoke-static {v12, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljava/util/List;

    and-int/lit8 v4, v26, 0xe

    const/4 v9, 0x4

    if-ne v4, v9, :cond_29

    const/4 v4, 0x1

    goto :goto_1b

    :cond_29
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v4, v4, v18

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_2a

    if-ne v9, v13, :cond_2b

    :cond_2a
    new-instance v9, Lym0;

    const/4 v4, 0x0

    invoke-direct {v9, v15, v1, v4}, Lym0;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/Map$Entry;I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v21, v9

    check-cast v21, Lkotlin/jvm/functions/Function0;

    and-int v1, v29, v16

    const/high16 v4, 0x20000000

    if-ne v1, v4, :cond_2c

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_2d

    if-ne v4, v13, :cond_2e

    :cond_2d
    new-instance v4, Ll3;

    invoke-direct {v4, v3, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v22, v4

    check-cast v22, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v24, v1, v14

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v18, p1

    move-object/from16 v23, v12

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationImageListKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_2f
    const/4 v9, 0x0

    const v1, 0x4d8b40f8    # 2.92036352E8f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_30
    const/high16 v16, 0x70000000

    const v3, 0x4d76ec7b    # 2.5891832E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_34

    const v3, 0x4d77de4e    # 2.59908832E8f

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v3, 0x7f1403de

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/util/List;

    and-int v1, v29, v16

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_31

    const/4 v9, 0x1

    goto :goto_1e

    :cond_31
    const/4 v9, 0x0

    :goto_1e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_32

    if-ne v1, v13, :cond_33

    :cond_32
    new-instance v1, Ll3;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v1, v1, 0xc00

    const/16 v24, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p1

    move/from16 v23, v1

    move-object/from16 v22, v12

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_34
    const/4 v9, 0x0

    const v1, 0x4d7e9598    # 2.6695104E8f

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_35
    const/4 v9, 0x0

    const/high16 v16, 0x70000000

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v10, :cond_43

    if-eqz v5, :cond_43

    const v0, -0x10c4c5be

    invoke-static {v12, v0, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v1, v4, v12, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 p0, v3

    iget-wide v3, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v8, :cond_42

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_36

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    :cond_36
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_20
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x6a4834df

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const v1, 0x7f141045

    const/16 v3, 0xe

    if-ne v5, v0, :cond_3a

    const v0, 0x77cb3743

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v0, v7

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    and-int v1, v29, v16

    const/high16 v4, 0x20000000

    if-ne v1, v4, :cond_37

    const/4 v1, 0x1

    goto :goto_21

    :cond_37
    move v1, v9

    :goto_21
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_38

    if-ne v4, v13, :cond_39

    :cond_38
    new-instance v4, Ll3;

    const/16 v1, 0xd

    invoke-direct {v4, v1, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_39
    check-cast v4, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v13, v1, 0xc00

    const/4 v14, 0x1

    const/4 v6, 0x0

    move/from16 v28, v9

    const/4 v9, 0x1

    move-object/from16 v8, p1

    move-object v11, v4

    move/from16 v1, v28

    move-object v4, v0

    const/4 v0, 0x1

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :cond_3a
    move-object v4, v7

    move/from16 v28, v9

    const/4 v0, 0x1

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MODEL_SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    if-ne v5, v6, :cond_3e

    const v6, 0x77d2f41d

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    and-int v1, v29, v16

    const/high16 v6, 0x20000000

    if-ne v1, v6, :cond_3b

    move v9, v0

    goto :goto_22

    :cond_3b
    move/from16 v9, v28

    :goto_22
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_3c

    if-ne v1, v13, :cond_3d

    :cond_3c
    new-instance v1, Ll3;

    invoke-direct {v1, v3, v2}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3d
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/lit16 v13, v1, 0xc00

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p5

    move/from16 v1, v28

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :cond_3e
    move/from16 v1, v28

    const v6, 0x77d998a2

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_23
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p7, :cond_40

    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_24

    :cond_3f
    const v6, -0x21303aab

    invoke-static {v12, v6, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v6

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    shr-int/lit8 v10, v29, 0x15

    and-int/lit8 v26, v10, 0xe

    const/16 v27, 0x0

    const v28, 0x1fff8

    const-wide/16 v10, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v24, v6

    move-object/from16 v6, p7

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v25

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_25

    :cond_40
    :goto_24
    const v3, -0x212a9abe

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_25
    if-eqz p3, :cond_41

    const v3, -0x2129b8e7

    invoke-static {v12, v3, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v8, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v4, "pdp_sizeGuide_button"

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v3, 0x7f14122f

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const/high16 v3, 0x70000

    shr-int/lit8 v4, v29, 0x9

    and-int v16, v4, v3

    const/16 v17, 0x1c

    const/4 v11, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p8

    move-object/from16 v15, v22

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v15

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :cond_41
    const v3, -0x21237d7e

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_27

    :cond_42
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_43
    move v1, v9

    const/4 v0, 0x1

    const v3, -0x10a4254d

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_27
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_28

    :cond_44
    const/16 v31, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_45
    move-object/from16 v30, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_28
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_46

    new-instance v0, Lzm0;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object v10, v2

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v13}, Lzm0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_46
    return-void
.end method
