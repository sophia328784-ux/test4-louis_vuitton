.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v13, p12

    move/from16 v1, p17

    move/from16 v2, p18

    move/from16 v3, p19

    const-string v4, "CarouselS-uYRUAWA"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x6fd6ae9e

    move-object/from16 v8, p16

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v6, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_1

    or-int/lit8 v11, v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v11, v1, 0x6

    if-nez v11, :cond_3

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x4

    goto :goto_0

    :cond_2
    const/4 v11, 0x2

    :goto_0
    or-int/2addr v11, v1

    goto :goto_1

    :cond_3
    move v11, v1

    :goto_1
    and-int/lit8 v12, v1, 0x30

    if-nez v12, :cond_5

    move-object/from16 v12, p1

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x20

    goto :goto_2

    :cond_4
    const/16 v16, 0x10

    :goto_2
    or-int v11, v11, v16

    goto :goto_3

    :cond_5
    move-object/from16 v12, p1

    :goto_3
    and-int/lit8 v16, v3, 0x4

    const/16 v17, 0x100

    const/16 v18, 0x80

    if-eqz v16, :cond_7

    or-int/lit16 v11, v11, 0x180

    :cond_6
    move-object/from16 v14, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v14, v1, 0x180

    if-nez v14, :cond_6

    move-object/from16 v14, p2

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v17

    goto :goto_4

    :cond_8
    move/from16 v19, v18

    :goto_4
    or-int v11, v11, v19

    :goto_5
    and-int/lit8 v19, v3, 0x8

    const/16 v20, 0x400

    const/16 v21, 0x800

    if-eqz v19, :cond_a

    or-int/lit16 v11, v11, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v1, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v23, v21

    goto :goto_6

    :cond_b
    move/from16 v23, v20

    :goto_6
    or-int v11, v11, v23

    :goto_7
    and-int/lit16 v9, v1, 0x6000

    const/16 v24, 0x2000

    move-object/from16 v25, v0

    if-nez v9, :cond_d

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move/from16 v9, v24

    :goto_8
    or-int/2addr v11, v9

    :cond_d
    and-int/lit8 v9, v3, 0x20

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    const/high16 v28, 0x30000

    if-eqz v9, :cond_e

    or-int v11, v11, v28

    move/from16 v0, p5

    goto :goto_a

    :cond_e
    and-int v29, v1, v28

    move/from16 v0, p5

    if-nez v29, :cond_10

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v30

    if-eqz v30, :cond_f

    move/from16 v30, v27

    goto :goto_9

    :cond_f
    move/from16 v30, v26

    :goto_9
    or-int v11, v11, v30

    :cond_10
    :goto_a
    const/high16 v30, 0x180000

    and-int v30, v1, v30

    if-nez v30, :cond_12

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v30

    if-eqz v30, :cond_11

    const/high16 v30, 0x100000

    goto :goto_b

    :cond_11
    const/high16 v30, 0x80000

    :goto_b
    or-int v11, v11, v30

    :cond_12
    and-int/lit16 v0, v3, 0x80

    const/high16 v30, 0xc00000

    if-eqz v0, :cond_14

    or-int v11, v11, v30

    :cond_13
    move/from16 v31, v0

    goto :goto_f

    :cond_14
    and-int v30, v1, v30

    if-nez v30, :cond_13

    if-nez p7, :cond_15

    const/16 v30, -0x1

    :goto_c
    move/from16 v31, v0

    move/from16 v0, v30

    goto :goto_d

    :cond_15
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    goto :goto_c

    :goto_d
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v11, v0

    :goto_f
    const/high16 v0, 0x6000000

    and-int/2addr v0, v1

    if-nez v0, :cond_18

    move/from16 v0, p8

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v30

    if-eqz v30, :cond_17

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v30, 0x2000000

    :goto_10
    or-int v11, v11, v30

    goto :goto_11

    :cond_18
    move/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v3, 0x200

    const/high16 v30, 0x30000000

    if-eqz v0, :cond_1a

    or-int v11, v11, v30

    :cond_19
    move/from16 v30, v0

    move/from16 v0, p9

    goto :goto_13

    :cond_1a
    and-int v30, v1, v30

    if-nez v30, :cond_19

    move/from16 v30, v0

    move/from16 v0, p9

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v32

    if-eqz v32, :cond_1b

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v32, 0x10000000

    :goto_12
    or-int v11, v11, v32

    :goto_13
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_1c

    or-int/lit8 v32, v2, 0x6

    move/from16 v33, v32

    move/from16 v32, v0

    move/from16 v0, p10

    goto :goto_15

    :cond_1c
    and-int/lit8 v32, v2, 0x6

    if-nez v32, :cond_1e

    move/from16 v32, v0

    move/from16 v0, p10

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x4

    goto :goto_14

    :cond_1d
    const/16 v33, 0x2

    :goto_14
    or-int v33, v2, v33

    goto :goto_15

    :cond_1e
    move/from16 v32, v0

    move/from16 v0, p10

    move/from16 v33, v2

    :goto_15
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_20

    or-int/lit8 v33, v33, 0x30

    :cond_1f
    move/from16 v34, v0

    move/from16 v0, p11

    goto :goto_17

    :cond_20
    and-int/lit8 v34, v2, 0x30

    if-nez v34, :cond_1f

    move/from16 v34, v0

    move/from16 v0, p11

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v35

    if-eqz v35, :cond_21

    const/16 v35, 0x20

    goto :goto_16

    :cond_21
    const/16 v35, 0x10

    :goto_16
    or-int v33, v33, v35

    :goto_17
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_23

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_18

    :cond_22
    move/from16 v17, v18

    :goto_18
    or-int v33, v33, v17

    :cond_23
    move/from16 v0, v33

    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_24

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1a

    :cond_24
    move/from16 v17, v0

    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_26

    move-object/from16 v0, p13

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    move/from16 v20, v21

    :cond_25
    or-int v17, v17, v20

    :goto_19
    move/from16 v0, v17

    goto :goto_1a

    :cond_26
    move-object/from16 v0, p13

    goto :goto_19

    :goto_1a
    move/from16 v17, v1

    and-int/lit16 v1, v3, 0x4000

    if-eqz v1, :cond_28

    or-int/lit16 v0, v0, 0x6000

    move/from16 v18, v0

    :cond_27
    move-object/from16 v0, p14

    goto :goto_1b

    :cond_28
    move/from16 v18, v0

    and-int/lit16 v0, v2, 0x6000

    if-nez v0, :cond_27

    move-object/from16 v0, p14

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_29

    const/16 v24, 0x4000

    :cond_29
    or-int v18, v18, v24

    :goto_1b
    const v20, 0x8000

    and-int v20, v3, v20

    if-eqz v20, :cond_2a

    or-int v18, v18, v28

    move-object/from16 v0, p15

    goto :goto_1c

    :cond_2a
    and-int v21, v2, v28

    move-object/from16 v0, p15

    if-nez v21, :cond_2c

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b

    move/from16 v26, v27

    :cond_2b
    or-int v18, v18, v26

    :cond_2c
    :goto_1c
    const v21, 0x12492493

    and-int v0, v11, v21

    move/from16 v21, v1

    const v1, 0x12492492

    if-ne v0, v1, :cond_2e

    const v0, 0x12493

    and-int v0, v18, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_2d

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2e
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    and-int/lit8 v1, v11, 0x1

    invoke-virtual {v15, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz v8, :cond_2f

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1f

    :cond_2f
    move-object/from16 v1, v25

    :goto_1f
    if-eqz v16, :cond_30

    const/4 v3, 0x0

    goto :goto_20

    :cond_30
    move-object v3, v14

    :goto_20
    move-object v8, v4

    if-eqz v19, :cond_31

    const/4 v4, 0x0

    goto :goto_21

    :cond_31
    move-object v4, v10

    :goto_21
    move-object/from16 v16, v6

    if-eqz v9, :cond_32

    const/4 v6, 0x0

    goto :goto_22

    :cond_32
    move/from16 v6, p5

    :goto_22
    if-eqz v31, :cond_33

    sget-object v9, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v41, v9

    move-object v9, v8

    move-object/from16 v8, v41

    goto :goto_23

    :cond_33
    move-object v9, v8

    move-object/from16 v8, p7

    :goto_23
    if-eqz v30, :cond_34

    const v10, 0x3dcccccd    # 0.1f

    goto :goto_24

    :cond_34
    move/from16 v10, p9

    :goto_24
    move v14, v11

    if-eqz v32, :cond_35

    const/4 v11, 0x0

    goto :goto_25

    :cond_35
    move/from16 v11, p10

    :goto_25
    if-eqz v34, :cond_36

    const/4 v12, 0x0

    goto :goto_26

    :cond_36
    move/from16 v12, p11

    :goto_26
    move/from16 v38, v14

    if-eqz v17, :cond_37

    const/4 v14, 0x0

    goto :goto_27

    :cond_37
    move-object/from16 v14, p13

    :goto_27
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v21, :cond_39

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_38

    new-instance v2, Lfj;

    move-object/from16 v21, v1

    const/4 v1, 0x2

    invoke-direct {v2, v1}, Lfj;-><init>(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_28

    :cond_38
    move-object/from16 v21, v1

    :goto_28
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    goto :goto_29

    :cond_39
    move-object/from16 v21, v1

    move-object/from16 v1, p14

    :goto_29
    move-object/from16 v2, v16

    if-eqz v20, :cond_3a

    const/16 v16, 0x0

    goto :goto_2a

    :cond_3a
    move-object/from16 v16, p15

    :goto_2a
    sget-object v20, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 p2, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v20, :cond_3c

    if-ne v1, v0, :cond_3b

    goto :goto_2b

    :cond_3b
    move-object/from16 p3, v2

    goto :goto_2c

    :cond_3c
    :goto_2b
    move-object v1, v5

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 p3, v2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2c
    check-cast v1, Ljava/util/List;

    const/4 v2, 0x3

    move-object/from16 p5, v1

    if-nez v7, :cond_3e

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_3d

    goto :goto_2d

    :cond_3d
    const/4 v1, 0x0

    goto :goto_2e

    :cond_3e
    :goto_2d
    const/4 v1, 0x1

    :goto_2e
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    move/from16 p9, v1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_3f

    move v2, v12

    move-object v12, v14

    goto :goto_2f

    :cond_3f
    move v2, v12

    const/4 v12, 0x0

    :goto_2f
    if-nez p9, :cond_40

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_50

    move-object v1, v0

    new-instance v0, Lrj;

    const/16 v20, 0x0

    move-object/from16 v15, p2

    move/from16 v9, p8

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v39, v1

    move v12, v2

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lrj;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;IIII)V

    move-object/from16 v1, v39

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_40
    move v7, v2

    move/from16 v20, v11

    move-object/from16 v11, v16

    move-object/from16 v1, v21

    const/4 v13, 0x3

    move/from16 v16, v10

    move-object/from16 v21, v14

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 p2, v3

    invoke-static {v14, v15, v13}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_41

    if-ne v14, v0, :cond_42

    :cond_41
    new-instance v14, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt$CarouselS$3$1;

    const/4 v13, 0x0

    invoke-direct {v14, v3, v13}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt$CarouselS$3$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v11, :cond_43

    const v13, 0x38483ce5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v13, v18, 0xc

    and-int/lit8 v13, v13, 0x70

    invoke-static {v3, v11, v15, v13}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->c(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_43
    const/4 v14, 0x0

    const v13, 0x384a82c0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_30
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    and-int/lit8 v14, v18, 0x70

    move-object/from16 p9, v4

    const/16 v4, 0x20

    if-ne v14, v4, :cond_44

    const/4 v4, 0x1

    goto :goto_31

    :cond_44
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    const v22, 0xe000

    and-int v14, v18, v22

    move/from16 p10, v4

    const/16 v4, 0x4000

    if-ne v14, v4, :cond_45

    const/4 v4, 0x1

    goto :goto_32

    :cond_45
    const/4 v4, 0x0

    :goto_32
    or-int v4, p10, v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_46

    if-ne v14, v0, :cond_47

    :cond_46
    new-instance v14, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt$CarouselS$4$1;

    const/4 v0, 0x0

    invoke-direct {v14, v7, v3, v10, v0}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt$CarouselS$4$1;-><init>(ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v14, 0x0

    invoke-static {v0, v4, v15, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v13, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v1

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p3, :cond_4e

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 p10, v3

    iget-boolean v3, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_48

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_33

    :cond_48
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_33
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v14, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v20, :cond_49

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_49

    const v14, 0x1da2528c

    invoke-static {v15, v14, v9}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v32

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v36, 0x0

    const/16 v37, 0xa

    const/16 v34, 0x0

    move/from16 v33, p8

    move/from16 v35, v14

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v23

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v28, 0x7

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v14

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    move/from16 p11, v7

    move/from16 v7, v38

    shr-int/lit8 v23, v7, 0x12

    and-int/lit8 v23, v23, 0x70

    move-object/from16 p13, v8

    and-int/lit16 v8, v7, 0x380

    or-int v8, v23, v8

    shl-int/lit8 v7, v38, 0x6

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v7, v8

    shl-int/lit8 v8, v38, 0x3

    and-int v8, v8, v22

    or-int/2addr v7, v8

    move-object v2, v14

    move v14, v7

    move-object v7, v2

    move-object v2, v15

    move-object v15, v13

    move-object v13, v2

    move/from16 v23, p11

    move-object/from16 v8, p13

    move-object v2, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p9

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/common/editorial/components/header/HeaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_34

    :cond_49
    move-object v2, v15

    move-object v15, v13

    move-object v13, v2

    move-object/from16 v26, p2

    move-object/from16 v27, p9

    move/from16 v23, v7

    move-object v2, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const/4 v14, 0x0

    const v7, 0x1da8b876

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_34
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz p3, :cond_4d

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_4a

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_35

    :cond_4a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_35
    invoke-static {v13, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v13, v15, v13, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v13, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v0, 0x70000

    const v1, 0xc00c00

    if-eqz p6, :cond_4c

    const v2, 0x5e26bbdf

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v9, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_4b

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4b
    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    sget-object v3, Lcom/vuitton/android/presentation/common/editorial/components/carousels/ComposableSingletons$CarouselSKt;->a:Lcom/vuitton/android/presentation/common/editorial/components/carousels/ComposableSingletons$CarouselSKt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/vuitton/android/presentation/common/editorial/components/carousels/ComposableSingletons$CarouselSKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v3, v38, 0xf

    and-int v3, v3, v22

    or-int/2addr v1, v3

    shr-int/lit8 v3, v38, 0x9

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    const/16 v17, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x2

    move/from16 v12, p8

    move-object v3, v8

    move-object v15, v13

    move/from16 v11, v16

    move-object/from16 v8, p10

    move/from16 v16, v0

    move v13, v2

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v15

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v5, p12

    :goto_37
    const/4 v0, 0x1

    goto :goto_38

    :cond_4c
    move-object v3, v8

    move/from16 v11, v16

    move-object/from16 v8, p10

    const v4, 0x5e2ecf2f

    const-string v5, "carousel_container_view"

    invoke-static {v13, v4, v2, v5}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    new-instance v4, Ljj;

    move-object/from16 v5, p12

    invoke-direct {v4, v6, v3, v5}, Ljj;-><init>(ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function2;)V

    const v9, 0x50b1fe97

    invoke-static {v9, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    shr-int/lit8 v4, v38, 0xf

    and-int v4, v4, v22

    or-int/2addr v1, v4

    shr-int/lit8 v4, v38, 0x9

    and-int/2addr v0, v4

    or-int v16, v1, v0

    const/16 v17, 0x0

    const/4 v10, 0x2

    move-object/from16 v9, p5

    move/from16 v12, p8

    move-object v15, v13

    move v13, v2

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v15

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_37

    :goto_38
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v8, v3

    move v10, v11

    move-object/from16 v1, v18

    move/from16 v11, v20

    move-object/from16 v14, v21

    move/from16 v12, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    goto :goto_39

    :cond_4d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v17, 0x0

    throw v17

    :cond_4e
    const/16 v17, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_4f
    move-object v5, v13

    move-object v13, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object v4, v10

    move-object v3, v14

    move-object/from16 v1, v25

    move/from16 v10, p9

    move-object/from16 v14, p13

    :goto_39
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_50

    move-object v2, v0

    new-instance v0, Lrj;

    const/16 v20, 0x1

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v40, v2

    move-object v13, v5

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v20}, Lrj;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;IIII)V

    move-object/from16 v2, v40

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_50
    return-void
.end method
