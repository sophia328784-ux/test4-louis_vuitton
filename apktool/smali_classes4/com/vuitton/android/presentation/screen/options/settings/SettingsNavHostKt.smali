.class public abstract Lcom/vuitton/android/presentation/screen/options/settings/SettingsNavHostKt;
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x370acfb4

    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p7, v2

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    move-object/from16 v7, p3

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v2, v5

    move-object/from16 v5, p4

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v2, v9

    move-object/from16 v9, p5

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v12, 0x10000

    :goto_5
    or-int/2addr v12, v2

    const v2, 0x12493

    and-int/2addr v2, v12

    const v14, 0x12492

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eq v2, v14, :cond_6

    move/from16 v2, v16

    goto :goto_6

    :cond_6
    move v2, v15

    :goto_6
    and-int/lit8 v14, v12, 0x1

    invoke-virtual {v10, v14, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v12, 0x70

    if-eq v14, v4, :cond_7

    move/from16 v17, v15

    goto :goto_7

    :cond_7
    move/from16 v17, v16

    :goto_7
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    const/4 v13, 0x0

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_8

    if-ne v8, v11, :cond_9

    :cond_8
    new-instance v8, Lcom/vuitton/android/presentation/screen/options/settings/SettingsNavHostKt$SettingsNavHost$1$1;

    invoke-direct {v8, v1, v0, v13}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsNavHostKt$SettingsNavHost$1$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x7

    invoke-static {v15, v2, v10, v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    sget-object v13, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_a

    new-instance v8, Lav0;

    const/16 v15, 0x8

    invoke-direct {v8, v15}, Lav0;-><init>(I)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_b

    new-instance v8, Lav0;

    const/16 v6, 0x9

    invoke-direct {v8, v6}, Lav0;-><init>(I)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v11, :cond_c

    new-instance v6, Lav0;

    const/16 v8, 0xa

    invoke-direct {v6, v8}, Lav0;-><init>(I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v11, :cond_d

    new-instance v6, Lav0;

    const/16 v8, 0xb

    invoke-direct {v6, v8}, Lav0;-><init>(I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function1;

    if-eq v14, v4, :cond_e

    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    move/from16 v4, v16

    :goto_8
    and-int/lit16 v6, v12, 0x380

    const/16 v8, 0x100

    if-eq v6, v8, :cond_f

    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    move/from16 v6, v16

    :goto_9
    or-int/2addr v4, v6

    const v6, 0xe000

    and-int/2addr v6, v12

    const/16 v8, 0x4000

    if-ne v6, v8, :cond_10

    move/from16 v6, v16

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    or-int/2addr v4, v6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v12

    const/high16 v8, 0x20000

    if-ne v6, v8, :cond_11

    move/from16 v6, v16

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v4, v6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    and-int/lit16 v6, v12, 0x1c00

    const/16 v8, 0x800

    if-eq v6, v8, :cond_12

    const/16 v16, 0x0

    :cond_12
    or-int v4, v4, v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_13

    if-ne v6, v11, :cond_14

    :cond_13
    new-instance v0, Lnk;

    const/4 v8, 0x7

    move-object/from16 v4, p0

    move-object v6, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :cond_14
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v12, 0xe

    const v1, 0x36d80030

    or-int v11, v0, v1

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v5, v15

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_15
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v0, Lzs0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lzs0;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
