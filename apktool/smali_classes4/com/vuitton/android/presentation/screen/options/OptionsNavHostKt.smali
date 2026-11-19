.class public abstract Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt;
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lcom/vuitton/android/presentation/PreprodRouter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6979fce6

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p13, v0

    move-object/from16 v4, p1

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v0, v6

    move-object/from16 v10, p2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    move-object/from16 v11, p3

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    move-object/from16 v6, p5

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/high16 v14, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v14, 0x10000

    :goto_5
    or-int/2addr v0, v14

    move-object/from16 v14, p6

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v3, p7

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v0, v0, v18

    move-object/from16 v9, p8

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v19, 0x2000000

    :goto_8
    or-int v0, v0, v19

    move-object/from16 v2, p9

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/high16 v20, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v20, 0x10000000

    :goto_9
    or-int v0, v0, v20

    move-object/from16 v12, p10

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x4

    :goto_a
    move-object/from16 v14, p11

    goto :goto_b

    :cond_a
    const/16 v21, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v17, 0x20

    goto :goto_c

    :cond_b
    const/16 v17, 0x10

    :goto_c
    or-int v17, v21, v17

    const v21, 0x12492493

    and-int v7, v0, v21

    const v8, 0x12492492

    const/16 v22, 0x1

    if-ne v7, v8, :cond_d

    and-int/lit8 v7, v17, 0x13

    const/16 v8, 0x12

    if-eq v7, v8, :cond_c

    goto :goto_d

    :cond_c
    const/4 v7, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    move/from16 v7, v22

    :goto_e
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v15, v8, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_22

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    new-instance v8, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v8}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    const v23, 0xe000

    and-int v13, v0, v23

    const/16 v2, 0x4000

    if-eq v13, v2, :cond_e

    const/16 v23, 0x0

    goto :goto_f

    :cond_e
    move/from16 v23, v22

    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v23, :cond_f

    if-ne v2, v3, :cond_10

    :cond_f
    new-instance v2, Ltb0;

    const/16 v4, 0x11

    invoke-direct {v2, v5, v4}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v8, v2, v15, v4}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v2

    sget-object v23, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_11

    new-instance v8, Lch0;

    const/4 v4, 0x6

    invoke-direct {v8, v4}, Lch0;-><init>(I)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_12

    new-instance v4, Lch0;

    const/4 v8, 0x7

    invoke-direct {v4, v8}, Lch0;-><init>(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_13

    new-instance v4, Lch0;

    const/16 v8, 0x8

    invoke-direct {v4, v8}, Lch0;-><init>(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v26, v4

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_14

    new-instance v4, Lch0;

    const/16 v8, 0x9

    invoke-direct {v4, v8}, Lch0;-><init>(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v8, v0, 0x70

    const/16 v1, 0x20

    if-eq v8, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_10

    :cond_15
    move/from16 v1, v22

    :goto_10
    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v0

    const/high16 v8, 0x100000

    if-ne v4, v8, :cond_16

    move/from16 v4, v22

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    :goto_11
    or-int/2addr v1, v4

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v0

    const/high16 v8, 0x800000

    if-ne v4, v8, :cond_17

    move/from16 v4, v22

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v1, v4

    const/16 v4, 0x4000

    if-eq v13, v4, :cond_18

    const/4 v4, 0x0

    goto :goto_13

    :cond_18
    move/from16 v4, v22

    :goto_13
    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v0

    const/high16 v8, 0x20000

    if-ne v4, v8, :cond_19

    move/from16 v4, v22

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    :goto_14
    or-int/2addr v1, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v0

    const/high16 v8, 0x4000000

    if-ne v4, v8, :cond_1a

    move/from16 v4, v22

    goto :goto_15

    :cond_1a
    const/4 v4, 0x0

    :goto_15
    or-int/2addr v1, v4

    and-int/lit16 v4, v0, 0x380

    const/16 v8, 0x100

    if-eq v4, v8, :cond_1b

    const/4 v4, 0x0

    goto :goto_16

    :cond_1b
    move/from16 v4, v22

    :goto_16
    or-int/2addr v1, v4

    and-int/lit16 v4, v0, 0x1c00

    const/16 v8, 0x800

    if-eq v4, v8, :cond_1c

    const/4 v4, 0x0

    goto :goto_17

    :cond_1c
    move/from16 v4, v22

    :goto_17
    or-int/2addr v1, v4

    const/high16 v4, 0x70000000

    and-int/2addr v4, v0

    const/high16 v8, 0x20000000

    if-ne v4, v8, :cond_1d

    move/from16 v4, v22

    goto :goto_18

    :cond_1d
    const/4 v4, 0x0

    :goto_18
    or-int/2addr v1, v4

    and-int/lit8 v4, v17, 0xe

    const/4 v8, 0x4

    if-ne v4, v8, :cond_1e

    move/from16 v4, v22

    goto :goto_19

    :cond_1e
    const/4 v4, 0x0

    :goto_19
    or-int/2addr v1, v4

    and-int/lit8 v4, v17, 0x70

    const/16 v8, 0x20

    if-ne v4, v8, :cond_1f

    goto :goto_1a

    :cond_1f
    const/16 v22, 0x0

    :goto_1a
    or-int v1, v1, v22

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_20

    if-ne v4, v3, :cond_21

    :cond_20
    move v1, v0

    goto :goto_1b

    :cond_21
    move/from16 v16, v0

    goto :goto_1c

    :goto_1b
    new-instance v0, Ls9;

    move-object v3, v5

    move-object v5, v2

    move-object v2, v7

    move-object v7, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move/from16 v16, v1

    move-object v8, v6

    move-object v13, v12

    move-object/from16 v1, p0

    move-object/from16 v6, p7

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v14}, Ls9;-><init>(Landroidx/navigation/NavHostController;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lcom/vuitton/android/presentation/PreprodRouter;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_1c
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v0, 0x36d80030

    and-int/lit8 v1, v16, 0xe

    or-int v11, v1, v0

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v10, v15

    move-object/from16 v1, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1d

    :cond_22
    move-object v10, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_23

    new-instance v0, Lle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lcom/vuitton/android/presentation/PreprodRouter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
