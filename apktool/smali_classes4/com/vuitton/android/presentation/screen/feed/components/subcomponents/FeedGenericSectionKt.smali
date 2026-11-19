.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u00a8\u0006\u0005\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "shouldTrackCarouselLMultiSwipe",
        "shouldTrackCarouselLSingleSwipe",
        "shouldTrackCarouselMSwipe",
        "hasTrackedMostPurchasedWithView",
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
.method public static final a(Landroid/content/Context;ILcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/runtime/Composer;II)V
    .locals 43

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 v11, p6

    move-object/from16 v5, p8

    move-object/from16 v13, p12

    move-object/from16 v10, p13

    move-object/from16 v12, p15

    move-object/from16 v14, p17

    move-object/from16 v3, p19

    move/from16 v15, p22

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x2b237291

    move-object/from16 v4, p20

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p21, v4

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    const/16 v16, 0x10

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_1

    :cond_1
    move/from16 v9, v16

    :goto_1
    or-int/2addr v4, v9

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    const/16 v17, 0x400

    if-eqz v9, :cond_2

    const/16 v9, 0x800

    goto :goto_2

    :cond_2
    move/from16 v9, v17

    :goto_2
    or-int/2addr v4, v9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    const/16 v19, 0x2000

    if-eqz v9, :cond_3

    const/16 v9, 0x4000

    goto :goto_3

    :cond_3
    move/from16 v9, v19

    :goto_3
    or-int/2addr v4, v9

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    const/high16 v22, 0x10000

    if-eqz v21, :cond_4

    const/high16 v21, 0x20000

    goto :goto_4

    :cond_4
    move/from16 v21, v22

    :goto_4
    or-int v4, v4, v21

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v24, 0x80000

    if-eqz v21, :cond_5

    const/high16 v21, 0x100000

    goto :goto_5

    :cond_5
    move/from16 v21, v24

    :goto_5
    or-int v4, v4, v21

    and-int/lit16 v8, v15, 0x80

    const/high16 v26, 0x400000

    const/high16 v27, 0xc00000

    if-eqz v8, :cond_6

    or-int v4, v4, v27

    move/from16 v7, p7

    goto :goto_7

    :cond_6
    and-int v27, p21, v27

    move/from16 v7, p7

    if-nez v27, :cond_8

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v29

    if-eqz v29, :cond_7

    const/high16 v29, 0x800000

    goto :goto_6

    :cond_7
    move/from16 v29, v26

    :goto_6
    or-int v4, v4, v29

    :cond_8
    :goto_7
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v29

    const/high16 v30, 0x2000000

    if-eqz v29, :cond_9

    const/high16 v29, 0x4000000

    goto :goto_8

    :cond_9
    move/from16 v29, v30

    :goto_8
    or-int v4, v4, v29

    and-int/lit16 v0, v15, 0x200

    const/high16 v31, 0x10000000

    const/high16 v32, 0x20000000

    const/high16 v33, 0x30000000

    if-eqz v0, :cond_a

    or-int v4, v4, v33

    move/from16 v34, v0

    move-object/from16 v0, p9

    :goto_9
    move/from16 v35, v4

    move-object/from16 v4, p10

    goto :goto_b

    :cond_a
    move/from16 v34, v0

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    move/from16 v35, v32

    goto :goto_a

    :cond_b
    move/from16 v35, v31

    :goto_a
    or-int v4, v4, v35

    goto :goto_9

    :goto_b
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    const/16 v36, 0x4

    goto :goto_c

    :cond_c
    const/16 v36, 0x2

    :goto_c
    and-int/lit16 v0, v15, 0x800

    move/from16 v37, v0

    const/16 v0, 0x30

    if-eqz v37, :cond_d

    or-int/lit8 v16, v36, 0x30

    move/from16 v38, v0

    move-object/from16 v0, p11

    goto :goto_d

    :cond_d
    move/from16 v38, v0

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    const/16 v16, 0x20

    :cond_e
    or-int v16, v36, v16

    :goto_d
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    const/16 v36, 0x100

    goto :goto_e

    :cond_f
    const/16 v36, 0x80

    :goto_e
    or-int v16, v16, v36

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    const/16 v17, 0x800

    :cond_10
    or-int v0, v16, v17

    and-int/lit16 v4, v15, 0x4000

    if-eqz v4, :cond_11

    or-int/lit16 v0, v0, 0x6000

    move/from16 v16, v0

    move-object/from16 v0, p14

    goto :goto_f

    :cond_11
    move/from16 v16, v0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v19, 0x4000

    :cond_12
    or-int v16, v16, v19

    :goto_f
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v22, 0x20000

    :cond_13
    or-int v16, v16, v22

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v24, 0x100000

    :cond_14
    or-int v16, v16, v24

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v26, 0x800000

    :cond_15
    or-int v16, v16, v26

    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v30, 0x4000000

    :cond_16
    or-int v16, v16, v30

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move/from16 v31, v32

    :cond_17
    or-int v0, v16, v31

    const v16, 0x12492493

    move/from16 v17, v4

    and-int v4, v35, v16

    const v6, 0x12492492

    const/4 v11, 0x0

    if-ne v4, v6, :cond_19

    and-int v4, v0, v16

    if-eq v4, v6, :cond_18

    goto :goto_10

    :cond_18
    move v4, v11

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v4, 0x1

    :goto_11
    and-int/lit8 v6, v35, 0x1

    invoke-virtual {v2, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_bd

    if-eqz v8, :cond_1a

    move/from16 v24, v11

    goto :goto_12

    :cond_1a
    move/from16 v24, v7

    :goto_12
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v34, :cond_1c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1b

    new-instance v6, Ltx;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ltx;-><init>(I)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1b
    const/4 v7, 0x2

    :goto_13
    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v23, v6

    goto :goto_14

    :cond_1c
    const/4 v7, 0x2

    move-object/from16 v23, p9

    :goto_14
    const/4 v6, 0x3

    if-eqz v37, :cond_1e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_1d

    new-instance v8, Ltx;

    invoke-direct {v8, v6}, Ltx;-><init>(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v26, v8

    goto :goto_15

    :cond_1e
    move-object/from16 v26, p11

    :goto_15
    if-eqz v17, :cond_20

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_1f

    new-instance v8, Liv;

    const/16 v6, 0x1b

    invoke-direct {v8, v6}, Liv;-><init>(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v6

    goto :goto_16

    :cond_20
    move-object/from16 v22, p14

    :goto_16
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const/high16 v16, 0x70000

    const/high16 v17, 0xe000000

    const/high16 p9, 0x380000

    const-string v8, "FeedGenericSection"

    if-eqz v6, :cond_3d

    const v6, 0xfef66a5

    invoke-static {v2, v6, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    const/16 p11, 0x0

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v21, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v9

    invoke-static {v7, v9, v2, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p14, v9

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v21

    if-eqz v21, :cond_3c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v21

    if-eqz v21, :cond_21

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_21
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_17
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v2, v11, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v2, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_22

    const v6, -0x44ede491

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_18

    :cond_22
    const v6, -0x44ead03f

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_18
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int v11, v35, v17

    const/high16 v7, 0x4000000

    if-ne v11, v7, :cond_23

    const/4 v7, 0x1

    goto :goto_19

    :cond_23
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_24

    if-ne v8, v4, :cond_25

    :cond_24
    new-instance v8, Lgv;

    const/16 v7, 0xa

    invoke-direct {v8, v5, v1, v7}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v6, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b()Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v27

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->c()Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-result-object v32

    iget-object v7, v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    if-eqz v7, :cond_26

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v33, v7

    goto :goto_1a

    :cond_26
    move-object/from16 v33, p11

    :goto_1a
    iget-object v7, v6, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    if-eqz v7, :cond_27

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v34, v7

    goto :goto_1b

    :cond_27
    move-object/from16 v34, p11

    :goto_1b
    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->d()Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    move-result-object v37

    sget-object v6, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->FOR_YOU:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    move-object/from16 v7, p2

    if-ne v7, v6, :cond_28

    const/16 v38, 0x1

    goto :goto_1c

    :cond_28
    const/16 v38, 0x0

    :goto_1c
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v8, 0x4000000

    if-ne v11, v8, :cond_29

    const/4 v9, 0x1

    goto :goto_1d

    :cond_29
    const/4 v9, 0x0

    :goto_1d
    or-int/2addr v6, v9

    and-int/lit8 v9, v35, 0x70

    const/16 v8, 0x20

    if-ne v9, v8, :cond_2a

    const/4 v8, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v8, 0x0

    :goto_1e
    or-int/2addr v6, v8

    and-int v8, v0, v17

    const/high16 v9, 0x4000000

    if-ne v8, v9, :cond_2b

    const/4 v8, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v8, 0x0

    :goto_1f
    or-int/2addr v6, v8

    and-int/lit16 v8, v0, 0x380

    const/16 v9, 0x100

    if-ne v8, v9, :cond_2c

    const/4 v9, 0x1

    goto :goto_20

    :cond_2c
    const/4 v9, 0x0

    :goto_20
    or-int/2addr v6, v9

    and-int v9, v0, p9

    const/high16 v1, 0x100000

    if-ne v9, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_21

    :cond_2d
    const/4 v1, 0x0

    :goto_21
    or-int/2addr v1, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_2e

    if-ne v6, v4, :cond_2f

    :cond_2e
    move-object v1, v2

    goto :goto_22

    :cond_2f
    move-object v14, v4

    move-object v3, v5

    move v1, v8

    move-object v4, v13

    move-object v13, v2

    goto :goto_23

    :goto_22
    new-instance v2, Lcy;

    move-object v6, v13

    move-object v13, v1

    move v1, v8

    move-object v8, v6

    move/from16 v6, p1

    move-object/from16 v9, p16

    move-object v14, v4

    move-object v4, v7

    move-object/from16 v7, p18

    invoke-direct/range {v2 .. v9}, Lcy;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v5

    move-object v4, v8

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v2

    :goto_23
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x100

    if-ne v1, v9, :cond_30

    const/4 v1, 0x1

    :goto_24
    const/high16 v9, 0x4000000

    goto :goto_25

    :cond_30
    const/4 v1, 0x0

    goto :goto_24

    :goto_25
    if-ne v11, v9, :cond_31

    const/4 v2, 0x1

    goto :goto_26

    :cond_31
    const/4 v2, 0x0

    :goto_26
    or-int/2addr v1, v2

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_32

    if-ne v2, v14, :cond_33

    :cond_32
    new-instance v2, Lqx;

    const/4 v7, 0x2

    invoke-direct {v2, v4, v3, v7}, Lqx;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v2, Lkotlin/jvm/functions/Function0;

    and-int v1, v0, v16

    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_34

    const/4 v1, 0x1

    :goto_27
    const/high16 v9, 0x4000000

    goto :goto_28

    :cond_34
    const/4 v1, 0x0

    goto :goto_27

    :goto_28
    if-ne v11, v9, :cond_35

    const/4 v5, 0x1

    goto :goto_29

    :cond_35
    const/4 v5, 0x0

    :goto_29
    or-int/2addr v1, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_36

    if-ne v5, v14, :cond_37

    :cond_36
    new-instance v5, Lgv;

    const/16 v1, 0xb

    invoke-direct {v5, v12, v3, v1}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_37
    check-cast v5, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v0, v0, 0x1c00

    const/16 v1, 0x800

    if-ne v0, v1, :cond_38

    const/4 v0, 0x1

    :goto_2a
    const/high16 v9, 0x4000000

    goto :goto_2b

    :cond_38
    const/4 v0, 0x0

    goto :goto_2a

    :goto_2b
    if-ne v11, v9, :cond_39

    const/4 v11, 0x1

    goto :goto_2c

    :cond_39
    const/4 v11, 0x0

    :goto_2c
    or-int/2addr v0, v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3a

    if-ne v1, v14, :cond_3b

    :cond_3a
    new-instance v1, Lqx;

    const/4 v9, 0x3

    invoke-direct {v1, v10, v3, v9}, Lqx;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v0, v35, 0x9

    and-int/lit8 v0, v0, 0x70

    shl-int/lit8 v7, v35, 0x9

    and-int v8, v7, v17

    or-int/2addr v0, v8

    const/high16 v8, 0x70000000

    and-int/2addr v7, v8

    or-int v17, v0, v7

    const/16 v18, 0x0

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object v15, v1

    move-object v1, v3

    move-object v14, v5

    move-object v12, v6

    move-object/from16 v16, v13

    move-object/from16 v4, v27

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v37

    move/from16 v9, v38

    move-object/from16 v3, p4

    move-object v13, v2

    move-object/from16 v2, v21

    invoke-static/range {v2 .. v18}, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_2d
    move-object v0, v1

    move-object/from16 v25, v22

    :goto_2e
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    move-object/from16 v1, p6

    goto/16 :goto_89

    :cond_3c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_3d
    move-object v11, v2

    move-object v1, v5

    move-object v15, v14

    const/16 p11, 0x0

    const/4 v9, 0x3

    move-object v14, v4

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    if-eqz v2, :cond_4c

    const v2, -0x11dbdb37    # -1.2700003E28f

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_3e

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object v10, v2

    check-cast v10, Landroidx/compose/runtime/MutableState;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v12

    if-eqz v12, :cond_4b

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v12

    if-eqz v12, :cond_3f

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2f

    :cond_3f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2f
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_40

    const v2, -0x5654440

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_30

    :cond_40
    const v2, -0x561d5d6

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_30
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_41

    new-instance v4, Liv;

    const/16 v5, 0x1c

    invoke-direct {v4, v5}, Liv;-><init>(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_41
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v2, v7, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;->c()Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;->b()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p6 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a()Z

    move-result v20

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;->c(Landroidx/compose/runtime/MutableState;)Z

    move-result v21

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    and-int v4, v35, v17

    const/high16 v7, 0x4000000

    if-ne v4, v7, :cond_42

    const/4 v5, 0x1

    goto :goto_31

    :cond_42
    const/4 v5, 0x0

    :goto_31
    or-int/2addr v2, v5

    and-int/lit8 v5, v35, 0x70

    const/16 v8, 0x20

    if-ne v5, v8, :cond_43

    const/4 v6, 0x1

    goto :goto_32

    :cond_43
    const/4 v6, 0x0

    :goto_32
    or-int/2addr v2, v6

    and-int v0, v0, p9

    const/high16 v6, 0x100000

    if-ne v0, v6, :cond_44

    const/4 v0, 0x1

    goto :goto_33

    :cond_44
    const/4 v0, 0x0

    :goto_33
    or-int/2addr v0, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_46

    if-ne v2, v14, :cond_45

    goto :goto_34

    :cond_45
    move v0, v4

    move v1, v5

    move/from16 p7, v9

    move v9, v8

    goto :goto_35

    :cond_46
    :goto_34
    new-instance v2, Lzx;

    move/from16 v18, v8

    const/4 v8, 0x1

    move/from16 p7, v5

    move-object v5, v1

    move/from16 v1, p7

    move/from16 v6, p1

    move-object/from16 v7, p16

    move v0, v4

    move/from16 p7, v9

    move/from16 v9, v18

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lzx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_35
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v7, 0x4000000

    if-ne v0, v7, :cond_47

    const/4 v0, 0x1

    goto :goto_36

    :cond_47
    const/4 v0, 0x0

    :goto_36
    or-int/2addr v0, v2

    if-ne v1, v9, :cond_48

    const/16 v31, 0x1

    goto :goto_37

    :cond_48
    const/16 v31, 0x0

    :goto_37
    or-int v0, v0, v31

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4a

    if-ne v1, v14, :cond_49

    goto :goto_38

    :cond_49
    move-object v2, v1

    move-object/from16 v1, p8

    goto :goto_39

    :cond_4a
    :goto_38
    new-instance v2, Lyx;

    const/4 v8, 0x0

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Lyx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILandroidx/compose/runtime/MutableState;I)V

    move-object v1, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_39
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v0, v35, 0x3

    and-int/lit16 v0, v0, 0x1c00

    move-object/from16 v6, p4

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    move/from16 v7, v20

    move/from16 v8, v21

    move v12, v0

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2d

    :cond_4b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_4c
    move/from16 p7, v9

    const/16 v9, 0x20

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    const v10, 0xe000

    if-eqz v2, :cond_5b

    const v2, -0x11c094f3

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_4d

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/MutableState;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_5a

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3a

    :cond_4e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3a
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_4f

    const v2, 0x53dbf29f

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_3b

    :cond_4f
    const v2, 0x53df6109

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_3b
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View;->b(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_50

    new-instance v4, Liv;

    const/16 v5, 0x1d

    invoke-direct {v4, v5}, Liv;-><init>(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_50
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v2, v7, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->d()Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->c()Ljava/util/List;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->b()Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v20

    invoke-virtual/range {p6 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a()Z

    move-result v21

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;->d(Landroidx/compose/runtime/MutableState;)Z

    move-result v25

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    and-int v4, v35, v17

    const/high16 v7, 0x4000000

    if-ne v4, v7, :cond_51

    const/4 v5, 0x1

    goto :goto_3c

    :cond_51
    const/4 v5, 0x0

    :goto_3c
    or-int/2addr v2, v5

    and-int/lit8 v5, v35, 0x70

    if-ne v5, v9, :cond_52

    const/4 v6, 0x1

    goto :goto_3d

    :cond_52
    const/4 v6, 0x0

    :goto_3d
    or-int/2addr v2, v6

    and-int v0, v0, p9

    const/high16 v6, 0x100000

    if-ne v0, v6, :cond_53

    const/4 v0, 0x1

    goto :goto_3e

    :cond_53
    const/4 v0, 0x0

    :goto_3e
    or-int/2addr v0, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_55

    if-ne v2, v14, :cond_54

    goto :goto_3f

    :cond_54
    move v0, v4

    move v1, v5

    goto :goto_40

    :cond_55
    :goto_3f
    new-instance v2, Lzx;

    const/4 v8, 0x2

    move v0, v5

    move-object v5, v1

    move v1, v0

    move/from16 v6, p1

    move-object/from16 v7, p16

    move v0, v4

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lzx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_40
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v7, 0x4000000

    if-ne v0, v7, :cond_56

    const/4 v0, 0x1

    goto :goto_41

    :cond_56
    const/4 v0, 0x0

    :goto_41
    or-int/2addr v0, v2

    if-ne v1, v9, :cond_57

    const/16 v31, 0x1

    goto :goto_42

    :cond_57
    const/16 v31, 0x0

    :goto_42
    or-int v0, v0, v31

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_59

    if-ne v1, v14, :cond_58

    goto :goto_43

    :cond_58
    move-object v2, v1

    move-object/from16 v1, p8

    goto :goto_44

    :cond_59
    :goto_43
    new-instance v2, Lyx;

    const/4 v8, 0x1

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lyx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILandroidx/compose/runtime/MutableState;I)V

    move-object v1, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_44
    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, v13

    and-int v13, v35, v10

    move-object/from16 v7, p4

    move-object v12, v11

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move/from16 v8, v21

    move/from16 v9, v25

    move-object v11, v2

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLSingleKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2d

    :cond_5a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_5b
    move-object v2, v3

    instance-of v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;

    if-eqz v3, :cond_60

    const v0, 0xff26aed

    invoke-static {v11, v0, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_5f

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_45

    :cond_5c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_45
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v11, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v11, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v11, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_5d

    const v0, -0x52e2e8ea

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_46

    :cond_5d
    const v0, -0x52dfd498

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_46
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a()F

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x2

    invoke-static {v0, v3, v4, v7}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View;->d(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_5e

    new-instance v3, Ldy;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ldy;-><init>(I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v0, v7, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;

    shr-int/lit8 v0, v35, 0x3

    shr-int/lit8 v4, v35, 0x12

    and-int/lit16 v4, v4, 0x380

    or-int v4, v38, v4

    and-int/lit16 v0, v0, 0x1c00

    or-int v8, v4, v0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object v7, v11

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedHighLightCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2d

    :cond_5f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_60
    instance-of v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    if-eqz v3, :cond_6e

    const v3, -0x1199921b

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_61

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_61
    move-object v10, v3

    check-cast v10, Landroidx/compose/runtime/MutableState;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v12

    if-eqz v12, :cond_6d

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v12

    if-eqz v12, :cond_62

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_47

    :cond_62
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_47
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_63

    const v3, 0x65e605d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_48

    :cond_63
    const v3, 0x661cec7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_48
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View;->c(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_64

    new-instance v4, Ldy;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ldy;-><init>(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_49

    :cond_64
    const/4 v7, 0x1

    :goto_49
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v7, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->b()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p6 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a()Z

    move-result v18

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;->b(Landroidx/compose/runtime/MutableState;)Z

    move-result v20

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    and-int v8, v35, v17

    const/high16 v7, 0x4000000

    if-ne v8, v7, :cond_65

    const/4 v4, 0x1

    goto :goto_4a

    :cond_65
    const/4 v4, 0x0

    :goto_4a
    or-int/2addr v3, v4

    and-int v0, v0, p9

    const/high16 v6, 0x100000

    if-ne v0, v6, :cond_66

    const/4 v0, 0x1

    goto :goto_4b

    :cond_66
    const/4 v0, 0x0

    :goto_4b
    or-int/2addr v0, v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_68

    if-ne v3, v14, :cond_67

    goto :goto_4c

    :cond_67
    move-object/from16 v42, v3

    move-object v3, v2

    move-object/from16 v2, v42

    goto :goto_4d

    :cond_68
    :goto_4c
    new-instance v2, Luv;

    const/4 v7, 0x1

    move-object/from16 v4, p2

    move-object/from16 v6, p16

    move-object/from16 v3, p19

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_4d
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v7, 0x4000000

    if-ne v8, v7, :cond_69

    const/4 v2, 0x1

    goto :goto_4e

    :cond_69
    const/4 v2, 0x0

    :goto_4e
    or-int/2addr v1, v2

    and-int/lit8 v2, v35, 0x70

    if-ne v2, v9, :cond_6a

    const/16 v31, 0x1

    goto :goto_4f

    :cond_6a
    const/16 v31, 0x0

    :goto_4f
    or-int v1, v1, v31

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6c

    if-ne v2, v14, :cond_6b

    goto :goto_50

    :cond_6b
    move-object/from16 v1, p8

    goto :goto_51

    :cond_6c
    :goto_50
    new-instance v2, Lyx;

    const/4 v8, 0x2

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Lyx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILandroidx/compose/runtime/MutableState;I)V

    move-object v1, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_51
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v35, 0x3

    and-int/lit16 v2, v2, 0x1c00

    move-object v4, v13

    const/4 v13, 0x0

    move-object/from16 v6, p4

    move-object v9, v0

    move-object v3, v12

    move-object/from16 v5, v16

    move/from16 v7, v18

    move/from16 v8, v20

    move v12, v2

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_2d

    :cond_6d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_6e
    move-object v3, v2

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    const-string v12, ""

    const/4 v13, 0x5

    const/high16 v18, 0x1c00000

    if-eqz v2, :cond_88

    const v2, -0x117e2cb8

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v2, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, p7

    if-ge v4, v5, :cond_70

    iget-boolean v4, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->g:Z

    if-eqz v4, :cond_6f

    goto :goto_52

    :cond_6f
    const v0, -0x1152868d

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    move-object v2, v3

    move-object/from16 v25, v22

    goto/16 :goto_63

    :cond_70
    :goto_52
    const v4, -0x117cab47

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->b()Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    move-result-object v4

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-ne v4, v5, :cond_71

    const/4 v4, 0x1

    goto :goto_53

    :cond_71
    const/4 v4, 0x0

    :goto_53
    invoke-virtual {v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->a()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v14, :cond_72

    new-instance v6, Ltx;

    invoke-direct {v6, v13}, Ltx;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_72
    check-cast v6, Lkotlin/jvm/functions/Function0;

    move/from16 v7, v38

    invoke-static {v5, v6, v11, v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/MutableState;

    iget-boolean v5, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    move/from16 p14, v10

    and-int v10, v35, v17

    move/from16 v20, v0

    const/high16 v0, 0x4000000

    if-ne v10, v0, :cond_73

    const/4 v0, 0x1

    goto :goto_54

    :cond_73
    const/4 v0, 0x0

    :goto_54
    or-int/2addr v0, v7

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_74

    if-ne v7, v14, :cond_75

    :cond_74
    move-object v0, v2

    goto :goto_55

    :cond_75
    move-object v1, v2

    move-object v10, v5

    const/high16 v0, 0x800000

    goto :goto_56

    :goto_55
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt$FeedGenericSection$9$1;

    const/4 v7, 0x0

    move-object v10, v5

    move-object v5, v3

    move v3, v4

    move-object v4, v1

    move-object v1, v0

    const/high16 v0, 0x800000

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt$FeedGenericSection$9$1;-><init>(ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move v4, v3

    move-object v3, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v7, v2

    :goto_56
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v10, v7, v11}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v11, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_87

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v13

    if-eqz v13, :cond_76

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_57

    :cond_76
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_57
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v11, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-static {v11, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_77

    const v2, 0x5bc564bf

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v5

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_58

    :cond_77
    const v2, 0x5bc92d41

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_58
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_78

    new-instance v5, Liv;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Liv;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_78
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v2, v7, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v2, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    if-eqz v2, :cond_79

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a:Ljava/lang/String;

    goto :goto_59

    :cond_79
    move-object/from16 v7, p11

    :goto_59
    if-nez v7, :cond_7a

    goto :goto_5a

    :cond_7a
    move-object v12, v7

    :goto_5a
    if-eqz v2, :cond_7b

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->b:Ljava/lang/String;

    move-object v10, v7

    goto :goto_5b

    :cond_7b
    move-object/from16 v10, p11

    :goto_5b
    if-eqz v2, :cond_7c

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-object v13, v7

    goto :goto_5c

    :cond_7c
    move-object/from16 v13, p11

    :goto_5c
    iget-object v2, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->e:Ljava/util/List;

    iget-boolean v5, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->g:Z

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a()F

    move-result v16

    iget-object v6, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    if-eqz v6, :cond_7d

    iget-object v7, v6, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a:Ljava/lang/String;

    if-eqz v7, :cond_7d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x4

    if-lt v1, v6, :cond_7d

    move-object v6, v7

    goto :goto_5d

    :cond_7d
    move-object/from16 v6, p11

    :goto_5d
    if-nez v6, :cond_7e

    const v1, 0x5bd8948c

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    move-object/from16 v1, p8

    move-object/from16 v7, p11

    move-object v9, v2

    move/from16 v17, v5

    move-object/from16 v25, v22

    goto :goto_61

    :cond_7e
    const v1, 0x5bd8948d

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    and-int v7, v20, p14

    const/16 v9, 0x4000

    if-ne v7, v9, :cond_7f

    const/4 v7, 0x1

    goto :goto_5e

    :cond_7f
    const/4 v7, 0x0

    :goto_5e
    or-int/2addr v1, v7

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_80

    if-ne v7, v14, :cond_81

    :cond_80
    move-object v7, v2

    goto :goto_5f

    :cond_81
    move-object/from16 v1, p8

    move-object v9, v2

    move/from16 v17, v5

    move-object/from16 v25, v22

    goto :goto_60

    :goto_5f
    new-instance v2, Lwx;

    move-object v1, v7

    const/4 v7, 0x0

    move v9, v4

    move-object v4, v3

    move v3, v9

    move-object v9, v1

    move/from16 v17, v5

    move-object/from16 v5, v22

    move-object/from16 v1, p8

    invoke-direct/range {v2 .. v7}, Lwx;-><init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;Ljava/lang/String;I)V

    move-object/from16 v25, v4

    move v4, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v7, v2

    :goto_60
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_61
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    and-int v5, v20, v18

    if-ne v5, v0, :cond_82

    const/16 v19, 0x1

    goto :goto_62

    :cond_82
    const/16 v19, 0x0

    :goto_62
    or-int v0, v2, v19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_83

    if-ne v2, v14, :cond_84

    :cond_83
    new-instance v2, Lxx;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v15, v6}, Lxx;-><init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_84
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_85

    if-ne v5, v14, :cond_86

    :cond_85
    new-instance v5, Lgx;

    const/4 v0, 0x2

    invoke-direct {v5, v3, v0}, Lgx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_86
    check-cast v5, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v35, 0x9

    and-int v0, v0, v18

    or-int v20, v0, v33

    const/16 v21, 0x0

    const v22, 0x8420

    move-object v3, v8

    const/4 v8, 0x0

    move v14, v4

    move-object v4, v12

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v6, v13

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v2, p19

    move-object/from16 v16, v7

    move-object v7, v9

    move/from16 v9, v17

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v22}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_63
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    move-object v0, v1

    goto/16 :goto_2e

    :cond_87
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_88
    move/from16 v20, v0

    move-object v2, v3

    move/from16 p14, v10

    move-object/from16 v25, v22

    const/high16 v0, 0x800000

    instance-of v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v3, :cond_a0

    const v3, -0x11503d6d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v10, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x6

    if-ge v3, v13, :cond_8a

    iget-boolean v3, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->g:Z

    if-eqz v3, :cond_89

    goto :goto_64

    :cond_89
    const v0, -0x1128818d

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    move-object v0, v1

    move-object/from16 v1, p6

    goto/16 :goto_75

    :cond_8a
    :goto_64
    const v3, -0x114ecb00

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->b()Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    move-result-object v3

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-ne v3, v4, :cond_8b

    const/4 v3, 0x1

    goto :goto_65

    :cond_8b
    const/4 v3, 0x0

    :goto_65
    invoke-virtual {v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->a()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_8c

    new-instance v5, Ltx;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ltx;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8c
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x30

    invoke-static {v4, v5, v11, v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/runtime/MutableState;

    iget-boolean v4, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    and-int v7, v35, v17

    move/from16 p7, v13

    const/high16 v13, 0x4000000

    if-ne v7, v13, :cond_8d

    const/4 v7, 0x1

    goto :goto_66

    :cond_8d
    const/4 v7, 0x0

    :goto_66
    or-int/2addr v5, v7

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_8f

    if-ne v7, v14, :cond_8e

    goto :goto_67

    :cond_8e
    move-object/from16 v1, p6

    move-object/from16 v13, p17

    move-object v0, v4

    move v4, v3

    move-object v3, v2

    goto :goto_68

    :cond_8f
    :goto_67
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt$FeedGenericSection$11$1;

    const/4 v7, 0x0

    move-object/from16 v13, p17

    move-object/from16 v5, p19

    move-object v0, v4

    move-object v4, v1

    move-object/from16 v1, p6

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt$FeedGenericSection$11$1;-><init>(ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move v4, v3

    move-object v3, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v7, v2

    :goto_68
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v0, v7, v11}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v15

    if-eqz v15, :cond_9f

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v15

    if-eqz v15, :cond_90

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_69

    :cond_90
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_69
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_91

    const v0, -0x4af96462

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_6a

    :cond_91
    const v0, -0x4af59be0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_6a
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_92

    new-instance v2, Liv;

    const/16 v5, 0x19

    invoke-direct {v2, v5}, Liv;-><init>(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_92
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    invoke-static {v0, v7, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    if-eqz v2, :cond_93

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a:Ljava/lang/String;

    goto :goto_6b

    :cond_93
    move-object/from16 v7, p11

    :goto_6b
    if-nez v7, :cond_94

    goto :goto_6c

    :cond_94
    move-object v12, v7

    :goto_6c
    if-eqz v2, :cond_95

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->b:Ljava/lang/String;

    move-object v8, v7

    goto :goto_6d

    :cond_95
    move-object/from16 v8, p11

    :goto_6d
    if-eqz v2, :cond_96

    iget-object v7, v2, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-object v15, v7

    goto :goto_6e

    :cond_96
    move-object/from16 v15, p11

    :goto_6e
    iget-object v2, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->e:Ljava/util/List;

    move-object/from16 v16, v8

    iget-boolean v8, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->g:Z

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a()F

    move-result v17

    iget-object v5, v9, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    if-eqz v5, :cond_97

    iget-object v7, v5, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a:Ljava/lang/String;

    if-eqz v7, :cond_97

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_97

    move-object v6, v7

    goto :goto_6f

    :cond_97
    move-object/from16 v6, p11

    :goto_6f
    if-nez v6, :cond_98

    const v5, -0x4aea2bd5

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    move-object/from16 v7, p11

    move-object v9, v2

    goto :goto_73

    :cond_98
    const v5, -0x4aea2bd4

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    and-int v7, v20, p14

    const/16 v9, 0x4000

    if-ne v7, v9, :cond_99

    const/4 v7, 0x1

    goto :goto_70

    :cond_99
    const/4 v7, 0x0

    :goto_70
    or-int/2addr v5, v7

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_9a

    if-ne v7, v14, :cond_9b

    :cond_9a
    move-object v7, v2

    goto :goto_71

    :cond_9b
    move-object v9, v2

    goto :goto_72

    :goto_71
    new-instance v2, Lwx;

    move-object v5, v7

    const/4 v7, 0x1

    move v9, v4

    move-object v4, v3

    move v3, v9

    move-object v9, v5

    move-object/from16 v5, v25

    invoke-direct/range {v2 .. v7}, Lwx;-><init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;Ljava/lang/String;I)V

    move-object/from16 v25, v4

    move v4, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v7, v2

    :goto_72
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_73
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    and-int v5, v20, v18

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_9c

    const/16 v31, 0x1

    goto :goto_74

    :cond_9c
    const/16 v31, 0x0

    :goto_74
    or-int v2, v2, v31

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_9d

    if-ne v5, v14, :cond_9e

    :cond_9d
    new-instance v5, Lxx;

    const/4 v2, 0x1

    invoke-direct {v5, v4, v3, v13, v2}, Lxx;-><init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9e
    check-cast v5, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v2, v35, 0x6

    and-int v14, v2, p9

    move-object v2, v3

    move-object v13, v11

    move-object v4, v12

    move-object v6, v15

    move/from16 v10, v17

    move-object v3, v0

    move-object v11, v5

    move-object v12, v7

    move-object v7, v9

    move-object/from16 v5, v16

    move-object/from16 v9, p4

    move-object/from16 v0, p8

    invoke-static/range {v3 .. v14}, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_75
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_76
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    goto/16 :goto_89

    :cond_9f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_a0
    move-object v0, v1

    move-object/from16 v1, p6

    instance-of v3, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    if-eqz v3, :cond_ae

    const v3, 0xff67cd4

    invoke-static {v11, v3, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_ad

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v10

    if-eqz v10, :cond_a1

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_77

    :cond_a1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_77
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_a2

    const v3, 0x1221f292

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_78

    :cond_a2
    const v3, 0x122506e4

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_78
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View;->e(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_a3

    new-instance v4, Liv;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Liv;-><init>(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x1

    invoke-static {v3, v8, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;->b()Ljava/util/List;

    move-result-object v15

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/model/common/A11ySettings;->b:Z

    iget-boolean v4, v1, Lcom/vuitton/android/presentation/model/common/A11ySettings;->c:Z

    move/from16 v19, v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a()Z

    move-result v8

    and-int v5, v20, p9

    const/high16 v6, 0x100000

    if-ne v5, v6, :cond_a4

    move/from16 v5, v19

    goto :goto_79

    :cond_a4
    const/4 v5, 0x0

    :goto_79
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    and-int v6, v35, v17

    const/high16 v7, 0x4000000

    if-ne v6, v7, :cond_a5

    move/from16 v7, v19

    goto :goto_7a

    :cond_a5
    const/4 v7, 0x0

    :goto_7a
    or-int/2addr v5, v7

    and-int/lit8 v7, v35, 0x70

    if-ne v7, v9, :cond_a6

    move/from16 v16, v19

    goto :goto_7b

    :cond_a6
    const/16 v16, 0x0

    :goto_7b
    or-int v5, v5, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_a8

    if-ne v13, v14, :cond_a7

    goto :goto_7c

    :cond_a7
    move-object v5, v2

    move/from16 p9, v3

    move v9, v6

    move-object v2, v13

    move/from16 v3, p1

    move v13, v4

    move-object v4, v0

    move v0, v7

    goto :goto_7d

    :cond_a8
    :goto_7c
    new-instance v2, Lzx;

    move-object/from16 v5, p2

    move/from16 p9, v3

    move v13, v4

    move v9, v6

    move-object/from16 v3, p16

    move-object/from16 v4, p19

    move-object v6, v0

    move v0, v7

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lzx;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V

    move-object v5, v4

    move-object v4, v6

    move v3, v7

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_7d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0x4000000

    if-ne v9, v7, :cond_a9

    move/from16 v7, v19

    goto :goto_7e

    :cond_a9
    const/4 v7, 0x0

    :goto_7e
    or-int/2addr v6, v7

    const/16 v9, 0x20

    if-ne v0, v9, :cond_aa

    move/from16 v31, v19

    goto :goto_7f

    :cond_aa
    const/16 v31, 0x0

    :goto_7f
    or-int v0, v6, v31

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_ab

    if-ne v6, v14, :cond_ac

    :cond_ab
    new-instance v6, Lzd;

    const/4 v0, 0x5

    invoke-direct {v6, v5, v4, v3, v0}, Lzd;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_ac
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v40, 0x3

    shr-int/lit8 v0, v35, 0x3

    and-int/lit16 v0, v0, 0x1c00

    move/from16 v7, p9

    move-object v3, v10

    move v9, v13

    move-object v5, v15

    move v13, v0

    move-object v10, v2

    move-object v0, v4

    move-object v4, v12

    move-object v12, v11

    move-object v11, v6

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/common/editorial/components/slideshow/SlideShowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_76

    :cond_ad
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_ae
    instance-of v2, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;

    if-eqz v2, :cond_b3

    const v2, 0xff728d4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-nez p3, :cond_b2

    const v2, -0x1111bbbc

    invoke-static {v11, v2, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_b1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_80

    :cond_af
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_80
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v11, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v11, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_b0

    const v2, 0x6789095c

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_81

    :cond_b0
    const v2, 0x678cd1de    # 1.3300053E24f

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_81
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v31

    const/16 v32, 0x7

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v2

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;->c()Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v6

    and-int v2, v35, p14

    shr-int/lit8 v7, v35, 0xc

    and-int v7, v7, v16

    or-int/2addr v2, v7

    shl-int/lit8 v7, v20, 0xf

    and-int v7, v7, p9

    or-int/2addr v2, v7

    move-object/from16 v7, p4

    move-object v10, v11

    move-object/from16 v8, v23

    move-object/from16 v9, v26

    move v11, v2

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/common/editorial/components/AuthenticationSectionKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v8

    move-object v13, v9

    move-object v11, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_82

    :cond_b1
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p11

    :cond_b2
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    const v3, -0x1105502d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_82
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_89

    :cond_b3
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    instance-of v3, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;

    if-eqz v3, :cond_b7

    const v3, -0x11041764

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e()Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v4

    instance-of v4, v4, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;

    if-eqz v4, :cond_b6

    const v4, -0x11030e13

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v24, :cond_b4

    const v4, -0x1102bc37

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_83

    :cond_b4
    const v4, -0x10ff4dcd

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_83
    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->Companion:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p4 .. p4}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;->a(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    move-result-object v9

    move-object v5, v3

    move-object v3, v4

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c()Lcom/vuitton/android/presentation/model/common/IconUiModel;

    move-result-object v7

    if-eqz v7, :cond_b5

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/IconUiModelKt;->a(Lcom/vuitton/android/presentation/model/common/IconUiModel;)V

    const v7, 0x7f080196

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_84

    :cond_b5
    move-object/from16 v7, p11

    :goto_84
    invoke-virtual {v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d()Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v8

    shl-int/lit8 v6, v20, 0x15

    and-int v12, v6, v18

    const/4 v6, 0x0

    move-object/from16 v10, p10

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_85

    :cond_b6
    const v3, -0x10f82cad

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_85
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto/16 :goto_89

    :cond_b7
    instance-of v3, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;

    if-eqz v3, :cond_bc

    const v3, -0x10f6d9bc

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p3, :cond_bb

    const v3, -0x10f6578f

    invoke-static {v11, v3, v8}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_ba

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f()Z

    move-result v9

    if-eqz v9, :cond_b8

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_86

    :cond_b8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_86
    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v24, :cond_b9

    const v3, -0x7448711d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_87

    :cond_b9
    const v3, -0x7444a89b

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_87
    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;->b()Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p11

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v11, v6}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/ContactabilitySectionKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_88

    :cond_ba
    move-object/from16 v5, p11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v5

    :cond_bb
    const v3, -0x10ef462d

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_88
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    goto :goto_89

    :cond_bc
    const v3, 0xff84b93

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->F()V

    :goto_89
    move-object v10, v2

    move-object v12, v13

    move/from16 v8, v24

    move-object/from16 v15, v25

    goto :goto_8a

    :cond_bd
    move-object/from16 v1, p6

    move-object v11, v2

    move-object v0, v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v15, p14

    move v8, v7

    :goto_8a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_be

    new-instance v0, Lay;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p21

    move/from16 v22, p22

    move-object v7, v1

    move-object/from16 v41, v2

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v0 .. v22}, Lay;-><init>(Landroid/content/Context;ILcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;II)V

    move-object v1, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->f(Lkotlin/jvm/functions/Function2;)V

    :cond_be
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final c(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
