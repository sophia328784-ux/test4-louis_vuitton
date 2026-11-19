.class public abstract Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "skuToRefresh",
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;",
        "viewState",
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
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p9}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p15 .. p19}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x1651ad8d

    move-object/from16 v3, p34

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p35, v3

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x100

    goto :goto_1

    :cond_1
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v3, v7

    move-object/from16 v7, p3

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x800

    goto :goto_2

    :cond_2
    const/16 v10, 0x400

    :goto_2
    or-int/2addr v3, v10

    move-object/from16 v10, p4

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x4000

    goto :goto_3

    :cond_3
    const/16 v13, 0x2000

    :goto_3
    or-int/2addr v3, v13

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    const/high16 v16, 0x10000

    const/high16 v17, 0x20000

    if-eqz v13, :cond_4

    move/from16 v13, v17

    goto :goto_4

    :cond_4
    move/from16 v13, v16

    :goto_4
    or-int/2addr v3, v13

    move-object/from16 v13, p6

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/high16 v19, 0x80000

    const/high16 v20, 0x100000

    if-eqz v18, :cond_5

    move/from16 v18, v20

    goto :goto_5

    :cond_5
    move/from16 v18, v19

    :goto_5
    or-int v3, v3, v18

    move-object/from16 v5, p7

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/high16 v21, 0x400000

    const/high16 v22, 0x800000

    if-eqz v18, :cond_6

    move/from16 v18, v22

    goto :goto_6

    :cond_6
    move/from16 v18, v21

    :goto_6
    or-int v3, v3, v18

    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    const/high16 v24, 0x2000000

    const/high16 v25, 0x4000000

    if-eqz v23, :cond_7

    move/from16 v23, v25

    goto :goto_7

    :cond_7
    move/from16 v23, v24

    :goto_7
    or-int v3, v3, v23

    move-object/from16 v9, p9

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    const/high16 v27, 0x10000000

    const/high16 v28, 0x20000000

    if-eqz v26, :cond_8

    move/from16 v26, v28

    goto :goto_8

    :cond_8
    move/from16 v26, v27

    :goto_8
    or-int v36, v3, v26

    move-object/from16 v3, p10

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v29, 0x4

    :goto_9
    move-object/from16 v11, p11

    goto :goto_a

    :cond_9
    const/16 v29, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    const/16 v32, 0x20

    if-eqz v30, :cond_a

    move/from16 v30, v32

    goto :goto_b

    :cond_a
    const/16 v30, 0x10

    :goto_b
    or-int v29, v29, v30

    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    const/16 v33, 0x100

    goto :goto_c

    :cond_b
    const/16 v33, 0x80

    :goto_c
    or-int v29, v29, v33

    move-object/from16 v12, p13

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    const/16 v34, 0x800

    goto :goto_d

    :cond_c
    const/16 v34, 0x400

    :goto_d
    or-int v29, v29, v34

    move-object/from16 v14, p14

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    const/16 v35, 0x4000

    goto :goto_e

    :cond_d
    const/16 v35, 0x2000

    :goto_e
    or-int v29, v29, v35

    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_e

    move/from16 v37, v17

    goto :goto_f

    :cond_e
    move/from16 v37, v16

    :goto_f
    or-int v29, v29, v37

    move-object/from16 v2, p16

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    move/from16 v37, v20

    goto :goto_10

    :cond_f
    move/from16 v37, v19

    :goto_10
    or-int v29, v29, v37

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_10

    move/from16 v37, v22

    goto :goto_11

    :cond_10
    move/from16 v37, v21

    :goto_11
    or-int v29, v29, v37

    move-object/from16 v2, p18

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    move/from16 v37, v25

    goto :goto_12

    :cond_11
    move/from16 v37, v24

    :goto_12
    or-int v29, v29, v37

    move-object/from16 v2, p19

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_12

    move/from16 v37, v28

    goto :goto_13

    :cond_12
    move/from16 v37, v27

    :goto_13
    or-int v29, v29, v37

    move-object/from16 v2, p20

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    const/16 v37, 0x4

    :goto_14
    move-object/from16 v2, p21

    goto :goto_15

    :cond_13
    const/16 v37, 0x2

    goto :goto_14

    :goto_15
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_14

    move/from16 v38, v32

    goto :goto_16

    :cond_14
    const/16 v38, 0x10

    :goto_16
    or-int v37, v37, v38

    move-object/from16 v2, p22

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    const/16 v38, 0x100

    goto :goto_17

    :cond_15
    const/16 v38, 0x80

    :goto_17
    or-int v37, v37, v38

    move-object/from16 v2, p23

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    const/16 v38, 0x800

    goto :goto_18

    :cond_16
    const/16 v38, 0x400

    :goto_18
    or-int v37, v37, v38

    move-object/from16 v2, p24

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    const/16 v34, 0x4000

    goto :goto_19

    :cond_17
    const/16 v34, 0x2000

    :goto_19
    or-int v34, v37, v34

    move-object/from16 v2, p25

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    move/from16 v16, v17

    :cond_18
    or-int v16, v34, v16

    move-object/from16 v2, p26

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move/from16 v19, v20

    :cond_19
    or-int v16, v16, v19

    move-object/from16 v2, p27

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move/from16 v21, v22

    :cond_1a
    or-int v16, v16, v21

    move-object/from16 v2, p28

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move/from16 v24, v25

    :cond_1b
    or-int v16, v16, v24

    move-object/from16 v2, p29

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move/from16 v27, v28

    :cond_1c
    or-int v16, v16, v27

    move-object/from16 v2, p30

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/16 v17, 0x4

    :goto_1a
    move-object/from16 v2, p31

    goto :goto_1b

    :cond_1d
    const/16 v17, 0x2

    goto :goto_1a

    :goto_1b
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    goto :goto_1c

    :cond_1e
    const/16 v32, 0x10

    :goto_1c
    or-int v17, v17, v32

    move-object/from16 v2, p32

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/16 v18, 0x100

    goto :goto_1d

    :cond_1f
    const/16 v18, 0x80

    :goto_1d
    or-int v17, v17, v18

    move-object/from16 v2, p33

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    const/16 v33, 0x800

    goto :goto_1e

    :cond_20
    const/16 v33, 0x400

    :goto_1e
    or-int v2, v17, v33

    const v17, 0x12492493

    and-int v3, v36, v17

    const v4, 0x12492492

    const/16 v37, 0x1

    if-ne v3, v4, :cond_22

    and-int v3, v29, v17

    if-ne v3, v4, :cond_22

    and-int v3, v16, v17

    if-ne v3, v4, :cond_22

    and-int/lit16 v2, v2, 0x493

    const/16 v3, 0x492

    if-eq v2, v3, :cond_21

    goto :goto_1f

    :cond_21
    const/4 v2, 0x0

    goto :goto_20

    :cond_22
    :goto_1f
    move/from16 v2, v37

    :goto_20
    and-int/lit8 v3, v36, 0x1

    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v35, v2

    check-cast v35, Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v2

    invoke-static {v1}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v4

    const/4 v0, 0x2

    const/16 v38, 0x0

    new-array v0, v0, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v2, v0, v38

    aput-object v4, v0, v37

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v2, -0x3762741a

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$$inlined$entryProvider$default$1;

    new-instance v4, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v4, v2}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/b;

    move-object/from16 v16, v8

    move-object v8, v5

    move-object v5, v10

    move-object v10, v9

    move-object/from16 v9, v16

    move-object/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v23, p18

    move-object/from16 v19, p19

    move-object/from16 v21, p20

    move-object/from16 v20, p21

    move-object/from16 v22, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v39, v0

    move-object v0, v2

    move-object/from16 v41, v3

    move-object/from16 v40, v4

    move-object v4, v7

    move-object/from16 v17, v15

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object v7, v6

    move-object v6, v13

    move-object v15, v14

    move-object/from16 v13, p12

    move-object v14, v12

    move-object v12, v11

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v35}, Lcom/vuitton/android/presentation/screen/pdp/b;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object v13, v2

    move-object v14, v7

    move-object/from16 v2, v35

    const v3, 0x59525ad5

    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v6, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$2;

    invoke-direct {v7, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    move-object/from16 v4, v40

    invoke-virtual {v4, v6, v3, v7, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/c;

    move-object/from16 v3, p0

    invoke-direct {v1, v2, v3, v13, v14}, Lcom/vuitton/android/presentation/screen/pdp/c;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lkotlin/jvm/functions/Function0;)V

    const v2, -0xf3683a8

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;

    invoke-virtual {v5, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$4;

    invoke-direct {v7, v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v5, v2, v7, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v10, Landroidx/navigation3/runtime/a;

    invoke-direct {v10, v4}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    and-int/lit8 v2, v36, 0xe

    const/4 v4, 0x4

    if-eq v2, v4, :cond_24

    goto :goto_21

    :cond_24
    move/from16 v1, v37

    :goto_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_25

    move-object/from16 v1, v41

    if-ne v4, v1, :cond_26

    goto :goto_22

    :cond_25
    move-object/from16 v1, v41

    :goto_22
    new-instance v4, Lx0;

    const/16 v5, 0xd

    invoke-direct {v4, v3, v5}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_27

    new-instance v5, Lyk0;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lyk0;-><init>(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_28

    new-instance v5, Lyk0;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lyk0;-><init>(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_29

    new-instance v5, Laj0;

    const/16 v1, 0x10

    invoke-direct {v5, v1}, Laj0;-><init>(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v1, 0x30000000

    or-int v12, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v11, v0

    move-object v0, v3

    move-object v3, v4

    move-object/from16 v4, v39

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    move-object v0, v11

    goto :goto_23

    :cond_2a
    move-object/from16 v13, p2

    move-object v0, v1

    move-object v14, v6

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_23
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    move-object v1, v0

    new-instance v0, Lpm0;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

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

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move/from16 v35, p35

    move-object/from16 v42, v1

    move-object v3, v13

    move-object v6, v14

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v35}, Lpm0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v42

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method
