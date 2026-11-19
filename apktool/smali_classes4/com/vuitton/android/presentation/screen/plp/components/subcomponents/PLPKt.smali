.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "headerHeight",
        "availableHeight",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLjava/lang/Integer;ZZZLandroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;IIII)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v1, p3

    move-object/from16 v8, p7

    move-object/from16 v2, p14

    move-object/from16 v7, p15

    move-object/from16 v10, p18

    move/from16 v3, p24

    move/from16 v4, p26

    if-eqz v0, :cond_0

    const-string v6, "PLP"

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x787add8e

    move-object/from16 v9, p22

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int v6, p23, v6

    and-int/lit8 v12, v4, 0x4

    if-nez v12, :cond_2

    move/from16 v12, p2

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x100

    goto :goto_1

    :cond_2
    move/from16 v12, p2

    :cond_3
    const/16 v16, 0x80

    :goto_1
    or-int v6, v6, v16

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x400

    if-eqz v16, :cond_4

    const/16 v16, 0x800

    goto :goto_2

    :cond_4
    move/from16 v16, v17

    :goto_2
    or-int v6, v6, v16

    and-int/lit8 v16, v4, 0x10

    const/16 v18, 0x2000

    if-eqz v16, :cond_5

    or-int/lit16 v6, v6, 0x6000

    move/from16 v13, p4

    goto :goto_4

    :cond_5
    move/from16 v13, p4

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x4000

    goto :goto_3

    :cond_6
    move/from16 v20, v18

    :goto_3
    or-int v6, v6, v20

    :goto_4
    and-int/lit8 v20, v4, 0x20

    const/high16 v21, 0x10000

    if-eqz v20, :cond_7

    const/high16 v23, 0x30000

    or-int v6, v6, v23

    move/from16 v15, p5

    goto :goto_6

    :cond_7
    move/from16 v15, p5

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v24

    if-eqz v24, :cond_8

    const/high16 v24, 0x20000

    goto :goto_5

    :cond_8
    move/from16 v24, v21

    :goto_5
    or-int v6, v6, v24

    :goto_6
    and-int/lit8 v24, v4, 0x40

    const/high16 v25, 0x180000

    const/high16 v26, 0x80000

    const/high16 v27, 0x20000

    if-eqz v24, :cond_a

    or-int v6, v6, v25

    move/from16 v9, p6

    :cond_9
    const/high16 v25, 0x100000

    goto :goto_8

    :cond_a
    and-int v25, p23, v25

    move/from16 v9, p6

    if-nez v25, :cond_9

    const/high16 v25, 0x100000

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v25

    goto :goto_7

    :cond_b
    move/from16 v28, v26

    :goto_7
    or-int v6, v6, v28

    :goto_8
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    const/high16 v29, 0x400000

    if-eqz v28, :cond_c

    const/high16 v28, 0x800000

    goto :goto_9

    :cond_c
    move/from16 v28, v29

    :goto_9
    or-int v6, v6, v28

    and-int/lit16 v11, v4, 0x100

    const/high16 v31, 0x2000000

    if-eqz v11, :cond_d

    const/high16 v32, 0x6000000

    or-int v6, v6, v32

    move-object/from16 v1, p8

    goto :goto_b

    :cond_d
    move-object/from16 v1, p8

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    const/high16 v33, 0x4000000

    goto :goto_a

    :cond_e
    move/from16 v33, v31

    :goto_a
    or-int v6, v6, v33

    :goto_b
    and-int/lit16 v1, v4, 0x200

    const/high16 v33, 0x10000000

    move/from16 v34, v1

    move-object/from16 v1, p9

    if-nez v34, :cond_f

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    const/high16 v35, 0x20000000

    goto :goto_c

    :cond_f
    move/from16 v35, v33

    :goto_c
    or-int v6, v6, v35

    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_10

    or-int/lit8 v35, v3, 0x6

    move/from16 v36, v1

    move-object/from16 v1, p10

    goto :goto_e

    :cond_10
    move/from16 v36, v1

    move-object/from16 v1, p10

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    const/16 v35, 0x4

    goto :goto_d

    :cond_11
    const/16 v35, 0x2

    :goto_d
    or-int v35, v3, v35

    :goto_e
    and-int/lit16 v1, v4, 0x800

    move/from16 v37, v1

    if-eqz v37, :cond_12

    or-int/lit8 v35, v35, 0x30

    :goto_f
    move/from16 v1, v35

    goto :goto_11

    :cond_12
    move-object/from16 v1, p11

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    const/16 v38, 0x20

    goto :goto_10

    :cond_13
    const/16 v38, 0x10

    :goto_10
    or-int v35, v35, v38

    goto :goto_f

    :goto_11
    and-int/lit16 v9, v4, 0x1000

    if-eqz v9, :cond_14

    or-int/lit16 v1, v1, 0x180

    goto :goto_13

    :cond_14
    move/from16 v35, v1

    move-object/from16 v1, p12

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    const/16 v19, 0x100

    goto :goto_12

    :cond_15
    const/16 v19, 0x80

    :goto_12
    or-int v19, v35, v19

    move/from16 v1, v19

    :goto_13
    move/from16 v19, v9

    and-int/lit16 v9, v4, 0x2000

    if-eqz v9, :cond_16

    or-int/lit16 v1, v1, 0xc00

    move/from16 v17, v1

    move-object/from16 v1, p13

    goto :goto_14

    :cond_16
    move/from16 v35, v1

    and-int/lit16 v1, v3, 0xc00

    if-nez v1, :cond_18

    move-object/from16 v1, p13

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    const/16 v17, 0x800

    :cond_17
    or-int v17, v35, v17

    goto :goto_14

    :cond_18
    move-object/from16 v1, p13

    move/from16 v17, v35

    :goto_14
    and-int/lit16 v1, v3, 0x6000

    if-nez v1, :cond_1a

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v18, 0x4000

    :cond_19
    or-int v17, v17, v18

    :cond_1a
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move/from16 v21, v27

    :cond_1b
    or-int v1, v17, v21

    move/from16 v17, v1

    move-object/from16 v1, p16

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    move/from16 v18, v25

    goto :goto_15

    :cond_1c
    move/from16 v18, v26

    :goto_15
    or-int v17, v17, v18

    and-int v18, v4, v27

    if-eqz v18, :cond_1d

    const/high16 v21, 0xc00000

    or-int v17, v17, v21

    move-object/from16 v1, p17

    goto :goto_16

    :cond_1d
    move-object/from16 v1, p17

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    const/high16 v29, 0x800000

    :cond_1e
    or-int v17, v17, v29

    :goto_16
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/high16 v31, 0x4000000

    :cond_1f
    or-int v17, v17, v31

    and-int v21, v4, v26

    if-eqz v21, :cond_20

    const/high16 v26, 0x30000000

    or-int v17, v17, v26

    :goto_17
    move/from16 v1, v17

    goto :goto_18

    :cond_20
    move-object/from16 v1, p19

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    const/high16 v33, 0x20000000

    :cond_21
    or-int v17, v17, v33

    goto :goto_17

    :goto_18
    and-int v17, v4, v25

    const/16 v26, 0x6

    if-eqz v17, :cond_22

    move-object/from16 v2, p20

    move/from16 v29, v26

    goto :goto_1a

    :cond_22
    and-int/lit8 v29, p25, 0x6

    move-object/from16 v2, p20

    if-nez v29, :cond_24

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    const/16 v29, 0x4

    goto :goto_19

    :cond_23
    const/16 v29, 0x2

    :goto_19
    or-int v29, p25, v29

    goto :goto_1a

    :cond_24
    move/from16 v29, p25

    :goto_1a
    const/high16 v31, 0x200000

    and-int v31, v4, v31

    if-eqz v31, :cond_25

    or-int/lit8 v29, v29, 0x30

    move-object/from16 v2, p21

    goto :goto_1c

    :cond_25
    move-object/from16 v2, p21

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_26

    const/16 v33, 0x20

    goto :goto_1b

    :cond_26
    const/16 v33, 0x10

    :goto_1b
    or-int v29, v29, v33

    :goto_1c
    const v33, 0x12492493

    and-int v2, v6, v33

    const v3, 0x12492492

    if-ne v2, v3, :cond_28

    and-int v2, v1, v33

    if-ne v2, v3, :cond_28

    and-int/lit8 v2, v29, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_27

    goto :goto_1d

    :cond_27
    const/4 v2, 0x0

    goto :goto_1e

    :cond_28
    const/16 v3, 0x12

    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    and-int/lit8 v3, v6, 0x1

    invoke-virtual {v14, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, p23, 0x1

    const v33, -0x70000001

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_2c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_1f

    :cond_29
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_2a

    and-int/lit16 v6, v6, -0x381

    :cond_2a
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_2b

    and-int v6, v6, v33

    :cond_2b
    move-object/from16 v11, p8

    move-object/from16 v9, p10

    move-object/from16 v19, p12

    move-object/from16 v17, p17

    move-object/from16 v18, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move/from16 v24, v6

    move v2, v12

    move v4, v13

    move v3, v15

    move/from16 v12, p6

    move-object/from16 v6, p9

    move-object/from16 v13, p11

    move-object/from16 v15, p13

    goto/16 :goto_32

    :cond_2c
    :goto_1f
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_2d
    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    :goto_20
    and-int/lit16 v6, v6, -0x381

    move v12, v2

    goto :goto_21

    :cond_2e
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2f
    :goto_21
    if-eqz v16, :cond_30

    const/4 v13, 0x1

    :cond_30
    if-eqz v20, :cond_31

    const/4 v15, 0x0

    :cond_31
    if-eqz v24, :cond_32

    const/4 v2, 0x1

    goto :goto_22

    :cond_32
    move/from16 v2, p6

    :goto_22
    if-eqz v11, :cond_33

    const/4 v11, 0x0

    goto :goto_23

    :cond_33
    move-object/from16 v11, p8

    :goto_23
    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_34

    const/4 v3, 0x3

    move/from16 p2, v2

    const/4 v2, 0x0

    invoke-static {v2, v14, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v3

    and-int v2, v6, v33

    move v6, v2

    goto :goto_24

    :cond_34
    move/from16 p2, v2

    move-object/from16 v3, p9

    :goto_24
    if-eqz v36, :cond_36

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_35

    new-instance v2, Lii0;

    move-object/from16 p4, v3

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lii0;-><init>(I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_25

    :cond_35
    move-object/from16 p4, v3

    :goto_25
    check-cast v2, Lkotlin/jvm/functions/Function0;

    goto :goto_26

    :cond_36
    move-object/from16 p4, v3

    move-object/from16 v2, p10

    :goto_26
    if-eqz v37, :cond_37

    const/4 v3, 0x0

    goto :goto_27

    :cond_37
    move-object/from16 v3, p11

    :goto_27
    if-eqz v19, :cond_38

    const/16 v19, 0x0

    goto :goto_28

    :cond_38
    move-object/from16 v19, p12

    :goto_28
    if-eqz v9, :cond_39

    const/4 v9, 0x0

    goto :goto_29

    :cond_39
    move-object/from16 v9, p13

    :goto_29
    move-object/from16 p5, v2

    if-eqz v18, :cond_3b

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_3a

    new-instance v2, Laj0;

    move-object/from16 p6, v3

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Laj0;-><init>(I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3a
    move-object/from16 p6, v3

    :goto_2a
    check-cast v2, Lkotlin/jvm/functions/Function2;

    goto :goto_2b

    :cond_3b
    move-object/from16 p6, v3

    move-object/from16 v2, p17

    :goto_2b
    if-eqz v21, :cond_3d

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_3c

    new-instance v3, Lfj0;

    move-object/from16 p8, v2

    const/16 v2, 0x18

    invoke-direct {v3, v2}, Lfj0;-><init>(I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_3c
    move-object/from16 p8, v2

    const/16 v2, 0x18

    :goto_2c
    check-cast v3, Lkotlin/jvm/functions/Function1;

    goto :goto_2d

    :cond_3d
    move-object/from16 p8, v2

    const/16 v2, 0x18

    move-object/from16 v3, p19

    :goto_2d
    if-eqz v17, :cond_3f

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_3e

    new-instance v2, Lfj0;

    move-object/from16 p9, v3

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lfj0;-><init>(I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_3e
    move-object/from16 p9, v3

    :goto_2e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_2f

    :cond_3f
    move-object/from16 p9, v3

    move-object/from16 v2, p20

    :goto_2f
    if-eqz v31, :cond_41

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_40

    new-instance v3, Lfj0;

    move-object/from16 p10, v2

    const/16 v2, 0x1a

    invoke-direct {v3, v2}, Lfj0;-><init>(I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_30

    :cond_40
    move-object/from16 p10, v2

    :goto_30
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v20, p10

    move-object/from16 v21, v2

    :goto_31
    move/from16 v24, v6

    move v2, v12

    move v4, v13

    move v3, v15

    move/from16 v12, p2

    move-object/from16 v6, p4

    move-object/from16 v13, p6

    move-object v15, v9

    move-object/from16 v9, p5

    goto :goto_32

    :cond_41
    move-object/from16 p10, v2

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p21

    goto :goto_31

    :goto_32
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v31, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 p2, v3

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    move/from16 p4, v4

    and-int/lit8 v4, v29, 0xe

    move-object/from16 p5, v6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_42

    const/4 v4, 0x1

    goto :goto_33

    :cond_42
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_43

    if-ne v6, v7, :cond_44

    :cond_43
    new-instance v4, Lcom/vuitton/android/presentation/compose/NestedScroll;

    const/4 v6, 0x5

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 p8, v4

    move/from16 p12, v6

    move-object/from16 p10, v20

    move-object/from16 p13, v31

    move/from16 p9, v33

    move-object/from16 p11, v36

    invoke-direct/range {p8 .. p13}, Lcom/vuitton/android/presentation/compose/NestedScroll;-><init>(FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, p8

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_44
    check-cast v6, Lcom/vuitton/android/presentation/compose/NestedScroll;

    if-eqz p3, :cond_45

    const v4, -0x61e64f70

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 p9, v4

    iget v4, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;->a:I

    shr-int/lit8 v31, v24, 0x1b

    and-int/lit8 v31, v31, 0xe

    shr-int/lit8 v33, v24, 0x6

    and-int/lit8 v33, v33, 0x70

    or-int v31, v31, v33

    move/from16 p10, v4

    shl-int/lit8 v4, v29, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int v4, v31, v4

    move-object/from16 p8, p5

    move/from16 p13, v4

    move-object/from16 p12, v14

    move-object/from16 p11, v21

    invoke-static/range {p8 .. p13}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v21, p8

    move-object/from16 v26, p11

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_34

    :cond_45
    move-object/from16 v26, v21

    const/4 v4, 0x0

    move-object/from16 v21, p5

    const v5, -0x61e28e70

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_34
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_46

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_35

    :cond_46
    const/4 v4, 0x0

    :goto_35
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_47

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    move-object/from16 p5, v5

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_36

    :cond_47
    move-object/from16 p5, v5

    :goto_36
    check-cast v4, Landroidx/compose/runtime/MutableState;

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v29, v0

    const/4 v0, 0x0

    invoke-static {v5, v6, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v31

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v6, 0xd

    const/4 v0, 0x0

    invoke-static {v0, v5, v0, v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v33

    and-int/lit8 v0, v1, 0x70

    const/16 v5, 0x20

    if-ne v0, v5, :cond_48

    const/4 v0, 0x1

    goto :goto_37

    :cond_48
    const/4 v0, 0x0

    :goto_37
    const/high16 p6, 0x1c00000

    and-int v5, v24, p6

    const/high16 v6, 0x800000

    if-eq v5, v6, :cond_4a

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_38

    :cond_49
    const/4 v5, 0x0

    goto :goto_39

    :cond_4a
    :goto_38
    const/4 v5, 0x1

    :goto_39
    or-int/2addr v0, v5

    const/high16 v5, 0x70000

    and-int v6, v24, v5

    move/from16 p9, v5

    move/from16 v5, v27

    if-ne v6, v5, :cond_4b

    const/4 v5, 0x1

    goto :goto_3a

    :cond_4b
    const/4 v5, 0x0

    :goto_3a
    or-int/2addr v0, v5

    const v36, 0xe000

    and-int v5, v24, v36

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_4c

    const/4 v5, 0x1

    goto :goto_3b

    :cond_4c
    const/4 v5, 0x0

    :goto_3b
    or-int/2addr v0, v5

    and-int/lit16 v5, v1, 0x1c00

    const/16 v6, 0x800

    if-ne v5, v6, :cond_4d

    const/4 v5, 0x1

    goto :goto_3c

    :cond_4d
    const/4 v5, 0x0

    :goto_3c
    or-int/2addr v0, v5

    and-int v5, v1, p9

    const/high16 v6, 0x20000

    if-ne v5, v6, :cond_4e

    const/16 v22, 0x1

    goto :goto_3d

    :cond_4e
    const/16 v22, 0x0

    :goto_3d
    or-int v0, v0, v22

    and-int v6, v1, p6

    move/from16 p6, v0

    const/high16 v0, 0x800000

    if-ne v6, v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_3e

    :cond_4f
    const/4 v0, 0x0

    :goto_3e
    or-int v0, p6, v0

    const/high16 p6, 0x380000

    and-int v6, v1, p6

    move/from16 p9, v0

    move/from16 v0, v25

    if-ne v6, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_3f

    :cond_50
    const/4 v0, 0x0

    :goto_3f
    or-int v0, p9, v0

    const/high16 v6, 0xe000000

    and-int/2addr v6, v1

    move/from16 p9, v0

    const/high16 v0, 0x4000000

    if-ne v6, v0, :cond_51

    const/16 v22, 0x1

    goto :goto_40

    :cond_51
    const/16 v22, 0x0

    :goto_40
    or-int v22, p9, v22

    const/high16 v28, 0x70000000

    and-int v0, v1, v28

    move/from16 v28, v2

    const/high16 v2, 0x20000000

    if-ne v0, v2, :cond_52

    const/4 v2, 0x1

    goto :goto_41

    :cond_52
    const/4 v2, 0x0

    :goto_41
    or-int v0, v22, v2

    and-int v2, v24, p6

    move/from16 p6, v0

    const/high16 v0, 0x100000

    if-ne v2, v0, :cond_53

    const/4 v2, 0x1

    goto :goto_42

    :cond_53
    const/4 v2, 0x0

    :goto_42
    or-int v0, p6, v2

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    move/from16 p6, v0

    const/16 v0, 0x100

    if-ne v2, v0, :cond_54

    const/4 v2, 0x1

    goto :goto_43

    :cond_54
    const/4 v2, 0x0

    :goto_43
    or-int v0, p6, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_56

    if-ne v2, v7, :cond_55

    goto :goto_44

    :cond_55
    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v22, v1

    move-object v0, v2

    move/from16 v43, v5

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v42, v9

    move-object v2, v10

    move-object/from16 v41, v11

    move v5, v12

    move-object v6, v13

    move-object/from16 v25, v15

    move-object/from16 v27, v17

    move-object/from16 v30, v18

    move-object/from16 v23, v19

    const/16 v19, 0x0

    const/16 v39, 0x18

    move-object/from16 v1, p15

    goto :goto_45

    :cond_56
    :goto_44
    new-instance v0, Lnk0;

    move/from16 v22, v1

    move/from16 v16, v3

    move/from16 v43, v5

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object v2, v8

    move-object/from16 v42, v9

    move-object/from16 v41, v11

    move-object v1, v13

    move-object/from16 v40, v14

    move-object v6, v15

    move-object/from16 v8, v17

    move-object/from16 v11, v18

    move-object/from16 v13, v19

    const/16 v19, 0x0

    const/16 v39, 0x18

    move-object/from16 v5, p1

    move/from16 v3, p2

    move-object/from16 v15, p5

    move-object/from16 v7, p15

    move-object/from16 v9, p16

    move-object v14, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v16}, Lnk0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/paging/compose/LazyPagingItems;ZZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;F)V

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move-object v2, v10

    move-object/from16 v30, v11

    move v5, v12

    move-object/from16 v23, v13

    move-object/from16 v14, v40

    move-object v6, v1

    move-object v1, v7

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_45
    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v24, 0x18

    and-int/lit8 v17, v0, 0x70

    const/16 v18, 0x1f8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v40, v14

    const/4 v14, 0x0

    move-object/from16 v8, v21

    move-object/from16 v7, v31

    move-object/from16 v9, v33

    move-object/from16 v16, v40

    invoke-static/range {v7 .. v18}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v16

    move-object/from16 v8, v41

    if-nez v8, :cond_57

    const v0, -0x61c38692

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 p2, v3

    goto/16 :goto_54

    :cond_57
    const/4 v0, 0x0

    const v7, -0x61c38691

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v7, v8, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->f:Ljava/util/List;

    iget v9, v8, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->b:I

    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v7, :cond_58

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v7, :cond_58

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    move-object v9, v7

    goto :goto_46

    :cond_58
    move-object/from16 v9, v19

    :goto_46
    and-int/lit8 v7, v22, 0xe

    const/4 v10, 0x4

    if-ne v7, v10, :cond_59

    const/4 v11, 0x1

    goto :goto_47

    :cond_59
    move v11, v0

    :goto_47
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_5b

    move-object/from16 v11, v45

    if-ne v12, v11, :cond_5a

    goto :goto_48

    :cond_5a
    move-object/from16 v13, v42

    goto :goto_49

    :cond_5b
    move-object/from16 v11, v45

    :goto_48
    new-instance v12, Lee0;

    move-object/from16 v13, v42

    const/16 v15, 0xd

    invoke-direct {v12, v13, v15}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_49
    check-cast v12, Lkotlin/jvm/functions/Function0;

    if-ne v7, v10, :cond_5c

    const/4 v15, 0x1

    goto :goto_4a

    :cond_5c
    move v15, v0

    :goto_4a
    and-int v0, v22, v36

    const/16 v10, 0x4000

    if-ne v0, v10, :cond_5d

    const/4 v0, 0x1

    goto :goto_4b

    :cond_5d
    const/4 v0, 0x0

    :goto_4b
    or-int/2addr v0, v15

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_5f

    if-ne v10, v11, :cond_5e

    goto :goto_4c

    :cond_5e
    move-object/from16 v0, p14

    const/4 v15, 0x1

    goto :goto_4d

    :cond_5f
    :goto_4c
    new-instance v10, Llk0;

    move-object/from16 v0, p14

    const/4 v15, 0x1

    invoke-direct {v10, v13, v0, v8, v15}, Llk0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_4d
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x4

    if-ne v7, v15, :cond_60

    const/4 v15, 0x1

    :goto_4e
    move/from16 p2, v3

    move/from16 v0, v43

    const/high16 v3, 0x20000

    goto :goto_4f

    :cond_60
    const/4 v15, 0x0

    goto :goto_4e

    :goto_4f
    if-ne v0, v3, :cond_61

    const/4 v0, 0x1

    goto :goto_50

    :cond_61
    const/4 v0, 0x0

    :goto_50
    or-int/2addr v0, v15

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_62

    if-ne v3, v11, :cond_63

    :cond_62
    new-instance v3, Llk0;

    const/4 v0, 0x0

    invoke-direct {v3, v13, v1, v8, v0}, Llk0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_63
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x4

    if-ne v7, v15, :cond_64

    const/4 v7, 0x1

    :goto_51
    move/from16 v0, v44

    const/high16 v15, 0x4000000

    goto :goto_52

    :cond_64
    const/4 v7, 0x0

    goto :goto_51

    :goto_52
    if-ne v0, v15, :cond_65

    const/16 v38, 0x1

    goto :goto_53

    :cond_65
    const/16 v38, 0x0

    :goto_53
    or-int v0, v7, v38

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_66

    if-ne v7, v11, :cond_67

    :cond_66
    new-instance v7, Lof0;

    const/16 v0, 0x12

    invoke-direct {v7, v13, v2, v8, v0}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_67
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    move-object/from16 v42, v13

    move-object v13, v7

    const/4 v7, 0x0

    move-object v11, v10

    move-object v10, v12

    move-object v12, v3

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductFocusDialogKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_54
    move v7, v5

    move-object v12, v6

    move-object v9, v8

    move-object/from16 v40, v14

    move-object/from16 v10, v21

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object/from16 v22, v26

    move-object/from16 v18, v27

    move/from16 v3, v28

    move-object/from16 v11, v42

    move/from16 v6, p2

    move v5, v4

    move-object/from16 v21, v20

    move-object/from16 v20, v30

    goto :goto_55

    :cond_68
    move-object/from16 v1, p15

    move-object/from16 v29, v0

    move-object v2, v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v18, p17

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move v3, v12

    move v5, v13

    move-object/from16 v40, v14

    move v6, v15

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    :goto_55
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_69

    move-object v4, v0

    new-instance v0, Lmk0;

    move-object/from16 v8, p7

    move-object/from16 v15, p14

    move-object/from16 v17, p16

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v46, v4

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v26}, Lmk0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;FLjava/lang/Integer;ZZZLandroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IIII)V

    move-object/from16 v4, v46

    iput-object v0, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_69
    return-void
.end method
