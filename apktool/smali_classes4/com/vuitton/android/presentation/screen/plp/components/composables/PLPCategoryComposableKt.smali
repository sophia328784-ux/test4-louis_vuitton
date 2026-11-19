.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "plpCategoryViewState",
        "",
        "currentCategoryId",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;",
        "quickAccessFiltersViewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 78

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v8, p18

    move/from16 v9, p26

    move/from16 v10, p27

    const-string v1, "PLPCategoryComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x685ed753

    move-object/from16 v4, p25

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v9, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v9

    :goto_1
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    move/from16 p0, v6

    if-eqz v16, :cond_3

    const/16 v16, 0x20

    goto :goto_2

    :cond_3
    const/16 v16, 0x10

    :goto_2
    or-int v16, p0, v16

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x80

    if-eqz v17, :cond_4

    const/16 v17, 0x100

    goto :goto_3

    :cond_4
    move/from16 v17, v18

    :goto_3
    or-int v16, v16, v17

    and-int/lit16 v4, v9, 0xc00

    const/16 v19, 0x400

    const/16 v20, 0x800

    if-nez v4, :cond_6

    move-object/from16 v4, p3

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v20

    goto :goto_4

    :cond_5
    move/from16 v21, v19

    :goto_4
    or-int v16, v16, v21

    :goto_5
    move/from16 v5, v16

    goto :goto_6

    :cond_6
    move-object/from16 v4, p3

    goto :goto_5

    :goto_6
    and-int/lit8 v16, v10, 0x10

    const/16 v22, 0x2000

    if-eqz v16, :cond_7

    or-int/lit16 v5, v5, 0x6000

    :goto_7
    move-object/from16 v6, p5

    goto :goto_9

    :cond_7
    move-object/from16 v6, p4

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    const/16 v25, 0x4000

    goto :goto_8

    :cond_8
    move/from16 v25, v22

    :goto_8
    or-int v5, v5, v25

    goto :goto_7

    :goto_9
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    const/high16 v26, 0x20000

    const/high16 v27, 0x10000

    if-eqz v25, :cond_9

    move/from16 v25, v26

    goto :goto_a

    :cond_9
    move/from16 v25, v27

    :goto_a
    or-int v5, v5, v25

    move-object/from16 v6, p6

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    const/high16 v28, 0x80000

    if-eqz v25, :cond_a

    const/high16 v25, 0x100000

    goto :goto_b

    :cond_a
    move/from16 v25, v28

    :goto_b
    or-int v5, v5, v25

    move-object/from16 v6, p7

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    const/high16 v30, 0x400000

    const/high16 v31, 0x800000

    if-eqz v29, :cond_b

    move/from16 v29, v31

    goto :goto_c

    :cond_b
    move/from16 v29, v30

    :goto_c
    or-int v5, v5, v29

    move-object/from16 v6, p8

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    const/high16 v32, 0x2000000

    if-eqz v29, :cond_c

    const/high16 v29, 0x4000000

    goto :goto_d

    :cond_c
    move/from16 v29, v32

    :goto_d
    or-int v5, v5, v29

    and-int/lit16 v6, v10, 0x200

    const/high16 v33, 0x10000000

    const/high16 v34, 0x20000000

    if-eqz v6, :cond_d

    const/high16 v35, 0x30000000

    or-int v5, v5, v35

    move-object/from16 v35, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_d
    move-object/from16 v35, v0

    move-object/from16 v0, p9

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    move/from16 v36, v34

    goto :goto_e

    :cond_e
    move/from16 v36, v33

    :goto_e
    or-int v5, v5, v36

    :goto_f
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    const/16 v36, 0x4

    goto :goto_10

    :cond_f
    const/16 v36, 0x2

    :goto_10
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_10

    const/16 v37, 0x20

    goto :goto_11

    :cond_10
    const/16 v37, 0x10

    :goto_11
    or-int v36, v36, v37

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    const/16 v37, 0x100

    goto :goto_12

    :cond_11
    move/from16 v37, v18

    :goto_12
    or-int v36, v36, v37

    move/from16 v37, v6

    move-object/from16 v6, p13

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_12

    move/from16 v38, v20

    goto :goto_13

    :cond_12
    move/from16 v38, v19

    :goto_13
    or-int v36, v36, v38

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    const/16 v38, 0x4000

    goto :goto_14

    :cond_13
    move/from16 v38, v22

    :goto_14
    or-int v36, v36, v38

    move-object/from16 v6, p15

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_14

    goto :goto_15

    :cond_14
    move/from16 v26, v27

    :goto_15
    or-int v26, v36, v26

    and-int v27, v10, v27

    if-eqz v27, :cond_15

    const/high16 v28, 0x180000

    or-int v26, v26, v28

    move-object/from16 v0, p16

    :goto_16
    move-object/from16 v6, p17

    goto :goto_17

    :cond_15
    move-object/from16 v0, p16

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    const/high16 v28, 0x100000

    :cond_16
    or-int v26, v26, v28

    goto :goto_16

    :goto_17
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    move/from16 v30, v31

    :cond_17
    or-int v26, v26, v30

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    const/high16 v32, 0x4000000

    :cond_18
    or-int v26, v26, v32

    move-object/from16 v6, p19

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    move/from16 v33, v34

    :cond_19
    or-int v6, v26, v33

    move/from16 v26, v6

    move-object/from16 v6, p20

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x4

    :goto_18
    move-object/from16 v6, p21

    goto :goto_19

    :cond_1a
    const/16 v28, 0x2

    goto :goto_18

    :goto_19
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    const/16 v30, 0x20

    goto :goto_1a

    :cond_1b
    const/16 v30, 0x10

    :goto_1a
    or-int v28, v28, v30

    move-object/from16 v6, p22

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/16 v18, 0x100

    :cond_1c
    or-int v18, v28, v18

    move-object/from16 v6, p23

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1d

    move/from16 v19, v20

    :cond_1d
    or-int v18, v18, v19

    move-object/from16 v6, p24

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    const/16 v22, 0x4000

    :cond_1e
    or-int v6, v18, v22

    const v18, 0x12492493

    and-int v0, v5, v18

    move/from16 v19, v3

    const v3, 0x12492492

    if-ne v0, v3, :cond_20

    and-int v0, v26, v18

    if-ne v0, v3, :cond_20

    and-int/lit16 v0, v6, 0x2493

    const/16 v3, 0x2492

    if-eq v0, v3, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c

    :cond_20
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    and-int/lit8 v3, v5, 0x1

    invoke-virtual {v14, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_76

    if-eqz v19, :cond_21

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move/from16 v77, v16

    move-object/from16 v16, v0

    move/from16 v0, v77

    goto :goto_1d

    :cond_21
    move/from16 v0, v16

    move-object/from16 v16, v35

    :goto_1d
    if-eqz v0, :cond_22

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v22, v0

    goto :goto_1e

    :cond_22
    move-object/from16 v22, p4

    :goto_1e
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v37, :cond_24

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_23

    new-instance v1, Lfj0;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lfj0;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v31, v1

    goto :goto_1f

    :cond_24
    move-object/from16 v31, p9

    :goto_1f
    const/4 v1, 0x7

    if-eqz v27, :cond_26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_25

    new-instance v3, Laj0;

    invoke-direct {v3, v1}, Laj0;-><init>(I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v3, Lkotlin/jvm/functions/Function2;

    goto :goto_20

    :cond_26
    move-object/from16 v3, p16

    :goto_20
    sget-object v18, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    sget-object v1, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-object/from16 p9, v1

    invoke-static {v14}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v1

    move-object/from16 p16, v3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    move/from16 v19, v6

    const/4 v6, 0x0

    move/from16 v27, v5

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v6, v14, v5, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    move-object/from16 p4, v3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->C2()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v6, v14, v5, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-static {v9, v6, v14, v5, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v32, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v45, 0xfff

    const/16 v46, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v32 .. v46}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v32

    invoke-static {v4, v5, v14}, Landroidx/lifecycle/compose/FlowExtKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    const-string v28, ""

    if-nez v5, :cond_27

    move-object/from16 v5, v28

    :cond_27
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v6, v30

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-nez v6, :cond_28

    goto :goto_21

    :cond_28
    move-object/from16 v28, v6

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    move/from16 v30, v6

    and-int/lit8 v6, v27, 0x70

    move-object/from16 v33, v4

    const/16 v4, 0x20

    if-eq v6, v4, :cond_29

    const/4 v4, 0x0

    goto :goto_22

    :cond_29
    const/4 v4, 0x1

    :goto_22
    or-int v4, v30, v4

    move/from16 v30, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v30, :cond_2b

    if-ne v4, v0, :cond_2a

    goto :goto_23

    :cond_2a
    move-object/from16 v30, v5

    goto :goto_24

    :cond_2b
    :goto_23
    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$6$1;

    move-object/from16 v30, v5

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$6$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_24
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v4, 0x20

    if-eq v6, v4, :cond_2c

    const/4 v4, 0x0

    goto :goto_25

    :cond_2c
    const/4 v4, 0x1

    :goto_25
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2e

    if-ne v5, v0, :cond_2d

    goto :goto_26

    :cond_2d
    const/4 v4, 0x0

    goto :goto_27

    :cond_2e
    :goto_26
    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$7$1;

    const/4 v4, 0x0

    invoke-direct {v5, v2, v4}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$7$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_27
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2f

    if-ne v5, v0, :cond_30

    :cond_2f
    new-instance v5, Lxg0;

    const/16 v1, 0x9

    invoke-direct {v5, v7, v3, v1}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v51, v5

    check-cast v51, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->Y2()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    move/from16 v3, v26

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v26

    const/16 v5, 0x20

    if-eq v6, v5, :cond_31

    const/16 v36, 0x0

    goto :goto_28

    :cond_31
    const/16 v36, 0x1

    :goto_28
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v36, :cond_32

    if-ne v1, v0, :cond_33

    :cond_32
    move-object v1, v0

    goto :goto_29

    :cond_33
    move-object/from16 v71, p9

    move-object/from16 v74, v0

    move v15, v3

    move-object/from16 v40, v4

    move-object/from16 p0, v9

    move/from16 v10, v27

    move-object/from16 v73, v28

    move-object/from16 v72, v30

    const/16 v8, 0x100

    move v9, v6

    goto :goto_2a

    :goto_29
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$8$1;

    move/from16 v36, v5

    const-string v5, "refreshWishlist()V"

    move/from16 v37, v6

    const/4 v6, 0x0

    move-object/from16 v38, v1

    const/4 v1, 0x0

    move/from16 v39, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-object/from16 v40, v4

    const-string v4, "refreshWishlist"

    move-object/from16 v71, p9

    move-object/from16 p0, v9

    move/from16 v10, v27

    move-object/from16 v73, v28

    move-object/from16 v72, v30

    move/from16 v9, v37

    move-object/from16 v74, v38

    move/from16 v15, v39

    const/16 v8, 0x100

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2a
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/reflect/KFunction;

    and-int/lit16 v0, v10, 0x380

    if-eq v0, v8, :cond_34

    const/4 v1, 0x0

    goto :goto_2b

    :cond_34
    const/4 v1, 0x1

    :goto_2b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_36

    move-object/from16 v1, v74

    if-ne v2, v1, :cond_35

    :goto_2c
    move v2, v0

    goto :goto_2d

    :cond_35
    move/from16 v75, v0

    move-object v8, v1

    goto :goto_2e

    :cond_36
    move-object/from16 v1, v74

    goto :goto_2c

    :goto_2d
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$9$1;

    const-string v5, "updateCategory(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object/from16 v38, v1

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v4, "updateCategory"

    move/from16 v75, v2

    move-object/from16 v8, v38

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2e
    move-object/from16 v24, v2

    check-cast v24, Lkotlin/reflect/KFunction;

    const/16 v0, 0x20

    if-eq v9, v0, :cond_37

    const/4 v1, 0x0

    goto :goto_2f

    :cond_37
    const/4 v1, 0x1

    :goto_2f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_38

    if-ne v2, v8, :cond_39

    :cond_38
    move v4, v0

    goto :goto_30

    :cond_39
    move/from16 v27, v10

    move v10, v0

    goto :goto_31

    :goto_30
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$10$1;

    const-string v5, "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move/from16 v36, v4

    const-string v4, "updateCurrentGridMode"

    move-object/from16 v2, p1

    move/from16 v27, v10

    move/from16 v10, v36

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_31
    move-object/from16 v25, v2

    check-cast v25, Lkotlin/reflect/KFunction;

    if-eq v9, v10, :cond_3a

    const/4 v0, 0x0

    goto :goto_32

    :cond_3a
    const/4 v0, 0x1

    :goto_32
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3c

    if-ne v1, v8, :cond_3b

    goto :goto_33

    :cond_3b
    move-object/from16 v2, p1

    goto :goto_34

    :cond_3c
    :goto_33
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$11$1;

    const-string v5, "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    const-string v4, "onWishlistAnimationEnded"

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_34
    check-cast v1, Lkotlin/reflect/KFunction;

    and-int/lit16 v0, v15, 0x380

    const/16 v3, 0x100

    if-ne v0, v3, :cond_3d

    const/4 v0, 0x1

    goto :goto_35

    :cond_3d
    const/4 v0, 0x0

    :goto_35
    if-eq v9, v10, :cond_3e

    const/4 v3, 0x0

    goto :goto_36

    :cond_3e
    const/4 v3, 0x1

    :goto_36
    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v6, 0xe

    if-nez v0, :cond_3f

    if-ne v3, v8, :cond_40

    :cond_3f
    new-instance v3, Lwd0;

    invoke-direct {v3, v13, v2, v6}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->B2()Z

    move-result v3

    if-eqz v3, :cond_41

    move-object/from16 v49, v0

    goto :goto_37

    :cond_41
    move-object/from16 v49, v40

    :goto_37
    move-object/from16 v28, v17

    check-cast v28, Lkotlin/jvm/functions/Function0;

    if-eq v9, v10, :cond_42

    const/4 v0, 0x0

    goto :goto_38

    :cond_42
    const/4 v0, 0x1

    :goto_38
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_43

    if-ne v3, v8, :cond_44

    :cond_43
    new-instance v3, Lrh0;

    const/16 v0, 0x10

    invoke-direct {v3, v2, v7, v0}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_44
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function0;

    if-eq v9, v10, :cond_45

    const/4 v0, 0x0

    goto :goto_39

    :cond_45
    const/4 v0, 0x1

    :goto_39
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_46

    if-ne v3, v8, :cond_47

    :cond_46
    new-instance v3, Lx60;

    const/16 v0, 0x18

    invoke-direct {v3, v2, v0}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    move-object/from16 v30, v3

    check-cast v30, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x14

    if-nez v0, :cond_48

    if-ne v3, v8, :cond_49

    :cond_48
    new-instance v3, Lje;

    invoke-direct {v3, v7, v4}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_49
    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function0;

    if-eq v9, v10, :cond_4a

    const/4 v0, 0x0

    goto :goto_3a

    :cond_4a
    const/4 v0, 0x1

    :goto_3a
    and-int/lit8 v3, v15, 0xe

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4b

    const/4 v3, 0x1

    goto :goto_3b

    :cond_4b
    const/4 v3, 0x0

    :goto_3b
    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_4c

    if-ne v3, v8, :cond_4d

    :cond_4c
    new-instance v3, Lrh0;

    const/16 v0, 0xf

    invoke-direct {v3, v2, v11, v0}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object/from16 v36, v3

    check-cast v36, Lkotlin/jvm/functions/Function0;

    move-object/from16 v37, v24

    check-cast v37, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v15, 0x70

    if-ne v0, v10, :cond_4e

    const/4 v0, 0x1

    goto :goto_3c

    :cond_4e
    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_4f

    if-ne v3, v8, :cond_50

    :cond_4f
    new-instance v3, Lk0;

    const/16 v0, 0x16

    invoke-direct {v3, v12, v0}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_50
    move-object/from16 v38, v3

    check-cast v38, Lkotlin/jvm/functions/Function1;

    move-object/from16 v39, v25

    check-cast v39, Lkotlin/jvm/functions/Function1;

    if-eq v9, v10, :cond_51

    const/4 v0, 0x0

    goto :goto_3d

    :cond_51
    const/4 v0, 0x1

    :goto_3d
    const/high16 v3, 0xe000000

    and-int/2addr v3, v15

    const/high16 v5, 0x4000000

    if-ne v3, v5, :cond_52

    const/4 v3, 0x1

    goto :goto_3e

    :cond_52
    const/4 v3, 0x0

    :goto_3e
    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_54

    if-ne v3, v8, :cond_53

    goto :goto_3f

    :cond_53
    move-object/from16 v5, p18

    goto :goto_40

    :cond_54
    :goto_3f
    new-instance v3, Lxg0;

    const/16 v0, 0xa

    move-object/from16 v5, p18

    invoke-direct {v3, v2, v5, v0}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_40
    move-object/from16 v40, v3

    check-cast v40, Lkotlin/jvm/functions/Function1;

    if-eq v9, v10, :cond_55

    const/4 v0, 0x0

    :goto_41
    move/from16 p4, v6

    move/from16 v3, v75

    const/16 v6, 0x100

    goto :goto_42

    :cond_55
    const/4 v0, 0x1

    goto :goto_41

    :goto_42
    if-eq v3, v6, :cond_56

    const/4 v6, 0x0

    goto :goto_43

    :cond_56
    const/4 v6, 0x1

    :goto_43
    or-int/2addr v0, v6

    const/high16 p9, 0x380000

    and-int v6, v15, p9

    const/high16 v4, 0x100000

    if-ne v6, v4, :cond_57

    const/4 v4, 0x1

    goto :goto_44

    :cond_57
    const/4 v4, 0x0

    :goto_44
    or-int/2addr v0, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x5

    if-nez v0, :cond_59

    if-ne v4, v8, :cond_58

    goto :goto_45

    :cond_58
    move-object/from16 v0, p2

    move-object/from16 v5, p16

    goto :goto_46

    :cond_59
    :goto_45
    new-instance v4, Lgi0;

    move-object/from16 v0, p2

    move-object/from16 v5, p16

    invoke-direct {v4, v2, v0, v5, v6}, Lgi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_46
    move-object/from16 v41, v4

    check-cast v41, Lkotlin/jvm/functions/Function2;

    const/16 v4, 0x100

    if-eq v3, v4, :cond_5a

    const/4 v3, 0x0

    :goto_47
    move-object/from16 v4, p0

    goto :goto_48

    :cond_5a
    const/4 v3, 0x1

    goto :goto_47

    :goto_48
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    or-int v3, v3, v23

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5b

    if-ne v6, v8, :cond_5c

    :cond_5b
    new-instance v6, Lfk0;

    const/4 v3, 0x0

    invoke-direct {v6, v0, v4, v3}, Lfk0;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5c
    move-object/from16 v43, v6

    check-cast v43, Lkotlin/jvm/functions/Function2;

    move-object/from16 v44, v1

    check-cast v44, Lkotlin/jvm/functions/Function1;

    if-eq v9, v10, :cond_5d

    const/4 v1, 0x0

    goto :goto_49

    :cond_5d
    const/4 v1, 0x1

    :goto_49
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_5f

    if-ne v3, v8, :cond_5e

    goto :goto_4a

    :cond_5e
    const/4 v1, 0x1

    goto :goto_4b

    :cond_5f
    :goto_4a
    new-instance v3, Ldk0;

    const/4 v1, 0x1

    invoke-direct {v3, v2, v1}, Ldk0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_4b
    move-object/from16 v45, v3

    check-cast v45, Lkotlin/jvm/functions/Function2;

    if-eq v9, v10, :cond_60

    const/4 v3, 0x0

    goto :goto_4c

    :cond_60
    move v3, v1

    :goto_4c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_61

    if-ne v4, v8, :cond_62

    :cond_61
    new-instance v4, Ldk0;

    const/4 v3, 0x2

    invoke-direct {v4, v2, v3}, Ldk0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_62
    move-object/from16 v47, v4

    check-cast v47, Lkotlin/jvm/functions/Function2;

    if-eq v9, v10, :cond_63

    const/4 v3, 0x0

    goto :goto_4d

    :cond_63
    move v3, v1

    :goto_4d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_64

    if-ne v4, v8, :cond_65

    :cond_64
    new-instance v4, Lxe0;

    const/4 v3, 0x5

    invoke-direct {v4, v2, v3}, Lxe0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_65
    move-object/from16 v48, v4

    check-cast v48, Lkotlin/jvm/functions/Function3;

    const v6, 0xe000

    and-int v3, v15, v6

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_66

    move v3, v1

    goto :goto_4e

    :cond_66
    const/4 v3, 0x0

    :goto_4e
    if-eq v9, v10, :cond_67

    const/4 v4, 0x0

    goto :goto_4f

    :cond_67
    move v4, v1

    :goto_4f
    or-int/2addr v3, v4

    move-object/from16 v4, v72

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    move-object/from16 v1, v73

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    or-int v3, v3, v23

    move/from16 p0, v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_69

    if-ne v6, v8, :cond_68

    goto :goto_50

    :cond_68
    move-object/from16 v3, p14

    goto :goto_51

    :cond_69
    :goto_50
    new-instance v6, Luv;

    move-object/from16 v3, p14

    invoke-direct {v6, v3, v2, v4, v1}, Luv;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_51
    move-object/from16 v50, v6

    check-cast v50, Lkotlin/jvm/functions/Function2;

    if-eq v9, v10, :cond_6a

    const/4 v6, 0x0

    goto :goto_52

    :cond_6a
    const/4 v6, 0x1

    :goto_52
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_6b

    if-ne v10, v8, :cond_6c

    :cond_6b
    new-instance v10, Ltb0;

    const/16 v6, 0x14

    invoke-direct {v10, v2, v6}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6c
    move-object/from16 v54, v10

    check-cast v54, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x20

    if-eq v9, v10, :cond_6d

    const/4 v6, 0x0

    goto :goto_53

    :cond_6d
    const/4 v6, 0x1

    :goto_53
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_6e

    if-ne v10, v8, :cond_6f

    :cond_6e
    new-instance v10, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$27$1;

    invoke-direct {v10, v2}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$27$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6f
    move-object/from16 v55, v10

    check-cast v55, Lkotlin/jvm/functions/Function2;

    const/16 v10, 0x20

    if-eq v9, v10, :cond_70

    const/4 v6, 0x0

    goto :goto_54

    :cond_70
    const/4 v6, 0x1

    :goto_54
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_72

    if-ne v10, v8, :cond_71

    goto :goto_55

    :cond_71
    const/4 v6, 0x0

    goto :goto_56

    :cond_72
    :goto_55
    new-instance v10, Ldk0;

    const/4 v6, 0x0

    invoke-direct {v10, v2, v6}, Ldk0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_56
    move-object/from16 v57, v10

    check-cast v57, Lkotlin/jvm/functions/Function2;

    const/16 v10, 0x20

    if-eq v9, v10, :cond_73

    :goto_57
    move-object/from16 v9, v71

    goto :goto_58

    :cond_73
    const/4 v6, 0x1

    goto :goto_57

    :goto_58
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_75

    if-ne v10, v8, :cond_74

    goto :goto_59

    :cond_74
    move-object v6, v5

    goto :goto_5a

    :cond_75
    :goto_59
    new-instance v0, Lk3;

    move-object v6, v5

    const/16 v5, 0x19

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v10, v0

    :goto_5a
    move-object/from16 v59, v10

    check-cast v59, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v27, 0xe

    const/high16 v1, 0x6000000

    or-int/2addr v0, v1

    move/from16 v10, v27

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v10, 0x6

    and-int v1, v1, p9

    or-int v64, v0, v1

    shr-int/lit8 v0, v10, 0xc

    and-int/lit8 v1, v0, 0x70

    shr-int/lit8 v2, v10, 0x6

    and-int v2, v2, p0

    or-int/2addr v1, v2

    const/high16 v2, 0x70000

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x3

    and-int v3, v1, p9

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int v65, v0, v1

    shl-int/lit8 v0, v15, 0x9

    and-int v66, v0, p9

    shr-int/lit8 v0, v15, 0xf

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v15, 0x3

    and-int v1, v1, p9

    or-int/2addr v0, v1

    shr-int/lit8 v1, v15, 0x6

    and-int/2addr v1, v3

    or-int v67, v0, v1

    and-int/lit8 v0, v19, 0xe

    shl-int/lit8 v1, v19, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shl-int/lit8 v1, v19, 0x6

    and-int v3, v1, p0

    or-int/2addr v0, v3

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v1, v1, p9

    or-int v68, v0, v1

    const/16 v69, 0x200

    const/16 v70, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v19, p3

    move-object/from16 v27, p5

    move-object/from16 v42, p13

    move-object/from16 v46, p15

    move-object/from16 v52, p17

    move-object/from16 v53, p19

    move-object/from16 v56, p20

    move-object/from16 v58, p21

    move-object/from16 v60, p22

    move-object/from16 v61, p23

    move-object/from16 v62, p24

    move-object/from16 v63, v14

    move-object/from16 v29, v17

    move-object/from16 v17, v32

    move-object/from16 v23, v33

    move-object/from16 v18, v34

    move-object/from16 v20, v35

    move-object/from16 v32, p7

    move-object/from16 v33, p8

    move-object/from16 v35, v7

    move-object/from16 v34, v30

    move-object/from16 v30, p6

    invoke-static/range {v16 .. v70}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLandroidx/compose/ui/unit/Dp;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIIIIII)V

    move-object/from16 v17, v6

    move-object/from16 v1, v16

    move-object/from16 v5, v22

    move-object/from16 v10, v31

    goto :goto_5b

    :cond_76
    move-object/from16 v63, v14

    invoke-virtual/range {v63 .. v63}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object/from16 v10, p9

    move-object/from16 v17, p16

    move-object/from16 v1, v35

    :goto_5b
    invoke-virtual/range {v63 .. v63}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_77

    move-object v2, v0

    new-instance v0, Lek0;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p26

    move/from16 v27, p27

    move-object/from16 v76, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v27}, Lek0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    move-object/from16 v2, v76

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_77
    return-void
.end method
