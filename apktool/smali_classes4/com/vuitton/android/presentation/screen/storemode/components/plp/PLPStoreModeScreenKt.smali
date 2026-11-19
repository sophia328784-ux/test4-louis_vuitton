.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeScreenKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x36e1692b

    move-object/from16 v4, p20

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/lit8 v6, v0, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v0, 0x180

    const/16 v11, 0x100

    if-nez v6, :cond_5

    move-object/from16 v6, p2

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v11

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v3, v12

    goto :goto_4

    :cond_5
    move-object/from16 v6, p2

    :goto_4
    and-int/lit16 v12, v0, 0xc00

    const/16 v13, 0x400

    const/16 v14, 0x800

    if-nez v12, :cond_7

    move-object/from16 v12, p3

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move v15, v14

    goto :goto_5

    :cond_6
    move v15, v13

    :goto_5
    or-int/2addr v3, v15

    goto :goto_6

    :cond_7
    move-object/from16 v12, p3

    :goto_6
    and-int/lit16 v15, v0, 0x6000

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-nez v15, :cond_9

    move-object/from16 v15, p4

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v17

    goto :goto_7

    :cond_8
    move/from16 v18, v16

    :goto_7
    or-int v3, v3, v18

    goto :goto_8

    :cond_9
    move-object/from16 v15, p4

    :goto_8
    const/high16 v18, 0x30000

    and-int v18, v0, v18

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    move-object/from16 v4, p5

    if-nez v18, :cond_b

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v18, v20

    goto :goto_9

    :cond_a
    move/from16 v18, v19

    :goto_9
    or-int v3, v3, v18

    :cond_b
    const/high16 v18, 0x180000

    and-int v18, v0, v18

    const/high16 v21, 0x80000

    const/high16 v22, 0x100000

    move-object/from16 v5, p6

    if-nez v18, :cond_d

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    move/from16 v23, v22

    goto :goto_a

    :cond_c
    move/from16 v23, v21

    :goto_a
    or-int v3, v3, v23

    :cond_d
    const/high16 v23, 0xc00000

    and-int v23, v0, v23

    const/high16 v24, 0x400000

    const/high16 v25, 0x800000

    move-object/from16 v4, p7

    if-nez v23, :cond_f

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    move/from16 v23, v25

    goto :goto_b

    :cond_e
    move/from16 v23, v24

    :goto_b
    or-int v3, v3, v23

    :cond_f
    const/high16 v23, 0x6000000

    and-int v23, v0, v23

    const/high16 v26, 0x2000000

    const/high16 v27, 0x4000000

    move-object/from16 v7, p8

    if-nez v23, :cond_11

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    move/from16 v28, v27

    goto :goto_c

    :cond_10
    move/from16 v28, v26

    :goto_c
    or-int v3, v3, v28

    :cond_11
    const/high16 v28, 0x30000000

    and-int v28, v0, v28

    const/high16 v29, 0x10000000

    const/high16 v30, 0x20000000

    move-object/from16 v4, p9

    if-nez v28, :cond_13

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    move/from16 v28, v30

    goto :goto_d

    :cond_12
    move/from16 v28, v29

    :goto_d
    or-int v3, v3, v28

    :cond_13
    move-object/from16 v9, p10

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    const/16 v18, 0x4

    :goto_e
    move/from16 v31, v14

    move-object/from16 v14, p11

    goto :goto_f

    :cond_14
    const/16 v18, 0x2

    goto :goto_e

    :goto_f
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    const/16 v28, 0x20

    goto :goto_10

    :cond_15
    const/16 v28, 0x10

    :goto_10
    or-int v18, v18, v28

    move-object/from16 v10, p12

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    goto :goto_11

    :cond_16
    const/16 v11, 0x80

    :goto_11
    or-int v11, v18, v11

    move-object/from16 v0, p13

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    move/from16 v13, v31

    :cond_17
    or-int/2addr v11, v13

    move-object/from16 v13, p14

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    move/from16 v16, v17

    :cond_18
    or-int v11, v11, v16

    move-object/from16 v0, p15

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    move/from16 v19, v20

    :cond_19
    or-int v11, v11, v19

    move-object/from16 v0, p16

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    move/from16 v21, v22

    :cond_1a
    or-int v11, v11, v21

    move-object/from16 v4, p17

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v24, v25

    :cond_1b
    or-int v11, v11, v24

    move-object/from16 v0, p18

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move/from16 v26, v27

    :cond_1c
    or-int v11, v11, v26

    move-object/from16 v0, p19

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v29, v30

    :cond_1d
    or-int v28, v11, v29

    const p20, 0x12492493

    and-int v11, v3, p20

    const v0, 0x12492492

    move/from16 v29, v3

    const/4 v3, 0x0

    if-ne v11, v0, :cond_1f

    and-int v11, v28, p20

    if-eq v11, v0, :cond_1e

    goto :goto_12

    :cond_1e
    move v0, v3

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v11, v29, 0x1

    invoke-virtual {v8, v11, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-nez v0, :cond_20

    move-object v0, v15

    :cond_20
    if-nez v0, :cond_21

    const v0, -0x42b3517

    const v11, 0x7f140aa0

    invoke-static {v8, v0, v11, v8, v3}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_21
    const v11, -0x42b3ac8

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3, v8}, Landroidx/paging/compose/LazyPagingItemsKt;->a(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Landroidx/paging/compose/LazyPagingItems;

    move-result-object v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v0, :cond_22

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_22
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v1, v8, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v21

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    new-instance v12, Lu1;

    const/16 v19, 0x15

    move-object/from16 v18, v9

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v17, v21

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v19}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x604bce91

    invoke-static {v1, v12, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v2, Lae0;

    const/16 v6, 0x13

    invoke-direct {v2, v3, v6}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v6, -0x6f2eb331

    invoke-static {v6, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v16, v15

    new-instance v15, Lme;

    move-object/from16 v22, p3

    move-object/from16 v18, p13

    move-object/from16 v26, p14

    move-object/from16 v19, p16

    move-object/from16 v20, p18

    move-object/from16 v27, p19

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v23, v10

    move-object/from16 v17, p15

    invoke-direct/range {v15 .. v27}, Lme;-><init>(Landroidx/paging/compose/LazyPagingItems;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V

    move-object/from16 v19, v16

    const v5, 0x47ce5826

    invoke-static {v5, v15, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const v17, 0x30000c30

    const/16 v18, 0xf5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v14, v0

    move-object v7, v2

    move-object v0, v5

    move-object v5, v1

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    shr-int/lit8 v1, v29, 0x6

    and-int/lit16 v1, v1, 0x1c00

    const/16 v2, 0x46

    or-int/2addr v1, v2

    shr-int/lit8 v2, v29, 0xf

    const v4, 0xe000

    and-int/2addr v4, v2

    or-int v10, v1, v4

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    move-object v6, v0

    move-object v4, v3

    move-object/from16 v9, v16

    move-object/from16 v5, v19

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v15, v5

    shr-int/lit8 v0, v29, 0xc

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v28, 0xc

    and-int/lit16 v1, v1, 0x1c00

    or-int v9, v0, v1

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p17

    move-object v4, v15

    move-object/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt;->a(Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_23
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_24

    move-object v1, v0

    new-instance v0, Lrb0;

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

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p21

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lrb0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;I)V

    move-object/from16 v1, v33

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method
