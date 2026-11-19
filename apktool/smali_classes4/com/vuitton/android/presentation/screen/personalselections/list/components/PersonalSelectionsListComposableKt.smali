.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListComposableKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x73186cbc

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    move-object/from16 v2, p1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/16 v13, 0x100

    if-eqz v3, :cond_2

    move v3, v13

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v3, p5

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v4, 0x10000

    :goto_5
    or-int/2addr v0, v4

    move-object/from16 v4, p6

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v5, 0x80000

    :goto_6
    or-int/2addr v0, v5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v5, 0x400000

    :goto_7
    or-int/2addr v0, v5

    move-object/from16 v7, p8

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v5, 0x2000000

    :goto_8
    or-int/2addr v0, v5

    const v5, 0x2492493

    and-int/2addr v5, v0

    const v6, 0x2492492

    const/4 v14, 0x0

    const/16 v16, 0x1

    if-eq v5, v6, :cond_9

    move/from16 v5, v16

    goto :goto_9

    :cond_9
    move v5, v14

    :goto_9
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v12, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v14, v5, v12, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v17

    invoke-static {v14, v5, v12, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v18

    invoke-static {v12}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v5

    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v6

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v5

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v15, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v6, v15, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    instance-of v15, v1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;

    if-eqz v15, :cond_a

    const v15, -0xeafc09b

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12, v14}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListLoadingScreenKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v7, v8

    move v8, v0

    move-object v0, v7

    move v15, v5

    move-object v5, v12

    move-object/from16 v7, v17

    :goto_a
    move v12, v6

    goto/16 :goto_b

    :cond_a
    instance-of v15, v1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Error;

    if-eqz v15, :cond_b

    const v15, -0xeafb3d3

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;

    move v3, v5

    move v4, v6

    move-object/from16 v5, v17

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;-><init>(IILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    move v6, v4

    const v4, -0x7f41ca1f

    invoke-static {v4, v2, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    shr-int/lit8 v4, v0, 0x12

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v4, v4, 0x6

    invoke-static {v2, v11, v12, v4}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListErrorScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v8, v0

    move v15, v3

    move-object v7, v5

    move-object v5, v12

    move-object/from16 v0, p2

    goto :goto_a

    :cond_b
    move v3, v5

    move-object/from16 v5, v17

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;

    if-eqz v2, :cond_13

    const v2, -0xeaf657b

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move v2, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/b;

    move-object v4, v5

    move v5, v3

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v7, p8

    move v8, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/b;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/functions/Function0;)V

    move-object v1, v0

    move-object v7, v3

    move-object v0, v4

    move v15, v5

    const v2, 0x3d9ba166

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    move-object/from16 v2, p0

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;

    shr-int/lit8 v3, v8, 0x9

    and-int/lit16 v4, v3, 0x380

    or-int/lit8 v4, v4, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v3, v4

    move-object/from16 v4, p6

    move-object v5, v12

    move v12, v6

    move v6, v3

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->d(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    and-int/lit16 v1, v8, 0x380

    if-ne v1, v13, :cond_c

    move/from16 v1, v16

    goto :goto_c

    :cond_c
    move v1, v14

    :goto_c
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_d

    if-ne v2, v3, :cond_e

    :cond_d
    new-instance v2, Ltj;

    const/16 v1, 0xa

    invoke-direct {v2, v0, v15, v12, v1}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const v1, 0xe000

    and-int/2addr v1, v8

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    move/from16 v1, v16

    goto :goto_d

    :cond_f
    move v1, v14

    :goto_d
    and-int/lit16 v2, v8, 0x1c00

    const/16 v6, 0x800

    if-ne v2, v6, :cond_10

    move/from16 v14, v16

    :cond_10
    or-int/2addr v1, v14

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_11

    if-ne v2, v3, :cond_12

    :cond_11
    new-instance v2, Lil;

    const/16 v1, 0xd

    invoke-direct {v2, v10, v9, v1}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v1, v8, 0x3

    and-int/lit8 v1, v1, 0xe

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v6, v3, 0x3

    or-int/2addr v1, v6

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    move-object v6, v5

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v2, v7

    move v7, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v6

    goto :goto_e

    :cond_13
    move-object v5, v12

    const v0, -0xeafc275

    invoke-static {v5, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_14
    move-object v0, v8

    move-object v5, v12

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_15

    new-instance v0, Lp9;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v4, v9

    move-object v5, v10

    move-object v8, v11

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lp9;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final b(Ljava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const v0, 0x69050c82

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p6, v5

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v5, v6

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x1

    if-eq v6, v7, :cond_5

    move v6, v8

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v6, Lbl;

    invoke-direct {v6, v2, v3, v4, v8}, Lbl;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    const v7, -0x7d5c82bf

    invoke-static {v7, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    shl-int/lit8 v6, v5, 0x9

    and-int/lit16 v6, v6, 0x1c00

    const/high16 v7, 0xc00000

    or-int/2addr v6, v7

    const/high16 v7, 0x380000

    shl-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v7

    or-int v17, v6, v5

    const/16 v18, 0x0

    const/16 v19, 0xf37

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    move-object v8, v1

    invoke-static/range {v5 .. v19}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_6

    :cond_6
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v0, Lkj0;

    const/4 v7, 0x7

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
