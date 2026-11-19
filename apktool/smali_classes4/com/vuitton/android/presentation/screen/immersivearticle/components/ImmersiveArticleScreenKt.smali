.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "topBarHeightDp",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v1, p0

    move/from16 v0, p35

    move/from16 v2, p36

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p9 .. p13}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static/range {p14 .. p18}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const v3, -0x63475f7e

    move-object/from16 v4, p33

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p34, v3

    move-object/from16 v12, p1

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v3, v6

    move-object/from16 v13, p2

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    move-object/from16 v14, p3

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    const/16 v16, 0x800

    if-eqz v6, :cond_3

    move/from16 v6, v16

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v3, v6

    move/from16 v6, p4

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-eqz v17, :cond_4

    move/from16 v17, v19

    goto :goto_4

    :cond_4
    move/from16 v17, v18

    :goto_4
    or-int v3, v3, v17

    const/high16 v17, 0x30000

    and-int v20, p34, v17

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    move/from16 v15, p5

    if-nez v20, :cond_6

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v20, v22

    goto :goto_5

    :cond_5
    move/from16 v20, v21

    :goto_5
    or-int v3, v3, v20

    :cond_6
    const/high16 v20, 0x180000

    and-int v23, p34, v20

    const/high16 v24, 0x80000

    const/high16 v25, 0x100000

    if-nez v23, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v4, v25

    goto :goto_6

    :cond_7
    move/from16 v4, v24

    :goto_6
    or-int/2addr v3, v4

    :cond_8
    const/high16 v4, 0x6000000

    and-int v26, p34, v4

    const/high16 v27, 0x2000000

    const/high16 v28, 0x4000000

    move-object/from16 v7, p8

    if-nez v26, :cond_a

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    move/from16 v29, v28

    goto :goto_7

    :cond_9
    move/from16 v29, v27

    :goto_7
    or-int v3, v3, v29

    :cond_a
    const/high16 v29, 0x30000000

    and-int v30, p34, v29

    const/high16 v31, 0x10000000

    const/high16 v32, 0x20000000

    move-object/from16 v7, p9

    if-nez v30, :cond_c

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    move/from16 v30, v32

    goto :goto_8

    :cond_b
    move/from16 v30, v31

    :goto_8
    or-int v3, v3, v30

    :cond_c
    and-int/lit8 v30, v0, 0x6

    move-object/from16 v7, p10

    if-nez v30, :cond_e

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    const/16 v30, 0x4

    goto :goto_9

    :cond_d
    const/16 v30, 0x2

    :goto_9
    or-int v30, v0, v30

    goto :goto_a

    :cond_e
    move/from16 v30, v0

    :goto_a
    and-int/lit8 v33, v0, 0x30

    if-nez v33, :cond_10

    move/from16 v33, v4

    move-object/from16 v4, p11

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    const/16 v34, 0x20

    goto :goto_b

    :cond_f
    const/16 v34, 0x10

    :goto_b
    or-int v30, v30, v34

    goto :goto_c

    :cond_10
    move/from16 v33, v4

    move-object/from16 v4, p11

    :goto_c
    and-int/lit16 v5, v0, 0x180

    if-nez v5, :cond_12

    move-object/from16 v5, p12

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    const/16 v35, 0x100

    goto :goto_d

    :cond_11
    const/16 v35, 0x80

    :goto_d
    or-int v30, v30, v35

    goto :goto_e

    :cond_12
    move-object/from16 v5, p12

    :goto_e
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_14

    move-object/from16 v8, p13

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    move/from16 v36, v16

    goto :goto_f

    :cond_13
    const/16 v36, 0x400

    :goto_f
    or-int v30, v30, v36

    goto :goto_10

    :cond_14
    move-object/from16 v8, p13

    :goto_10
    and-int/lit16 v10, v0, 0x6000

    if-nez v10, :cond_16

    move-object/from16 v10, p14

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    move/from16 v37, v19

    goto :goto_11

    :cond_15
    move/from16 v37, v18

    :goto_11
    or-int v30, v30, v37

    goto :goto_12

    :cond_16
    move-object/from16 v10, p14

    :goto_12
    and-int v37, v0, v17

    move-object/from16 v7, p15

    if-nez v37, :cond_18

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    move/from16 v37, v22

    goto :goto_13

    :cond_17
    move/from16 v37, v21

    :goto_13
    or-int v30, v30, v37

    :cond_18
    and-int v37, v0, v20

    move-object/from16 v7, p16

    if-nez v37, :cond_1a

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_19

    move/from16 v37, v25

    goto :goto_14

    :cond_19
    move/from16 v37, v24

    :goto_14
    or-int v30, v30, v37

    :cond_1a
    const/high16 v37, 0xc00000

    and-int v38, v0, v37

    const/high16 v39, 0x400000

    const/high16 v40, 0x800000

    move-object/from16 v7, p17

    if-nez v38, :cond_1c

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1b

    move/from16 v38, v40

    goto :goto_15

    :cond_1b
    move/from16 v38, v39

    :goto_15
    or-int v30, v30, v38

    :cond_1c
    and-int v38, v0, v33

    move-object/from16 v7, p18

    if-nez v38, :cond_1e

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1d

    move/from16 v38, v28

    goto :goto_16

    :cond_1d
    move/from16 v38, v27

    :goto_16
    or-int v30, v30, v38

    :cond_1e
    and-int v38, v0, v29

    move-object/from16 v7, p19

    if-nez v38, :cond_20

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1f

    move/from16 v38, v32

    goto :goto_17

    :cond_1f
    move/from16 v38, v31

    :goto_17
    or-int v30, v30, v38

    :cond_20
    and-int/lit8 v38, v2, 0x6

    move-object/from16 v7, p20

    if-nez v38, :cond_22

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_21

    const/16 v38, 0x4

    goto :goto_18

    :cond_21
    const/16 v38, 0x2

    :goto_18
    or-int v38, v2, v38

    goto :goto_19

    :cond_22
    move/from16 v38, v2

    :goto_19
    and-int/lit8 v41, v2, 0x30

    move-object/from16 v7, p21

    if-nez v41, :cond_24

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_23

    const/16 v41, 0x20

    goto :goto_1a

    :cond_23
    const/16 v41, 0x10

    :goto_1a
    or-int v38, v38, v41

    :cond_24
    and-int/lit16 v11, v2, 0x180

    if-nez v11, :cond_26

    move-object/from16 v11, p22

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_25

    const/16 v42, 0x100

    goto :goto_1b

    :cond_25
    const/16 v42, 0x80

    :goto_1b
    or-int v38, v38, v42

    goto :goto_1c

    :cond_26
    move-object/from16 v11, p22

    :goto_1c
    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_28

    move-object/from16 v0, p23

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_27

    goto :goto_1d

    :cond_27
    const/16 v16, 0x400

    :goto_1d
    or-int v38, v38, v16

    goto :goto_1e

    :cond_28
    move-object/from16 v0, p23

    :goto_1e
    and-int/lit16 v0, v2, 0x6000

    if-nez v0, :cond_2a

    move-object/from16 v0, p24

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    move/from16 v18, v19

    :cond_29
    or-int v38, v38, v18

    goto :goto_1f

    :cond_2a
    move-object/from16 v0, p24

    :goto_1f
    and-int v16, v2, v17

    move-object/from16 v7, p25

    if-nez v16, :cond_2c

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v21, v22

    :cond_2b
    or-int v38, v38, v21

    :cond_2c
    and-int v16, v2, v20

    move-object/from16 v7, p26

    if-nez v16, :cond_2e

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2d

    move/from16 v24, v25

    :cond_2d
    or-int v38, v38, v24

    :cond_2e
    and-int v16, v2, v37

    move-object/from16 v7, p27

    if-nez v16, :cond_30

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2f

    move/from16 v39, v40

    :cond_2f
    or-int v38, v38, v39

    :cond_30
    and-int v16, v2, v33

    move-object/from16 v7, p28

    if-nez v16, :cond_32

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_31

    move/from16 v27, v28

    :cond_31
    or-int v38, v38, v27

    :cond_32
    and-int v16, v2, v29

    move-object/from16 v7, p29

    if-nez v16, :cond_34

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_33

    move/from16 v31, v32

    :cond_33
    or-int v38, v38, v31

    :cond_34
    move-object/from16 v7, p30

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_35

    const/16 v34, 0x4

    :goto_20
    move-object/from16 v7, p31

    goto :goto_21

    :cond_35
    const/16 v34, 0x2

    goto :goto_20

    :goto_21
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_36

    const/16 v35, 0x20

    goto :goto_22

    :cond_36
    const/16 v35, 0x10

    :goto_22
    or-int v16, v34, v35

    move-object/from16 v7, p32

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_37

    const/16 v36, 0x100

    goto :goto_23

    :cond_37
    const/16 v36, 0x80

    :goto_23
    or-int v0, v16, v36

    const v16, 0x12492493

    and-int v2, v3, v16

    const v7, 0x12492492

    const/16 v17, 0x1

    if-ne v2, v7, :cond_39

    and-int v2, v30, v16

    if-ne v2, v7, :cond_39

    and-int v2, v38, v16

    if-ne v2, v7, :cond_39

    and-int/lit16 v0, v0, 0x93

    const/16 v2, 0x92

    if-eq v0, v2, :cond_38

    goto :goto_24

    :cond_38
    const/4 v0, 0x0

    goto :goto_25

    :cond_39
    :goto_24
    move/from16 v0, v17

    :goto_25
    and-int/lit8 v2, v3, 0x1

    invoke-virtual {v9, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_3a

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3a
    move-object/from16 v28, v0

    check-cast v28, Landroidx/compose/runtime/MutableState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    and-int/lit8 v0, v30, 0x70

    or-int/lit8 v0, v0, 0x6

    shr-int/lit8 v2, v30, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v0, v2

    const/16 v11, 0x18

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p13

    move v10, v0

    const/4 v0, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v7

    move-object v2, v9

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "ImmersiveArticleScreen"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    new-instance v3, Lg0;

    const/16 v4, 0x1c

    move-object/from16 v5, p7

    invoke-direct {v3, v5, v4}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v4, -0x7af3a838

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v35

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v3, :cond_3b

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->f:Ljava/lang/String;

    if-eqz v3, :cond_3b

    invoke-static {v3}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    if-eqz v3, :cond_3b

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_26
    move-wide/from16 v36, v3

    goto :goto_27

    :cond_3b
    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    goto :goto_26

    :goto_27
    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v38

    move v3, v0

    new-instance v0, Lp30;

    move/from16 v30, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v26, p9

    move-object/from16 v6, p10

    move-object/from16 v29, p12

    move-object/from16 v8, p14

    move-object/from16 v32, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v33, p18

    move-object/from16 v11, p19

    move-object/from16 v31, p20

    move-object/from16 v16, p25

    move-object/from16 v17, p26

    move-object/from16 v18, p27

    move-object/from16 v19, p28

    move-object/from16 v20, p29

    move-object/from16 v21, p30

    move-object/from16 v22, p31

    move-object/from16 v23, p32

    move-object/from16 v43, v2

    move-object v2, v12

    move-object/from16 v27, v13

    move-object v3, v14

    move/from16 v25, v15

    move-object/from16 v14, p21

    move-object/from16 v13, p22

    move-object/from16 v12, p23

    move-object/from16 v15, p24

    invoke-direct/range {v0 .. v33}, Lp30;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v1, v0

    move-object v0, v7

    const v2, -0xff4a3af

    move-object/from16 v9, v43

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const v17, 0x30000c06

    const/16 v18, 0xb6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    move-wide/from16 v10, v36

    move-object/from16 v14, v38

    move-object/from16 v16, v43

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v9, v16

    const/4 v3, 0x0

    invoke-static {v0, v9, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_28

    :cond_3c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_28
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3d

    move-object v1, v0

    new-instance v0, Lq30;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

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

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move/from16 v34, p34

    move/from16 v35, p35

    move/from16 v36, p36

    move-object/from16 v44, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v36}, Lq30;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v44

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void
.end method
