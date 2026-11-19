.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u00a8\u0006\u0005\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;",
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
.method public static final a(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v4, p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7105c94b

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p13, v0

    move-object/from16 v5, p1

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v15, p2

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v3, p3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v0, v7

    move-object/from16 v7, p4

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v0, v9

    move-object/from16 v9, p5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v0, v11

    move-object/from16 v11, p6

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/high16 v13, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v13, 0x80000

    :goto_6
    or-int/2addr v0, v13

    move-object/from16 v13, p7

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/high16 v16, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v16, 0x400000

    :goto_7
    or-int v0, v0, v16

    move-object/from16 v2, p8

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/high16 v17, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v17, 0x2000000

    :goto_8
    or-int v0, v0, v17

    move-object/from16 v12, p9

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v18, 0x10000000

    :goto_9
    or-int v0, v0, v18

    move-object/from16 v6, p10

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x4

    goto :goto_a

    :cond_a
    const/16 v19, 0x2

    :goto_a
    const/16 v20, 0x30

    or-int v19, v20, v19

    const v20, 0x12492493

    and-int v10, v0, v20

    const v8, 0x12492492

    if-ne v10, v8, :cond_c

    and-int/lit8 v8, v19, 0x13

    const/16 v10, 0x12

    if-eq v8, v10, :cond_b

    goto :goto_b

    :cond_b
    const/4 v8, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v8, 0x1

    :goto_c
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v14, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1c

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    sget-object v10, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v23, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->PERSONAL_SELECTION:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-virtual/range {v23 .. v23}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_d

    new-instance v1, Lyk0;

    const/16 v3, 0x1d

    invoke-direct {v1, v3}, Lyk0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_e

    new-instance v1, Lyn0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    :goto_d
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_f

    new-instance v1, Lyn0;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_e

    :cond_f
    const/4 v3, 0x1

    :goto_e
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_10

    new-instance v1, Lyn0;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lyn0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit16 v3, v0, 0x1c00

    move/from16 v25, v0

    const/16 v0, 0x800

    if-ne v3, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    :goto_f
    or-int/2addr v0, v1

    const v1, 0xe000

    and-int v1, v25, v1

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit8 v1, v25, 0x70

    const/16 v3, 0x20

    if-ne v1, v3, :cond_13

    const/4 v1, 0x1

    goto :goto_11

    :cond_13
    const/4 v1, 0x0

    :goto_11
    or-int/2addr v0, v1

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int v1, v25, v1

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_14

    const/4 v1, 0x1

    goto :goto_12

    :cond_14
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int v1, v25, v1

    const/high16 v3, 0x100000

    if-ne v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_13

    :cond_15
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int v1, v25, v1

    const/high16 v3, 0x800000

    if-ne v1, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_14

    :cond_16
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int v1, v25, v1

    const/high16 v3, 0x4000000

    if-ne v1, v3, :cond_17

    const/4 v1, 0x1

    goto :goto_15

    :cond_17
    const/4 v1, 0x0

    :goto_15
    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int v1, v25, v1

    const/high16 v3, 0x20000000

    if-ne v1, v3, :cond_18

    const/4 v1, 0x1

    goto :goto_16

    :cond_18
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v0, v1

    and-int/lit8 v1, v19, 0xe

    const/4 v3, 0x4

    if-ne v1, v3, :cond_19

    const/4 v1, 0x1

    goto :goto_17

    :cond_19
    const/4 v1, 0x0

    :goto_17
    or-int/2addr v0, v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1a

    if-ne v1, v2, :cond_1b

    :cond_1a
    new-instance v0, Lz8;

    move-object v1, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v11

    move-object v11, v1

    move-object/from16 v2, p3

    move-object v3, v7

    move-object v7, v9

    move-object v1, v10

    move-object v9, v13

    move-object/from16 v10, p8

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lz8;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1b
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v25, 0xe

    const/high16 v1, 0x36d80000

    or-int/2addr v0, v1

    shr-int/lit8 v1, v25, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v11, v0, v1

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v10, v14

    move-object v1, v15

    move-object/from16 v8, v21

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v7, v24

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_1c
    move-object v10, v14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_1d

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

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
