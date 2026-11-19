.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/geometry/Rect;",
        "aiButtonBounds",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;ZLandroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlinx/coroutines/flow/Flow;Lkotlinx/collections/immutable/ImmutableList;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIIIII)V
    .locals 63

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p11

    move-object/from16 v3, p15

    move-object/from16 v6, p23

    move/from16 v11, p54

    move/from16 v7, p55

    move/from16 v10, p56

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    move-object/from16 v16, v9

    iget-boolean v9, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p15 .. p19}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p25 .. p29}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static/range {p30 .. p34}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p35 .. p35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p36 .. p36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p37 .. p37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p38 .. p38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p39 .. p39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p40 .. p40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p41 .. p41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p42 .. p42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p43 .. p43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p44 .. p44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p45 .. p45}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p46 .. p46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p47 .. p47}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p48 .. p48}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p49 .. p49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p50 .. p50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p51 .. p51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p52 .. p52}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v9

    const v9, 0x3d92b9e8

    move-object/from16 v8, p53

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v9, v11, 0x6

    const/16 v18, 0x4

    const/16 v19, 0x2

    if-nez v9, :cond_1

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move/from16 v9, v18

    goto :goto_0

    :cond_0
    move/from16 v9, v19

    :goto_0
    or-int/2addr v9, v11

    goto :goto_1

    :cond_1
    move v9, v11

    :goto_1
    and-int/lit8 v20, v11, 0x30

    const/16 v21, 0x10

    move/from16 p53, v9

    if-nez v20, :cond_4

    and-int/lit8 v20, v11, 0x40

    if-nez v20, :cond_2

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    :goto_2
    if-eqz v20, :cond_3

    const/16 v20, 0x20

    goto :goto_3

    :cond_3
    move/from16 v20, v21

    :goto_3
    or-int v20, p53, v20

    goto :goto_4

    :cond_4
    move/from16 v20, p53

    :goto_4
    and-int/lit16 v9, v11, 0x180

    const/16 v22, 0x80

    const/16 v23, 0x100

    if-nez v9, :cond_6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move/from16 v9, v23

    goto :goto_5

    :cond_5
    move/from16 v9, v22

    :goto_5
    or-int v20, v20, v9

    :cond_6
    and-int/lit16 v9, v11, 0xc00

    const/16 v24, 0x400

    if-nez v9, :cond_8

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x800

    goto :goto_6

    :cond_7
    move/from16 v25, v24

    :goto_6
    or-int v20, v20, v25

    goto :goto_7

    :cond_8
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v4, v11, 0x6000

    const/16 v26, 0x2000

    const/16 v27, 0x4000

    if-nez v4, :cond_a

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v4, v27

    goto :goto_8

    :cond_9
    move/from16 v4, v26

    :goto_8
    or-int v20, v20, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int v28, v11, v4

    const/high16 v29, 0x10000

    const/high16 v30, 0x20000

    if-nez v28, :cond_c

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v30

    goto :goto_9

    :cond_b
    move/from16 v28, v29

    :goto_9
    or-int v20, v20, v28

    :cond_c
    const/high16 v28, 0x180000

    and-int v31, v11, v28

    const/high16 v32, 0x80000

    const/high16 v33, 0x100000

    if-nez v31, :cond_f

    const/high16 v31, 0x200000

    and-int v31, v11, v31

    if-nez v31, :cond_d

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v31

    goto :goto_a

    :cond_d
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    :goto_a
    if-eqz v31, :cond_e

    move/from16 v31, v33

    goto :goto_b

    :cond_e
    move/from16 v31, v32

    :goto_b
    or-int v20, v20, v31

    :cond_f
    const/high16 v31, 0xc00000

    and-int v34, v11, v31

    const/high16 v35, 0x400000

    const/high16 v36, 0x800000

    if-nez v34, :cond_12

    const/high16 v34, 0x1000000

    and-int v34, v11, v34

    if-nez v34, :cond_10

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v34

    goto :goto_c

    :cond_10
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    :goto_c
    if-eqz v34, :cond_11

    move/from16 v34, v36

    goto :goto_d

    :cond_11
    move/from16 v34, v35

    :goto_d
    or-int v20, v20, v34

    :cond_12
    const/high16 v34, 0x6000000

    and-int v37, v11, v34

    const/high16 v38, 0x2000000

    const/high16 v39, 0x4000000

    if-nez v37, :cond_14

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    move/from16 v37, v39

    goto :goto_e

    :cond_13
    move/from16 v37, v38

    :goto_e
    or-int v20, v20, v37

    :cond_14
    const/high16 v37, 0x30000000

    and-int v40, v11, v37

    const/high16 v41, 0x10000000

    const/high16 v42, 0x20000000

    move-object/from16 v12, p9

    if-nez v40, :cond_16

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_15

    move/from16 v40, v42

    goto :goto_f

    :cond_15
    move/from16 v40, v41

    :goto_f
    or-int v20, v20, v40

    :cond_16
    move-object/from16 v12, p10

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_17

    move/from16 v40, v18

    goto :goto_10

    :cond_17
    move/from16 v40, v19

    :goto_10
    or-int v40, v7, v40

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    const/16 v43, 0x20

    goto :goto_11

    :cond_18
    move/from16 v43, v21

    :goto_11
    or-int v40, v40, v43

    move/from16 v43, v4

    and-int/lit16 v4, v7, 0xc00

    if-nez v4, :cond_1a

    move-object/from16 v4, p13

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_19

    const/16 v44, 0x800

    goto :goto_12

    :cond_19
    move/from16 v44, v24

    :goto_12
    or-int v40, v40, v44

    goto :goto_13

    :cond_1a
    move-object/from16 v4, p13

    :goto_13
    and-int/lit16 v0, v7, 0x6000

    if-nez v0, :cond_1c

    move-object/from16 v0, p14

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1b

    move/from16 v44, v27

    goto :goto_14

    :cond_1b
    move/from16 v44, v26

    :goto_14
    or-int v40, v40, v44

    goto :goto_15

    :cond_1c
    move-object/from16 v0, p14

    :goto_15
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1d

    move/from16 v44, v30

    goto :goto_16

    :cond_1d
    move/from16 v44, v29

    :goto_16
    or-int v40, v40, v44

    and-int v44, v7, v28

    move-object/from16 v0, p16

    if-nez v44, :cond_1f

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1e

    move/from16 v44, v33

    goto :goto_17

    :cond_1e
    move/from16 v44, v32

    :goto_17
    or-int v40, v40, v44

    :cond_1f
    and-int v44, v7, v31

    move-object/from16 v12, p17

    if-nez v44, :cond_21

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_20

    move/from16 v44, v36

    goto :goto_18

    :cond_20
    move/from16 v44, v35

    :goto_18
    or-int v40, v40, v44

    :cond_21
    move-object/from16 v12, p18

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_22

    move/from16 v44, v39

    goto :goto_19

    :cond_22
    move/from16 v44, v38

    :goto_19
    or-int v40, v40, v44

    move-object/from16 v12, p19

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_23

    move/from16 v44, v42

    goto :goto_1a

    :cond_23
    move/from16 v44, v41

    :goto_1a
    or-int v40, v40, v44

    move-object/from16 v0, p20

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_24

    move/from16 v44, v18

    goto :goto_1b

    :cond_24
    move/from16 v44, v19

    :goto_1b
    or-int v44, v10, v44

    move-object/from16 v12, p21

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_25

    const/16 v45, 0x20

    goto :goto_1c

    :cond_25
    move/from16 v45, v21

    :goto_1c
    or-int v44, v44, v45

    move-object/from16 v12, p22

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_26

    move/from16 v45, v23

    goto :goto_1d

    :cond_26
    move/from16 v45, v22

    :goto_1d
    or-int v44, v44, v45

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_27

    const/16 v45, 0x800

    goto :goto_1e

    :cond_27
    move/from16 v45, v24

    :goto_1e
    or-int v44, v44, v45

    and-int/lit16 v0, v10, 0x6000

    if-nez v0, :cond_29

    move-object/from16 v0, p24

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_28

    move/from16 v45, v27

    goto :goto_1f

    :cond_28
    move/from16 v45, v26

    :goto_1f
    or-int v44, v44, v45

    goto :goto_20

    :cond_29
    move-object/from16 v0, p24

    :goto_20
    and-int v45, v10, v43

    move-object/from16 v12, p25

    if-nez v45, :cond_2b

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2a

    move/from16 v45, v30

    goto :goto_21

    :cond_2a
    move/from16 v45, v29

    :goto_21
    or-int v44, v44, v45

    :cond_2b
    and-int v45, v10, v28

    move-object/from16 v12, p26

    if-nez v45, :cond_2d

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2c

    move/from16 v45, v33

    goto :goto_22

    :cond_2c
    move/from16 v45, v32

    :goto_22
    or-int v44, v44, v45

    :cond_2d
    and-int v45, v10, v31

    move-object/from16 v12, p27

    if-nez v45, :cond_2f

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2e

    move/from16 v45, v36

    goto :goto_23

    :cond_2e
    move/from16 v45, v35

    :goto_23
    or-int v44, v44, v45

    :cond_2f
    and-int v45, v10, v34

    move-object/from16 v0, p28

    if-nez v45, :cond_31

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_30

    move/from16 v45, v39

    goto :goto_24

    :cond_30
    move/from16 v45, v38

    :goto_24
    or-int v44, v44, v45

    :cond_31
    move-object/from16 v12, p29

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_32

    move/from16 v45, v42

    goto :goto_25

    :cond_32
    move/from16 v45, v41

    :goto_25
    or-int v44, v44, v45

    move-object/from16 v12, p30

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_33

    move/from16 v45, v18

    goto :goto_26

    :cond_33
    move/from16 v45, v19

    :goto_26
    or-int v45, p57, v45

    and-int/lit8 v46, p57, 0x30

    move-object/from16 v12, p31

    if-nez v46, :cond_35

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_34

    const/16 v46, 0x20

    goto :goto_27

    :cond_34
    move/from16 v46, v21

    :goto_27
    or-int v45, v45, v46

    :cond_35
    move/from16 v0, p57

    and-int/lit16 v4, v0, 0x180

    if-nez v4, :cond_37

    move-object/from16 v4, p32

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_36

    move/from16 v46, v23

    goto :goto_28

    :cond_36
    move/from16 v46, v22

    :goto_28
    or-int v45, v45, v46

    :goto_29
    move-object/from16 v4, p33

    goto :goto_2a

    :cond_37
    move-object/from16 v4, p32

    goto :goto_29

    :goto_2a
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38

    const/16 v46, 0x800

    goto :goto_2b

    :cond_38
    move/from16 v46, v24

    :goto_2b
    or-int v45, v45, v46

    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_3a

    move-object/from16 v6, p34

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_39

    move/from16 v46, v27

    goto :goto_2c

    :cond_39
    move/from16 v46, v26

    :goto_2c
    or-int v45, v45, v46

    :goto_2d
    move-object/from16 v12, p35

    goto :goto_2e

    :cond_3a
    move-object/from16 v6, p34

    goto :goto_2d

    :goto_2e
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3b

    move/from16 v46, v30

    goto :goto_2f

    :cond_3b
    move/from16 v46, v29

    :goto_2f
    or-int v45, v45, v46

    and-int v46, v0, v28

    move-object/from16 v12, p36

    if-nez v46, :cond_3d

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3c

    move/from16 v46, v33

    goto :goto_30

    :cond_3c
    move/from16 v46, v32

    :goto_30
    or-int v45, v45, v46

    :cond_3d
    move-object/from16 v12, p37

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3e

    move/from16 v46, v36

    goto :goto_31

    :cond_3e
    move/from16 v46, v35

    :goto_31
    or-int v45, v45, v46

    and-int v46, v0, v34

    move-object/from16 v0, p38

    if-nez v46, :cond_40

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3f

    move/from16 v46, v39

    goto :goto_32

    :cond_3f
    move/from16 v46, v38

    :goto_32
    or-int v45, v45, v46

    :cond_40
    and-int v46, p57, v37

    move-object/from16 v12, p39

    if-nez v46, :cond_42

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_41

    move/from16 v46, v42

    goto :goto_33

    :cond_41
    move/from16 v46, v41

    :goto_33
    or-int v45, v45, v46

    :cond_42
    move/from16 v0, v45

    move/from16 v12, p58

    and-int/lit8 v45, v12, 0x6

    move-object/from16 v13, p40

    if-nez v45, :cond_44

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_43

    move/from16 v45, v18

    goto :goto_34

    :cond_43
    move/from16 v45, v19

    :goto_34
    or-int v45, v12, v45

    goto :goto_35

    :cond_44
    move/from16 v45, v12

    :goto_35
    and-int/lit8 v46, v12, 0x30

    move-object/from16 v13, p41

    if-nez v46, :cond_46

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_45

    const/16 v46, 0x20

    goto :goto_36

    :cond_45
    move/from16 v46, v21

    :goto_36
    or-int v45, v45, v46

    :cond_46
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_48

    move-object/from16 v6, p42

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_47

    move/from16 v46, v23

    goto :goto_37

    :cond_47
    move/from16 v46, v22

    :goto_37
    or-int v45, v45, v46

    goto :goto_38

    :cond_48
    move-object/from16 v6, p42

    :goto_38
    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_4a

    move-object/from16 v6, p43

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_49

    const/16 v24, 0x800

    :cond_49
    or-int v45, v45, v24

    goto :goto_39

    :cond_4a
    move-object/from16 v6, p43

    :goto_39
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_4c

    move-object/from16 v6, p44

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4b

    move/from16 v26, v27

    :cond_4b
    or-int v45, v45, v26

    goto :goto_3a

    :cond_4c
    move-object/from16 v6, p44

    :goto_3a
    and-int v24, v12, v43

    move-object/from16 v12, p45

    if-nez v24, :cond_4e

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4d

    move/from16 v29, v30

    :cond_4d
    or-int v45, v45, v29

    :cond_4e
    and-int v24, p58, v28

    move-object/from16 v12, p46

    if-nez v24, :cond_50

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4f

    move/from16 v32, v33

    :cond_4f
    or-int v45, v45, v32

    :cond_50
    and-int v24, p58, v31

    move-object/from16 v12, p47

    if-nez v24, :cond_52

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_51

    move/from16 v35, v36

    :cond_51
    or-int v45, v45, v35

    :cond_52
    and-int v24, p58, v34

    move-object/from16 v12, p48

    if-nez v24, :cond_54

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_53

    move/from16 v38, v39

    :cond_53
    or-int v45, v45, v38

    :cond_54
    and-int v24, p58, v37

    move-object/from16 v12, p49

    if-nez v24, :cond_56

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_55

    move/from16 v41, v42

    :cond_55
    or-int v45, v45, v41

    :cond_56
    move/from16 v12, p59

    and-int/lit8 v24, v12, 0x6

    move-object/from16 v13, p50

    if-nez v24, :cond_58

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_57

    goto :goto_3b

    :cond_57
    move/from16 v18, v19

    :goto_3b
    or-int v18, v12, v18

    goto :goto_3c

    :cond_58
    move/from16 v18, v12

    :goto_3c
    and-int/lit8 v19, v12, 0x30

    move-object/from16 v6, p51

    if-nez v19, :cond_5a

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_59

    const/16 v21, 0x20

    :cond_59
    or-int v18, v18, v21

    :cond_5a
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_5c

    move-object/from16 v7, p52

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5b

    move/from16 v22, v23

    :cond_5b
    or-int v18, v18, v22

    :goto_3d
    move/from16 v7, v18

    goto :goto_3e

    :cond_5c
    move-object/from16 v7, p52

    goto :goto_3d

    :goto_3e
    const v18, 0x12492493

    and-int v9, v20, v18

    const v10, 0x12492492

    const/4 v12, 0x1

    if-ne v9, v10, :cond_5e

    and-int v9, v40, v18

    if-ne v9, v10, :cond_5e

    and-int v9, v44, v18

    if-ne v9, v10, :cond_5e

    and-int v9, v0, v18

    if-ne v9, v10, :cond_5e

    and-int v9, v45, v18

    if-ne v9, v10, :cond_5e

    and-int/lit16 v7, v7, 0x93

    const/16 v9, 0x92

    if-eq v7, v9, :cond_5d

    goto :goto_3f

    :cond_5d
    const/4 v7, 0x0

    goto :goto_40

    :cond_5e
    :goto_3f
    move v7, v12

    :goto_40
    and-int/lit8 v9, v20, 0x1

    invoke-virtual {v8, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_73

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    sget-object v7, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v37, v7

    check-cast v37, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v7, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v10, :cond_61

    move-object/from16 v12, v16

    iget-boolean v7, v12, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    if-eqz v7, :cond_60

    if-eqz v17, :cond_5f

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-nez v7, :cond_60

    :cond_5f
    const/4 v7, 0x1

    goto :goto_41

    :cond_60
    const/4 v7, 0x0

    :goto_41
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_42

    :cond_61
    move-object/from16 v12, v16

    :goto_42
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    invoke-static {v8}, Landroidx/compose/material3/TopAppBarDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-result-object v7

    move-object/from16 v16, v7

    iget-boolean v7, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    if-nez v7, :cond_62

    if-nez v17, :cond_62

    const/16 v20, 0x1

    goto :goto_43

    :cond_62
    const/16 v20, 0x0

    :goto_43
    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    move-object/from16 v22, v12

    if-eqz v7, :cond_63

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    goto :goto_44

    :cond_63
    const/4 v7, 0x0

    :goto_44
    if-nez v7, :cond_64

    const-string v7, ""

    :cond_64
    iget-object v12, v15, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v24, :cond_66

    if-ne v5, v10, :cond_65

    goto :goto_45

    :cond_65
    move-object/from16 v24, v7

    move-object/from16 v26, v9

    move-object/from16 v7, p12

    goto :goto_46

    :cond_66
    :goto_45
    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$1$1;

    move-object/from16 v24, v7

    move-object/from16 v26, v9

    const/4 v9, 0x0

    move-object/from16 v7, p12

    invoke-direct {v5, v15, v7, v9}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$1$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_46
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v12, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_67

    if-ne v12, v10, :cond_68

    :cond_67
    new-instance v12, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1;

    const/4 v9, 0x0

    invoke-direct {v12, v1, v7, v9}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_68
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit8 v12, v40, 0x70

    const/16 v1, 0x20

    if-ne v12, v1, :cond_69

    const/4 v1, 0x1

    goto :goto_47

    :cond_69
    const/4 v1, 0x0

    :goto_47
    or-int/2addr v1, v9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v9, 0x800

    if-ne v0, v9, :cond_6a

    const/4 v0, 0x1

    goto :goto_48

    :cond_6a
    const/4 v0, 0x0

    :goto_48
    or-int/2addr v0, v1

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_6b

    if-ne v1, v10, :cond_6c

    :cond_6b
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$3$1;

    const/4 v9, 0x0

    invoke-direct {v1, v6, v2, v4, v9}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$3$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6c
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v40, 0xc

    and-int/lit8 v0, v0, 0x70

    const/4 v1, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v3, v8, v0, v12}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6d

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6d
    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/runtime/MutableState;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "PdpScreen"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v8, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v2, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v2, :cond_72

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_6e

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_49

    :cond_6e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_49
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/material3/TopAppBarScrollBehavior;->a()Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v45

    new-instance v0, Lgk;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p16

    move-object/from16 v11, p20

    move-object v15, v8

    move-object/from16 v4, v16

    move/from16 v46, v17

    move-object/from16 v60, v22

    move-object/from16 v1, v24

    move-object/from16 v9, v26

    move-object/from16 v6, v37

    const/16 v19, 0x0

    move-object/from16 v8, p38

    invoke-direct/range {v0 .. v11}, Lgk;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/TopAppBarScrollBehavior;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v6, v9

    const v1, -0x56855222

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v47

    new-instance v0, Lrm0;

    move-object/from16 v3, p0

    move-object/from16 v7, p12

    move-object/from16 v10, p18

    move-object/from16 v5, p22

    move-object/from16 v13, p26

    move-object/from16 v11, p38

    move-object/from16 v9, p41

    move-object/from16 v8, p42

    move-object v2, v4

    move-object/from16 v14, v18

    move/from16 v1, v20

    move-object/from16 v12, v37

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v14}, Lrm0;-><init>(ZLandroidx/compose/material3/TopAppBarScrollBehavior;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v48, v14

    const v2, -0x7573dd83

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v49

    new-instance v0, Lae0;

    const/16 v2, 0x16

    move-object/from16 v3, p5

    invoke-direct {v0, v3, v2}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, 0x6b9d971c

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v50

    new-instance v0, Ltm0;

    move-object/from16 v5, p0

    move-object/from16 v28, p1

    move-object/from16 v7, p3

    move-object/from16 v4, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v2, p11

    move-object/from16 v14, p12

    move-object/from16 v11, p13

    move-object/from16 v30, p14

    move-object/from16 v12, p17

    move-object/from16 v29, p19

    move-object/from16 v13, p21

    move-object/from16 v33, p25

    move-object/from16 v17, p26

    move-object/from16 v18, p27

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v19, p31

    move-object/from16 v20, p32

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v23, p39

    move-object/from16 v22, p40

    move-object/from16 v40, p43

    move-object/from16 v24, p44

    move-object/from16 v25, p45

    move-object/from16 v41, p46

    move-object/from16 v3, p47

    move-object/from16 v42, p48

    move-object/from16 v26, p49

    move-object/from16 v43, p50

    move-object/from16 v16, p52

    move-object v10, v6

    move-object/from16 v61, v15

    move-object/from16 v15, p24

    move v6, v1

    move-object/from16 v1, p6

    invoke-direct/range {v0 .. v43}, Ltm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;ZLcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlinx/collections/immutable/ImmutableList;Lkotlinx/collections/immutable/ImmutableList;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v9, v5

    const v1, 0x50fd23f3

    move-object/from16 v6, v61

    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v29

    const v31, 0x30000db0

    const/16 v32, 0x1f0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v30, v6

    move-object/from16 v18, v45

    move-object/from16 v19, v47

    move-object/from16 v20, v49

    move-object/from16 v21, v50

    invoke-static/range {v18 .. v32}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    if-nez p4, :cond_6f

    if-eqz v46, :cond_6f

    const/4 v0, 0x1

    goto :goto_4a

    :cond_6f
    const/4 v0, 0x0

    :goto_4a
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x0

    invoke-static {v12, v1, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v2

    invoke-static {v12, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    new-instance v1, La3;

    const/16 v4, 0x17

    move-object/from16 v11, p28

    invoke-direct {v1, v11, v4}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v4, -0x4a7edb6

    invoke-static {v4, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const v7, 0x30d80

    const/16 v8, 0x12

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v0, v9, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    if-nez v0, :cond_71

    move-object/from16 v12, v60

    iget-boolean v0, v12, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    if-eqz v0, :cond_71

    const v0, -0x62a60262

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    if-nez v0, :cond_70

    const v0, 0xde5b623

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v3, p23

    goto :goto_4b

    :cond_70
    const/4 v1, 0x0

    const v2, 0xde5b624

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v2, v44, 0x6

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v3, v44, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    move-object/from16 v3, p23

    invoke-static {v0, v3, v3, v6, v2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4b
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4c
    const/4 v12, 0x1

    goto :goto_4d

    :cond_71
    move-object/from16 v3, p23

    const/4 v1, 0x0

    const v0, 0xde98ee0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4c

    :goto_4d
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_4e

    :cond_72
    const/4 v12, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v12

    :cond_73
    move-object/from16 v3, p23

    move-object/from16 v11, p28

    move-object v9, v5

    move-object v6, v8

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_74

    move-object v1, v0

    new-instance v0, Lum0;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

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

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move/from16 v54, p54

    move/from16 v55, p55

    move/from16 v56, p56

    move/from16 v57, p57

    move/from16 v58, p58

    move/from16 v59, p59

    move-object/from16 v62, v1

    move-object/from16 v24, v3

    move-object v1, v9

    move-object/from16 v29, v11

    move-object/from16 v3, p2

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v59}, Lum0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;ZLandroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlinx/coroutines/flow/Flow;Lkotlinx/collections/immutable/ImmutableList;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;IIIIII)V

    move-object/from16 v1, v62

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_74
    return-void
.end method
