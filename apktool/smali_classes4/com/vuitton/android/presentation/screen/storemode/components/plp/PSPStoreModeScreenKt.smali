.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeScreenKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    move/from16 v15, p24

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p7 .. p11}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x1183a9e1

    move-object/from16 v4, p23

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_1
    move v4, v15

    :goto_1
    and-int/lit8 v8, v15, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_3
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :cond_5
    and-int/lit16 v8, v15, 0xc00

    const/16 v13, 0x400

    const/16 v14, 0x800

    if-nez v8, :cond_7

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v14

    goto :goto_4

    :cond_6
    move v8, v13

    :goto_4
    or-int/2addr v4, v8

    :cond_7
    and-int/lit16 v8, v15, 0x6000

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-nez v8, :cond_9

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v17

    goto :goto_5

    :cond_8
    move/from16 v18, v16

    :goto_5
    or-int v4, v4, v18

    goto :goto_6

    :cond_9
    move-object/from16 v8, p4

    :goto_6
    const/high16 v18, 0x30000

    and-int v18, v15, v18

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    if-nez v18, :cond_c

    if-nez p5, :cond_a

    const/16 v18, -0x1

    :goto_7
    move/from16 v5, v18

    goto :goto_8

    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    goto :goto_7

    :goto_8
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v5, v20

    goto :goto_9

    :cond_b
    move/from16 v5, v19

    :goto_9
    or-int/2addr v4, v5

    :cond_c
    const/high16 v5, 0x180000

    and-int/2addr v5, v15

    const/high16 v18, 0x80000

    const/high16 v21, 0x100000

    if-nez v5, :cond_e

    move-object/from16 v5, p6

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v21

    goto :goto_a

    :cond_d
    move/from16 v22, v18

    :goto_a
    or-int v4, v4, v22

    goto :goto_b

    :cond_e
    move-object/from16 v5, p6

    :goto_b
    const/high16 v22, 0xc00000

    and-int v22, v15, v22

    const/high16 v23, 0x400000

    const/high16 v24, 0x800000

    move-object/from16 v6, p7

    if-nez v22, :cond_10

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v24

    goto :goto_c

    :cond_f
    move/from16 v25, v23

    :goto_c
    or-int v4, v4, v25

    :cond_10
    const/high16 v25, 0x6000000

    and-int v25, v15, v25

    const/high16 v26, 0x2000000

    const/high16 v27, 0x4000000

    move-object/from16 v15, p8

    if-nez v25, :cond_12

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    move/from16 v25, v27

    goto :goto_d

    :cond_11
    move/from16 v25, v26

    :goto_d
    or-int v4, v4, v25

    :cond_12
    const/high16 v25, 0x30000000

    and-int v25, p24, v25

    const/high16 v28, 0x10000000

    const/high16 v29, 0x20000000

    move-object/from16 v9, p9

    if-nez v25, :cond_14

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    move/from16 v30, v29

    goto :goto_e

    :cond_13
    move/from16 v30, v28

    :goto_e
    or-int v4, v4, v30

    :cond_14
    move/from16 v30, v4

    move-object/from16 v4, p10

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v31, 0x4

    :goto_f
    move-object/from16 v15, p11

    goto :goto_10

    :cond_15
    const/16 v31, 0x2

    goto :goto_f

    :goto_10
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    const/16 v32, 0x20

    goto :goto_11

    :cond_16
    const/16 v32, 0x10

    :goto_11
    or-int v31, v31, v32

    move-object/from16 v10, p12

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    const/16 v33, 0x100

    goto :goto_12

    :cond_17
    const/16 v33, 0x80

    :goto_12
    or-int v31, v31, v33

    move-object/from16 v11, p13

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    move v13, v14

    :cond_18
    or-int v13, v31, v13

    move-object/from16 v14, p14

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    move/from16 v16, v17

    :cond_19
    or-int v13, v13, v16

    move-object/from16 v12, p15

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move/from16 v19, v20

    :cond_1a
    or-int v13, v13, v19

    move-object/from16 v15, p16

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move/from16 v18, v21

    :cond_1b
    or-int v13, v13, v18

    move-object/from16 v15, p17

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move/from16 v23, v24

    :cond_1c
    or-int v13, v13, v23

    move-object/from16 v15, p18

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    move/from16 v26, v27

    :cond_1d
    or-int v13, v13, v26

    move-object/from16 v15, p19

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move/from16 v28, v29

    :cond_1e
    or-int v19, v13, v28

    move-object/from16 v13, p20

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/16 v17, 0x4

    :goto_13
    move-object/from16 v15, p21

    goto :goto_14

    :cond_1f
    const/16 v17, 0x2

    goto :goto_13

    :goto_14
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    const/16 v25, 0x20

    goto :goto_15

    :cond_20
    const/16 v25, 0x10

    :goto_15
    or-int v17, v17, v25

    move-object/from16 v15, p22

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    const/16 v16, 0x100

    goto :goto_16

    :cond_21
    const/16 v16, 0x80

    :goto_16
    or-int v4, v17, v16

    const v16, 0x12492493

    and-int v5, v30, v16

    const v6, 0x12492492

    const/16 v17, 0x0

    if-ne v5, v6, :cond_23

    and-int v5, v19, v16

    if-ne v5, v6, :cond_23

    and-int/lit16 v4, v4, 0x93

    const/16 v5, 0x92

    if-eq v4, v5, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v4, v17

    goto :goto_18

    :cond_23
    :goto_17
    const/4 v4, 0x1

    :goto_18
    and-int/lit8 v5, v30, 0x1

    invoke-virtual {v3, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v3}, Landroidx/paging/compose/LazyPagingItemsKt;->a(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Landroidx/paging/compose/LazyPagingItems;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v8, :cond_24

    invoke-static {v3}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v4

    :cond_24
    check-cast v4, Landroidx/compose/material3/SnackbarHostState;

    iget-boolean v8, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    if-eqz v8, :cond_25

    invoke-virtual {v5}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v8

    if-lez v8, :cond_25

    invoke-virtual {v5}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v8

    iget-object v8, v8, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of v8, v8, Landroidx/paging/LoadState$Loading;

    if-nez v8, :cond_25

    invoke-virtual {v5}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v8

    iget-object v8, v8, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of v8, v8, Landroidx/paging/LoadState$Loading;

    if-eqz v8, :cond_26

    invoke-virtual {v5}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v8

    if-nez v8, :cond_26

    :cond_25
    iget-boolean v8, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    if-eqz v8, :cond_27

    :cond_26
    const/16 v17, 0x1

    :cond_27
    sget-object v8, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v8, v8, v16

    const-string v0, "PSPStoreModeScreen"

    const/4 v1, 0x1

    if-eq v8, v1, :cond_29

    const/4 v1, 0x2

    if-ne v8, v1, :cond_28

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :cond_28
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_29
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_19
    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    move-object v8, v3

    new-instance v3, Lzl;

    move-object/from16 p23, v0

    move-object v0, v8

    move-object v13, v9

    move/from16 v14, v17

    move-object/from16 v9, p12

    move-object/from16 v8, p13

    move-object/from16 v17, v1

    move-object v1, v4

    move-object/from16 v4, p5

    invoke-direct/range {v3 .. v14}, Lzl;-><init>(Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)V

    move-object/from16 v20, v6

    const v4, -0x93f875b

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    new-instance v3, Lae0;

    const/16 v4, 0x15

    invoke-direct {v3, v1, v4}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v4, 0x5529e1a7

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    new-instance v2, Lw8;

    move-object/from16 v4, p1

    move-object/from16 v13, p7

    move-object/from16 v14, p10

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v6, p17

    move-object/from16 v7, p19

    move-object/from16 v8, p20

    move-object/from16 v9, p21

    move-object v3, v5

    move-object v5, v10

    move-object/from16 v16, v15

    move-object/from16 v10, p4

    move-object/from16 v15, p16

    invoke-direct/range {v2 .. v16}, Lw8;-><init>(Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;)V

    const v4, -0x320ae110    # -5.1405568E8f

    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    move-object/from16 v4, v17

    const v17, 0x30000c30

    move-object/from16 v5, v18

    const/16 v18, 0xf4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v14, p23

    move-object/from16 v16, v0

    move-object/from16 v7, v21

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v8, v16

    shr-int/lit8 v0, v30, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v2, 0x46

    or-int/2addr v0, v2

    const v2, 0xe000

    shl-int/lit8 v4, v19, 0x9

    and-int/2addr v2, v4

    or-int v10, v0, v2

    move-object/from16 v7, p6

    move-object v4, v1

    move-object v5, v3

    move-object v9, v8

    move-object/from16 v6, v20

    move-object/from16 v8, p11

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeSnackBarKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v9

    shr-int/lit8 v0, v30, 0xf

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v30, 0x12

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v19, 0xf

    and-int/lit16 v1, v1, 0x1c00

    or-int v9, v0, v1

    move-object/from16 v6, p8

    move-object/from16 v7, p18

    move-object v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt;->a(Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1a

    :cond_2a
    move-object v8, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    move-object v1, v0

    new-instance v0, Lpl0;

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

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p24

    move-object/from16 v35, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v24}, Lpl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function5;I)V

    move-object/from16 v1, v35

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method
