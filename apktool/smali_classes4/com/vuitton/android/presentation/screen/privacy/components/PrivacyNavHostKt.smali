.class public abstract Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyNavHostKt;
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;ZLcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v5, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move/from16 v13, p10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x56c5f39f

    move-object/from16 v3, p9

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int/lit8 v3, v13, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_4

    and-int/lit8 v3, v13, 0x40

    if-nez v3, :cond_2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    const/16 v3, 0x10

    :goto_3
    or-int/2addr v0, v3

    :cond_4
    and-int/lit16 v3, v13, 0x180

    move-object/from16 v9, p2

    if-nez v3, :cond_6

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_4

    :cond_5
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v0, v3

    :cond_6
    and-int/lit16 v3, v13, 0xc00

    const/16 v6, 0x800

    if-nez v3, :cond_8

    move/from16 v3, p3

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v6

    goto :goto_5

    :cond_7
    const/16 v7, 0x400

    :goto_5
    or-int/2addr v0, v7

    goto :goto_6

    :cond_8
    move/from16 v3, p3

    :goto_6
    and-int/lit16 v7, v13, 0x6000

    if-nez v7, :cond_a

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x4000

    goto :goto_7

    :cond_9
    const/16 v7, 0x2000

    :goto_7
    or-int/2addr v0, v7

    :cond_a
    const/high16 v7, 0x30000

    and-int/2addr v7, v13

    if-nez v7, :cond_c

    move-object/from16 v7, p5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v11, 0x10000

    :goto_8
    or-int/2addr v0, v11

    goto :goto_9

    :cond_c
    move-object/from16 v7, p5

    :goto_9
    const/high16 v11, 0x180000

    and-int/2addr v11, v13

    if-nez v11, :cond_e

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/high16 v14, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v14, 0x80000

    :goto_a
    or-int/2addr v0, v14

    goto :goto_b

    :cond_e
    move-object/from16 v11, p6

    :goto_b
    const/high16 v14, 0xc00000

    and-int/2addr v14, v13

    if-nez v14, :cond_10

    move-object/from16 v14, p7

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_c

    :cond_f
    const/high16 v16, 0x400000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_10
    move-object/from16 v14, p7

    :goto_d
    const/high16 v16, 0x6000000

    and-int v16, v13, v16

    move-object/from16 v15, p8

    if-nez v16, :cond_12

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x4000000

    goto :goto_e

    :cond_11
    const/high16 v17, 0x2000000

    :goto_e
    or-int v0, v0, v17

    :cond_12
    const v17, 0x2492493

    and-int v12, v0, v17

    const v8, 0x2492492

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eq v12, v8, :cond_13

    move/from16 v8, v19

    goto :goto_f

    :cond_13
    move/from16 v8, v18

    :goto_f
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v10, v12, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit16 v12, v0, 0x1c00

    if-ne v12, v6, :cond_14

    move/from16 v6, v19

    goto :goto_10

    :cond_14
    move/from16 v6, v18

    :goto_10
    or-int/2addr v6, v8

    and-int/lit8 v8, v0, 0x70

    if-eq v8, v4, :cond_16

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_15

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_11

    :cond_15
    move/from16 v4, v18

    goto :goto_12

    :cond_16
    :goto_11
    move/from16 v4, v19

    :goto_12
    or-int/2addr v4, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v0

    const/high16 v8, 0x20000

    if-ne v6, v8, :cond_17

    move/from16 v6, v19

    goto :goto_13

    :cond_17
    move/from16 v6, v18

    :goto_13
    or-int/2addr v4, v6

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    const/high16 v6, 0x380000

    and-int/2addr v6, v0

    const/high16 v8, 0x100000

    if-ne v6, v8, :cond_18

    move/from16 v6, v19

    goto :goto_14

    :cond_18
    move/from16 v6, v18

    :goto_14
    or-int/2addr v4, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v0

    const/high16 v8, 0x800000

    if-ne v6, v8, :cond_19

    move/from16 v6, v19

    goto :goto_15

    :cond_19
    move/from16 v6, v18

    :goto_15
    or-int/2addr v4, v6

    const/high16 v6, 0xe000000

    and-int/2addr v6, v0

    const/high16 v8, 0x4000000

    if-ne v6, v8, :cond_1a

    move/from16 v18, v19

    :cond_1a
    or-int v4, v4, v18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_1b

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_1c

    :cond_1b
    move v4, v0

    goto :goto_16

    :cond_1c
    move v11, v0

    goto :goto_17

    :goto_16
    new-instance v0, La0;

    move v6, v3

    move-object v3, v2

    move v2, v6

    move-object v6, v11

    move-object v8, v15

    move v11, v4

    move-object v4, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v8}, La0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_17
    check-cast v6, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v11, 0xe

    shr-int/lit8 v1, v11, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v11, v0, v1

    const/16 v12, 0x7fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_1d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1e

    new-instance v0, Ld4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v13

    invoke-direct/range {v0 .. v10}, Ld4;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;ZLcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
