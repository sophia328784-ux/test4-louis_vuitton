.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlinx/collections/immutable/ImmutableList;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    if-eqz v0, :cond_0

    const-string v1, "PdpProductServices"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x375ab848

    move-object/from16 v6, p10

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p11, v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v0, v6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x800

    goto :goto_3

    :cond_4
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x4000

    goto :goto_4

    :cond_5
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    move-object/from16 v6, p5

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v7, 0x10000

    :goto_5
    or-int/2addr v0, v7

    move-object/from16 v7, p6

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v8, 0x80000

    :goto_6
    or-int/2addr v0, v8

    move-object/from16 v8, p7

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v11, 0x400000

    :goto_7
    or-int/2addr v0, v11

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/high16 v11, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v11, 0x2000000

    :goto_8
    or-int/2addr v0, v11

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v11, 0x10000000

    :goto_9
    or-int/2addr v0, v11

    const v11, 0x12492493

    and-int/2addr v11, v0

    const v14, 0x12492492

    const/4 v12, 0x0

    if-eq v11, v14, :cond_b

    const/4 v11, 0x1

    goto :goto_a

    :cond_b
    move v11, v12

    :goto_a
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v15, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_24

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    const/16 v20, 0x1

    goto :goto_b

    :cond_c
    move/from16 v20, v12

    :goto_b
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v11}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v11

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v11, v14, v15, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v11

    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v1

    iget-object v1, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v23, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v1, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_d

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v14, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0xb06e111

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v24, v1, 0x1

    if-ltz v1, :cond_13

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$AR;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$AR;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/high16 v13, 0x70000

    if-eqz v12, :cond_e

    const v11, 0x123f63c1

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v11, 0x7f14104a

    invoke-static {v15, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f141049

    invoke-static {v15, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    and-int v18, v21, v13

    const/16 v19, 0x18

    move-object v13, v12

    const v12, 0x7f08024a

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/high16 v25, 0x20000000

    const/4 v15, 0x0

    move-object/from16 p0, v0

    move-object/from16 v16, v6

    move/from16 v0, v25

    const/16 p10, 0x1

    const/4 v6, 0x0

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_e
    move-object/from16 p0, v0

    const/16 p10, 0x1

    const/high16 v0, 0x20000000

    const/4 v6, 0x0

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$ConnectedObject;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$ConnectedObject;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const v11, 0x12465afb

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v11, 0x7f140b9e

    invoke-static {v15, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f140b9d

    invoke-static {v15, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    shr-int/lit8 v14, v21, 0x6

    and-int v18, v14, v13

    const/16 v19, 0x18

    move-object v13, v12

    const v12, 0x7f080268

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v16, v8

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_f
    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$TrunkSpeaker;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$TrunkSpeaker;

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const v8, 0x124d591c

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v8, 0x7f141274

    invoke-static {v15, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    shr-int/lit8 v8, v21, 0x3

    and-int/2addr v8, v13

    or-int/lit16 v8, v8, 0x180

    const/16 v19, 0x18

    const v12, 0x7f08037c

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v16, v7

    move/from16 v18, v8

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_11

    if-eqz v5, :cond_10

    goto :goto_f

    :cond_10
    const v1, 0x1256dc6d

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_11
    :goto_f
    const v1, 0x1253d35e

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v11, 0x0

    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v1, v24

    goto/16 :goto_d

    :cond_12
    const v0, 0x7c75a178

    invoke-static {v15, v0, v6}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v23

    :cond_14
    const/16 p10, 0x1

    const/high16 v0, 0x20000000

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v5, :cond_15

    const v0, -0x55bb6f46

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_15

    :cond_15
    const v7, -0x55bb6f45

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v7, -0xb060958

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v24, v8, 0x1

    if-ltz v8, :cond_1b

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    move-object v14, v13

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const/high16 v16, 0x70000000

    and-int v2, v21, v16

    if-ne v2, v0, :cond_16

    move/from16 v2, p10

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v2, v2, v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_17

    if-ne v0, v1, :cond_18

    :cond_17
    new-instance v0, Ljm0;

    const/4 v2, 0x5

    invoke-direct {v0, v10, v11, v2}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v12

    const v12, 0x7f08035b

    move-object/from16 v17, v15

    move-object v15, v14

    move-object v14, v6

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v8, v0, :cond_1a

    if-eqz v20, :cond_19

    goto :goto_13

    :cond_19
    const v0, 0x42378b0b

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1a
    :goto_13
    const v0, 0x423436e8

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v11, 0x0

    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    move/from16 v2, p1

    move/from16 v8, v24

    const/high16 v0, 0x20000000

    goto/16 :goto_11

    :cond_1b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v23

    :cond_1c
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    if-eqz v20, :cond_22

    const v0, -0x55aee668

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->c:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_1d
    if-nez v23, :cond_1e

    const-string v23, ""

    :cond_1e
    move-object/from16 v13, v23

    const/high16 v0, 0xe000000

    and-int v0, v21, v0

    const/high16 v2, 0x4000000

    if-ne v0, v2, :cond_1f

    move/from16 v12, p10

    goto :goto_16

    :cond_1f
    const/4 v12, 0x0

    :goto_16
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_21

    if-ne v2, v1, :cond_20

    goto :goto_17

    :cond_20
    const/4 v6, 0x0

    goto :goto_18

    :cond_21
    :goto_17
    new-instance v2, Lwm0;

    const/4 v6, 0x0

    invoke-direct {v2, v9, v3, v6}, Lwm0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_18
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    const/16 v19, 0x18

    const v12, 0x7f08035a

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move/from16 v0, p10

    goto :goto_1a

    :cond_22
    const/4 v6, 0x0

    const v0, -0x55aa081c

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :goto_1a
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1b

    :cond_23
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v23

    :cond_24
    move-object/from16 v22, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_25

    new-instance v0, La90;

    move/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p11

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v11}, La90;-><init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlinx/collections/immutable/ImmutableList;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method

.method public static final b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 41

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p7

    const v1, 0x4ab9ab4a    # 6084005.0f

    move-object/from16 v4, p6

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    iget-object v1, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v5, v0

    :goto_1
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v5, v5, 0xc00

    :cond_6
    move-object/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_6

    move-object/from16 v7, p3

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v5, v9

    :goto_5
    and-int/lit16 v9, v0, 0x6000

    if-nez v9, :cond_b

    and-int/lit8 v9, p8, 0x10

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_6

    :cond_9
    move-object/from16 v9, p4

    :cond_a
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v5, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p4

    :goto_7
    const/high16 v10, 0x30000

    and-int/2addr v10, v0

    move-object/from16 v15, p5

    if-nez v10, :cond_d

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v10, 0x10000

    :goto_8
    or-int/2addr v5, v10

    :cond_d
    const v10, 0x12493

    and-int/2addr v10, v5

    const v11, 0x12492

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v10, v11, :cond_e

    move v10, v12

    goto :goto_9

    :cond_e
    move v10, v13

    :goto_9
    and-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v10, v0, 0x1

    const v11, -0xe001

    const/4 v14, 0x0

    if-eqz v10, :cond_11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_10

    and-int/2addr v5, v11

    :cond_10
    move/from16 v17, v5

    move-object v5, v7

    move-object/from16 v22, v9

    goto :goto_b

    :cond_11
    :goto_a
    if-eqz v6, :cond_12

    move-object v7, v14

    :cond_12
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_10

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    and-int/2addr v5, v11

    move/from16 v17, v5

    move-object/from16 v22, v6

    move-object v5, v7

    :goto_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "ProductServiceItem"

    invoke-direct {v11, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v7, v14

    const/4 v14, 0x0

    const/16 v16, 0xf

    move v9, v12

    const/4 v12, 0x0

    move v10, v13

    const/4 v13, 0x0

    move/from16 v40, v9

    move-object v9, v7

    move/from16 v7, v40

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const-string v12, "pdp_productServiceContainer_button"

    invoke-static {v11, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    const/16 v14, 0x30

    invoke-static {v13, v12, v8, v14}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v12

    iget-wide v13, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v8, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_19

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_13

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 p4, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v11, 0x7f080088

    if-eqz v5, :cond_15

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v7, :cond_14

    const v10, -0x63d239be

    invoke-static {v8, v10, v6}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v10

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->z:F

    invoke-static {v10, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v7, v10}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const/4 v10, 0x0

    invoke-static {v11, v8, v10}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v24

    sget-object v7, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v26, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/16 v28, 0x0

    const/16 v29, 0x36

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object v11, v15

    const/4 v15, 0x0

    const/16 v16, 0x7fc

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    move-object/from16 v23, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    const/4 v9, 0x0

    move/from16 v21, v10

    const/4 v10, 0x0

    move-object/from16 v24, v11

    const/4 v11, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move-object/from16 v26, v13

    const/4 v13, 0x0

    move-object/from16 v18, v1

    move-object/from16 v30, v14

    move-object/from16 v3, v19

    move-object/from16 v32, v20

    move/from16 v1, v21

    move-object/from16 v14, v23

    move-object/from16 v0, v24

    move-object/from16 v31, v26

    invoke-static/range {v4 .. v16}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v28, v5

    move-object v8, v14

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_f

    :cond_14
    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_d
    move-object/from16 v28, v5

    move-object v3, v6

    move-object/from16 v32, v9

    move-object/from16 v25, v12

    move-object/from16 v31, v13

    move-object/from16 v30, v14

    move-object v0, v15

    goto :goto_e

    :cond_15
    move-object/from16 v18, v1

    move v1, v10

    goto :goto_d

    :goto_e
    const v4, -0x63cad452

    invoke-static {v8, v4, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->z:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v4, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v33

    invoke-static {v11, v8, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v34

    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v36, Landroidx/compose/ui/layout/ContentScale$Companion;->e:Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    const/16 v38, 0x0

    const/16 v39, 0x36

    const/16 v35, 0x0

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v5, "pdp_productServiceContainer_image"

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    shr-int/lit8 v4, v17, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v2, v8, v4}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    const/16 v12, 0x38

    const/16 v13, 0x78

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v23, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, v23

    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v11

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v9, 0x36

    invoke-static {v5, v7, v8, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v8, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v18, :cond_18

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_16

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_10
    move-object/from16 v0, p4

    goto :goto_11

    :cond_16
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_10

    :goto_11
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v25

    invoke-static {v8, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v30

    move-object/from16 v5, v31

    invoke-static {v7, v8, v0, v8, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "pdp_productServiceContainerTitle_text"

    move-object/from16 v5, v32

    invoke-static {v8, v4, v5, v3, v0}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    and-int/lit8 v24, v17, 0xe

    shl-int/lit8 v0, v17, 0x9

    const/high16 v4, 0x1c00000

    and-int v25, v0, v4

    const v26, 0x1fff8

    move/from16 v27, v6

    move-object/from16 v23, v8

    move-wide v6, v9

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v22

    move-object/from16 v8, v23

    if-nez p2, :cond_17

    const v4, 0x2af071be

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 p3, v0

    move-object v2, v3

    move/from16 v0, v27

    goto :goto_12

    :cond_17
    const v4, 0x2af071bf

    invoke-static {v8, v4, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->e:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v5, "pdp_productServiceContainerDescription_text"

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v24, 0x0

    const v25, 0x1fff8

    move-object/from16 v21, v5

    move-wide v5, v6

    move-object/from16 v23, v8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v23

    const/16 v23, 0x0

    move-object/from16 p3, v0

    move-object v2, v3

    move/from16 v0, v27

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v22

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    invoke-static {v8, v0, v2}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v2, v8, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v5, p3

    move-object/from16 v4, v28

    goto :goto_13

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v7, 0x0

    throw v7

    :cond_19
    move-object v7, v9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_1a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v4, v7

    move-object v5, v9

    :goto_13
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1b

    new-instance v0, Ltt;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ltt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
