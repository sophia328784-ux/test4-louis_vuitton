.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPScreenKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "skipAnimations",
        "trackingFired",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v0, p27

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p9}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x2087ed94

    move-object/from16 v5, p26

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    :cond_5
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v3, v7

    :cond_7
    and-int/lit16 v7, v0, 0x6000

    const/16 v16, 0x4000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v16

    goto :goto_5

    :cond_8
    const/16 v17, 0x2000

    :goto_5
    or-int v3, v3, v17

    goto :goto_6

    :cond_9
    move-object/from16 v7, p4

    :goto_6
    const/high16 v17, 0x30000

    and-int v17, v0, v17

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    move-object/from16 v0, p5

    if-nez v17, :cond_b

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v17, v19

    goto :goto_7

    :cond_a
    move/from16 v17, v18

    :goto_7
    or-int v3, v3, v17

    :cond_b
    const/high16 v17, 0x180000

    and-int v17, p27, v17

    const/high16 v20, 0x80000

    const/high16 v21, 0x100000

    move-object/from16 v5, p6

    if-nez v17, :cond_d

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v17, v21

    goto :goto_8

    :cond_c
    move/from16 v17, v20

    :goto_8
    or-int v3, v3, v17

    :cond_d
    const/high16 v17, 0xc00000

    and-int v17, p27, v17

    const/high16 v22, 0x400000

    const/high16 v23, 0x800000

    move-object/from16 v6, p7

    if-nez v17, :cond_f

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    move/from16 v24, v23

    goto :goto_9

    :cond_e
    move/from16 v24, v22

    :goto_9
    or-int v3, v3, v24

    :cond_f
    const/high16 v24, 0x6000000

    and-int v24, p27, v24

    const/high16 v25, 0x2000000

    const/high16 v26, 0x4000000

    move-object/from16 v0, p8

    if-nez v24, :cond_11

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    move/from16 v24, v26

    goto :goto_a

    :cond_10
    move/from16 v24, v25

    :goto_a
    or-int v3, v3, v24

    :cond_11
    const/high16 v24, 0x30000000

    and-int v24, p27, v24

    const/high16 v27, 0x10000000

    const/high16 v28, 0x20000000

    move-object/from16 v8, p9

    if-nez v24, :cond_13

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    move/from16 v29, v28

    goto :goto_b

    :cond_12
    move/from16 v29, v27

    :goto_b
    or-int v3, v3, v29

    :cond_13
    move/from16 v32, v3

    move-object/from16 v3, p10

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v30, 0x4

    :goto_c
    move-object/from16 v9, p11

    goto :goto_d

    :cond_14
    const/16 v30, 0x2

    goto :goto_c

    :goto_d
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v31, 0x20

    goto :goto_e

    :cond_15
    const/16 v31, 0x10

    :goto_e
    or-int v30, v30, v31

    move-object/from16 v14, p12

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v33, 0x100

    goto :goto_f

    :cond_16
    const/16 v33, 0x80

    :goto_f
    or-int v30, v30, v33

    move-object/from16 v15, p13

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    const/16 v34, 0x800

    goto :goto_10

    :cond_17
    const/16 v34, 0x400

    :goto_10
    or-int v30, v30, v34

    move-object/from16 v10, p14

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    move/from16 v35, v16

    goto :goto_11

    :cond_18
    const/16 v35, 0x2000

    :goto_11
    or-int v30, v30, v35

    move-object/from16 v0, p15

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    move/from16 v35, v19

    goto :goto_12

    :cond_19
    move/from16 v35, v18

    :goto_12
    or-int v30, v30, v35

    move-object/from16 v0, p16

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1a

    move/from16 v20, v21

    :cond_1a
    or-int v20, v30, v20

    move-object/from16 v0, p17

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    move/from16 v22, v23

    :cond_1b
    or-int v20, v20, v22

    move-object/from16 v0, p18

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    move/from16 v25, v26

    :cond_1c
    or-int v20, v20, v25

    move-object/from16 v0, p19

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    move/from16 v27, v28

    :cond_1d
    or-int v35, v20, v27

    move-object/from16 v0, p20

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/16 v17, 0x4

    :goto_13
    move-object/from16 v0, p21

    goto :goto_14

    :cond_1e
    const/16 v17, 0x2

    goto :goto_13

    :goto_14
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v24, 0x20

    goto :goto_15

    :cond_1f
    const/16 v24, 0x10

    :goto_15
    or-int v17, v17, v24

    move-object/from16 v11, p22

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    const/16 v34, 0x100

    goto :goto_16

    :cond_20
    const/16 v34, 0x80

    :goto_16
    or-int v17, v17, v34

    move-object/from16 v12, p23

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_21

    const/16 v31, 0x800

    goto :goto_17

    :cond_21
    const/16 v31, 0x400

    :goto_17
    or-int v17, v17, v31

    move-object/from16 v0, p24

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    goto :goto_18

    :cond_22
    const/16 v16, 0x2000

    :goto_18
    or-int v16, v17, v16

    move-object/from16 v0, p25

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    move/from16 v18, v19

    :cond_23
    or-int v33, v16, v18

    const v16, 0x12492493

    and-int v0, v32, v16

    const v3, 0x12492492

    if-ne v0, v3, :cond_25

    and-int v0, v35, v16

    if-ne v0, v3, :cond_25

    const v0, 0x12493

    and-int v0, v33, v0

    const v3, 0x12492

    if-eq v0, v3, :cond_24

    goto :goto_19

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    and-int/lit8 v3, v32, 0x1

    invoke-virtual {v13, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3, v13}, Landroidx/paging/compose/LazyPagingItemsKt;->a(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Landroidx/paging/compose/LazyPagingItems;

    move-result-object v28

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_26

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v0

    :cond_26
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_27

    iget-boolean v1, v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v2, Landroidx/compose/runtime/MutableState;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v17, v2

    const-string v2, "PSPScreen"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;->a()Z

    move-result v2

    move-object/from16 v26, v3

    new-instance v3, Laj0;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Laj0;-><init>(I)V

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v13, v4}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    const v2, -0x1e41cfb0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v2

    goto :goto_1b

    :cond_28
    const/4 v2, 0x0

    const v3, -0x1e41cc41

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/WindowInsetsKt;->i(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v3

    :goto_1b
    new-instance v24, Lu1;

    const/16 v31, 0x16

    move-object/from16 v25, p3

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v9

    invoke-direct/range {v24 .. v31}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v3, v24

    const v4, 0x7712e930

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    new-instance v3, Lp9;

    move-object v4, v10

    move-object v10, v8

    move-object v8, v4

    move-object v4, v12

    move-object v12, v11

    move-object v11, v4

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p6

    move-object/from16 v7, p7

    move-object/from16 v6, v26

    invoke-direct/range {v3 .. v12}, Lp9;-><init>(Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v4, 0x6f1abfb1

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    new-instance v3, Lae0;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v4, 0x67229632

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v29

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/components/screens/e;

    move-object/from16 v4, p2

    move-object/from16 v18, p6

    move-object/from16 v19, p9

    move-object/from16 v21, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v22, p17

    move-object/from16 v11, p19

    move-object/from16 v23, p21

    move-object/from16 v6, p24

    move-object/from16 v12, p25

    move-object/from16 p26, v0

    move-object v0, v13

    move-object/from16 v20, v15

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v5, v28

    move-object/from16 v16, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p3

    invoke-direct/range {v3 .. v23}, Lcom/vuitton/android/presentation/screen/plp/components/screens/e;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Landroidx/paging/compose/LazyPagingItems;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const v4, 0x793b857b

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const v17, 0x30000db0

    const/16 v18, 0xf0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v16, v0

    move-object v4, v1

    move-object v14, v2

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v29

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v8, v16

    shr-int/lit8 v0, v32, 0x3

    and-int/lit16 v0, v0, 0x1c00

    const/16 v1, 0x46

    or-int/2addr v0, v1

    shr-int/lit8 v1, v32, 0xc

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    shl-int/lit8 v2, v33, 0xf

    and-int/2addr v1, v2

    or-int v11, v0, v1

    const/4 v12, 0x4

    const/4 v6, 0x0

    move-object/from16 v7, p4

    move-object/from16 v9, p20

    move-object/from16 v4, p26

    move-object v10, v8

    move-object/from16 v5, v28

    move-object/from16 v8, p8

    invoke-static/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/paging/compose/LazyPagingItems;ZLkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v10

    shr-int/lit8 v0, v32, 0x9

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v35, 0xf

    and-int/lit16 v1, v1, 0x1c00

    or-int v9, v0, v1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p18

    move-object/from16 v4, v28

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt;->a(Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1c

    :cond_29
    move-object v8, v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    move-object v1, v0

    new-instance v0, Lml0;

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

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p27

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lml0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v36

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method
