.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt$WhenMappings;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v1, p20

    move/from16 v2, p21

    move/from16 v4, p22

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "DynamicFormComposable-KMZiVUk"

    if-eqz v0, :cond_0

    invoke-static {v0, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, -0x7454085b

    move-object/from16 v10, p19

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_1

    or-int/lit8 v13, v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v13, v1, 0x6

    if-nez v13, :cond_3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x4

    goto :goto_0

    :cond_2
    const/4 v13, 0x2

    :goto_0
    or-int/2addr v13, v1

    goto :goto_1

    :cond_3
    move v13, v1

    :goto_1
    and-int/lit8 v14, v4, 0x2

    const/16 v16, 0x10

    if-eqz v14, :cond_4

    or-int/lit8 v13, v13, 0x30

    goto :goto_5

    :cond_4
    and-int/lit8 v17, v1, 0x30

    if-nez v17, :cond_7

    if-nez p1, :cond_5

    const/16 v17, -0x1

    :goto_2
    move/from16 v11, v17

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    goto :goto_2

    :goto_3
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x20

    goto :goto_4

    :cond_6
    move/from16 v11, v16

    :goto_4
    or-int/2addr v13, v11

    :cond_7
    :goto_5
    and-int/lit16 v11, v1, 0x180

    const/16 v17, 0x80

    const/16 v18, 0x100

    if-nez v11, :cond_9

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v11, v18

    goto :goto_6

    :cond_8
    move/from16 v11, v17

    :goto_6
    or-int/2addr v13, v11

    :cond_9
    and-int/lit8 v11, v4, 0x8

    const/16 v19, 0x400

    const/16 v20, 0x800

    if-eqz v11, :cond_b

    or-int/lit16 v13, v13, 0xc00

    :cond_a
    move/from16 v15, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v15, v1, 0xc00

    if-nez v15, :cond_a

    move/from16 v15, p3

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v20

    goto :goto_7

    :cond_c
    move/from16 v21, v19

    :goto_7
    or-int v13, v13, v21

    :goto_8
    and-int/lit16 v12, v1, 0x6000

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-nez v12, :cond_f

    and-int/lit8 v12, v4, 0x10

    if-nez v12, :cond_d

    move/from16 v12, p4

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v24

    if-eqz v24, :cond_e

    move/from16 v24, v23

    goto :goto_9

    :cond_d
    move/from16 v12, p4

    :cond_e
    move/from16 v24, v22

    :goto_9
    or-int v13, v13, v24

    goto :goto_a

    :cond_f
    move/from16 v12, p4

    :goto_a
    const/high16 v24, 0x30000

    and-int v25, v1, v24

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    if-nez v25, :cond_11

    move/from16 v25, v14

    move-object/from16 v14, p5

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    move/from16 v28, v27

    goto :goto_b

    :cond_10
    move/from16 v28, v26

    :goto_b
    or-int v13, v13, v28

    goto :goto_c

    :cond_11
    move/from16 v25, v14

    move-object/from16 v14, p5

    :goto_c
    and-int/lit8 v28, v4, 0x40

    const/high16 v29, 0x80000

    const/high16 v30, 0x180000

    if-eqz v28, :cond_12

    or-int v13, v13, v30

    move-object/from16 v14, p6

    goto :goto_e

    :cond_12
    and-int v31, v1, v30

    move-object/from16 v14, p6

    if-nez v31, :cond_14

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x100000

    goto :goto_d

    :cond_13
    move/from16 v32, v29

    :goto_d
    or-int v13, v13, v32

    :cond_14
    :goto_e
    and-int/lit16 v5, v4, 0x80

    const/high16 v32, 0x400000

    const/high16 v33, 0xc00000

    if-eqz v5, :cond_15

    or-int v13, v13, v33

    move-object/from16 v14, p7

    goto :goto_10

    :cond_15
    and-int v34, v1, v33

    move-object/from16 v14, p7

    if-nez v34, :cond_17

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    const/high16 v35, 0x800000

    goto :goto_f

    :cond_16
    move/from16 v35, v32

    :goto_f
    or-int v13, v13, v35

    :cond_17
    :goto_10
    move-object/from16 v35, v0

    and-int/lit16 v0, v4, 0x100

    const/high16 v36, 0x2000000

    const/high16 v37, 0x6000000

    if-eqz v0, :cond_18

    or-int v13, v13, v37

    move-object/from16 v14, p8

    goto :goto_12

    :cond_18
    and-int v38, v1, v37

    move-object/from16 v14, p8

    if-nez v38, :cond_1a

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_19

    const/high16 v39, 0x4000000

    goto :goto_11

    :cond_19
    move/from16 v39, v36

    :goto_11
    or-int v13, v13, v39

    :cond_1a
    :goto_12
    move/from16 v39, v0

    and-int/lit16 v0, v4, 0x200

    const/high16 v40, 0x30000000

    if-eqz v0, :cond_1b

    or-int v13, v13, v40

    move-object/from16 v14, p9

    goto :goto_14

    :cond_1b
    and-int v40, v1, v40

    move-object/from16 v14, p9

    if-nez v40, :cond_1d

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1c

    const/high16 v41, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v41, 0x10000000

    :goto_13
    or-int v13, v13, v41

    :cond_1d
    :goto_14
    move/from16 v41, v0

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v42, v2, 0x6

    move/from16 v43, v42

    move/from16 v42, v0

    move/from16 v0, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v42, v2, 0x6

    if-nez v42, :cond_20

    move/from16 v42, v0

    move/from16 v0, p10

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v43

    if-eqz v43, :cond_1f

    const/16 v43, 0x4

    goto :goto_15

    :cond_1f
    const/16 v43, 0x2

    :goto_15
    or-int v43, v2, v43

    goto :goto_16

    :cond_20
    move/from16 v42, v0

    move/from16 v0, p10

    move/from16 v43, v2

    :goto_16
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v43, v43, 0x30

    move/from16 v44, v0

    :goto_17
    move/from16 v0, v43

    goto :goto_18

    :cond_21
    and-int/lit8 v44, v2, 0x30

    if-nez v44, :cond_23

    move/from16 v44, v0

    move/from16 v0, p11

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v45

    if-eqz v45, :cond_22

    const/16 v16, 0x20

    :cond_22
    or-int v43, v43, v16

    goto :goto_17

    :cond_23
    move/from16 v44, v0

    move/from16 v0, p11

    goto :goto_17

    :goto_18
    and-int/lit16 v1, v4, 0x1000

    if-eqz v1, :cond_24

    or-int/lit16 v0, v0, 0x180

    goto :goto_1a

    :cond_24
    move/from16 v16, v0

    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_26

    move/from16 v0, p12

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v43

    if-eqz v43, :cond_25

    move/from16 v17, v18

    :cond_25
    or-int v16, v16, v17

    :goto_19
    move/from16 v0, v16

    goto :goto_1a

    :cond_26
    move/from16 v0, p12

    goto :goto_19

    :goto_1a
    move/from16 v16, v1

    and-int/lit16 v1, v4, 0x2000

    if-eqz v1, :cond_27

    or-int/lit16 v0, v0, 0xc00

    goto :goto_1b

    :cond_27
    move/from16 v17, v0

    move-object/from16 v0, p13

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    move/from16 v19, v20

    :cond_28
    or-int v17, v17, v19

    move/from16 v0, v17

    :goto_1b
    move/from16 v17, v1

    and-int/lit16 v1, v4, 0x4000

    if-eqz v1, :cond_29

    or-int/lit16 v0, v0, 0x6000

    move/from16 v18, v0

    move-object/from16 v0, p14

    goto :goto_1c

    :cond_29
    move/from16 v18, v0

    move-object/from16 v0, p14

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    move/from16 v22, v23

    :cond_2a
    or-int v18, v18, v22

    :goto_1c
    const v19, 0x8000

    and-int v19, v4, v19

    if-eqz v19, :cond_2b

    or-int v18, v18, v24

    move-object/from16 v0, p15

    goto :goto_1e

    :cond_2b
    and-int v20, v2, v24

    move-object/from16 v0, p15

    if-nez v20, :cond_2d

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    move/from16 v20, v27

    goto :goto_1d

    :cond_2c
    move/from16 v20, v26

    :goto_1d
    or-int v18, v18, v20

    :cond_2d
    :goto_1e
    and-int v20, v4, v26

    if-eqz v20, :cond_2e

    or-int v18, v18, v30

    move-object/from16 v0, p16

    goto :goto_1f

    :cond_2e
    and-int v22, v2, v30

    move-object/from16 v0, p16

    if-nez v22, :cond_30

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    const/high16 v29, 0x100000

    :cond_2f
    or-int v18, v18, v29

    :cond_30
    :goto_1f
    and-int v22, v4, v27

    if-eqz v22, :cond_31

    or-int v18, v18, v33

    move-object/from16 v0, p17

    goto :goto_20

    :cond_31
    and-int v23, v2, v33

    move-object/from16 v0, p17

    if-nez v23, :cond_33

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_32

    const/high16 v32, 0x800000

    :cond_32
    or-int v18, v18, v32

    :cond_33
    :goto_20
    const/high16 v23, 0x40000

    and-int v23, v4, v23

    if-eqz v23, :cond_35

    or-int v18, v18, v37

    move/from16 v0, p18

    :cond_34
    :goto_21
    move/from16 v33, v18

    goto :goto_22

    :cond_35
    and-int v24, v2, v37

    move/from16 v0, p18

    if-nez v24, :cond_34

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v24

    if-eqz v24, :cond_36

    const/high16 v36, 0x4000000

    :cond_36
    or-int v18, v18, v36

    goto :goto_21

    :goto_22
    const v18, 0x12492493

    and-int v0, v13, v18

    move/from16 v18, v1

    const v1, 0x12492492

    if-ne v0, v1, :cond_38

    const v0, 0x2492493

    and-int v0, v33, v0

    const v1, 0x2492492

    if-eq v0, v1, :cond_37

    goto :goto_23

    :cond_37
    const/4 v0, 0x0

    goto :goto_24

    :cond_38
    :goto_23
    const/4 v0, 0x1

    :goto_24
    and-int/lit8 v1, v13, 0x1

    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p20, 0x1

    const p0, -0xe001

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_3b

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_25

    :cond_39
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_3a

    and-int v13, v13, p0

    :cond_3a
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v36, p11

    move/from16 v37, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v22, p17

    move/from16 v39, p18

    move v5, v12

    move/from16 v41, v13

    move-object/from16 v14, v35

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v35, p10

    goto/16 :goto_38

    :cond_3b
    :goto_25
    if-eqz v10, :cond_3c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_3c
    move-object/from16 v0, v35

    :goto_26
    if-eqz v25, :cond_3d

    sget-object v10, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_27

    :cond_3d
    move-object/from16 v10, p1

    :goto_27
    if-eqz v11, :cond_3e

    const/4 v11, 0x1

    goto :goto_28

    :cond_3e
    move/from16 v11, p3

    :goto_28
    and-int/lit8 v24, v4, 0x10

    if-eqz v24, :cond_3f

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    and-int v13, v13, p0

    :cond_3f
    if-eqz v28, :cond_41

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_40

    new-instance v1, Lbp;

    const/16 v14, 0x1d

    invoke-direct {v1, v14}, Lbp;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_40
    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_29

    :cond_41
    move-object/from16 v1, p6

    :goto_29
    if-eqz v5, :cond_43

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_42

    new-instance v5, Lrt;

    const/16 v14, 0xa

    invoke-direct {v5, v14}, Lrt;-><init>(I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v5, Lkotlin/jvm/functions/Function0;

    goto :goto_2a

    :cond_43
    move-object/from16 v5, p7

    :goto_2a
    if-eqz v39, :cond_45

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v15, :cond_44

    new-instance v14, Liv;

    move-object/from16 v24, v0

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Liv;-><init>(I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_44
    move-object/from16 v24, v0

    :goto_2b
    move-object v0, v14

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_2c

    :cond_45
    move-object/from16 v24, v0

    move-object/from16 v0, p8

    :goto_2c
    if-eqz v41, :cond_47

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v15, :cond_46

    new-instance v14, Liv;

    move-object/from16 p1, v0

    const/4 v0, 0x1

    invoke-direct {v14, v0}, Liv;-><init>(I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_46
    move-object/from16 p1, v0

    :goto_2d
    move-object v0, v14

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_2e

    :cond_47
    move-object/from16 p1, v0

    move-object/from16 v0, p9

    :goto_2e
    if-eqz v42, :cond_48

    const/4 v14, 0x0

    goto :goto_2f

    :cond_48
    move/from16 v14, p10

    :goto_2f
    if-eqz v44, :cond_49

    const/16 v25, 0x0

    goto :goto_30

    :cond_49
    move/from16 v25, p11

    :goto_30
    if-eqz v16, :cond_4a

    const/16 v16, 0x0

    goto :goto_31

    :cond_4a
    move/from16 v16, p12

    :goto_31
    if-eqz v17, :cond_4b

    const/16 v17, 0x0

    goto :goto_32

    :cond_4b
    move-object/from16 v17, p13

    :goto_32
    if-eqz v18, :cond_4c

    const/16 v18, 0x0

    goto :goto_33

    :cond_4c
    move-object/from16 v18, p14

    :goto_33
    if-eqz v19, :cond_4d

    const/16 v19, 0x0

    goto :goto_34

    :cond_4d
    move-object/from16 v19, p15

    :goto_34
    if-eqz v20, :cond_4e

    const/16 v20, 0x0

    goto :goto_35

    :cond_4e
    move-object/from16 v20, p16

    :goto_35
    if-eqz v22, :cond_4f

    sget-object v22, Lcom/vuitton/android/presentation/screen/dynamicform/components/ComposableSingletons$DynamicFormComposableKt;->a:Lcom/vuitton/android/presentation/screen/dynamicform/components/ComposableSingletons$DynamicFormComposableKt;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Lcom/vuitton/android/presentation/screen/dynamicform/components/ComposableSingletons$DynamicFormComposableKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_36

    :cond_4f
    move-object/from16 v22, p17

    :goto_36
    if-eqz v23, :cond_50

    move/from16 v41, v13

    move/from16 v35, v14

    move/from16 v37, v16

    move-object/from16 v14, v24

    move/from16 v36, v25

    const/16 v39, 0x1

    :goto_37
    move-object v13, v0

    move-object v0, v10

    move-object v10, v1

    move v1, v11

    move-object v11, v5

    move v5, v12

    move-object/from16 v12, p1

    goto :goto_38

    :cond_50
    move/from16 v39, p18

    move/from16 v41, v13

    move/from16 v35, v14

    move/from16 v37, v16

    move-object/from16 v14, v24

    move/from16 v36, v25

    goto :goto_37

    :goto_38
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 p1, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_51

    new-instance v0, Lcom/vuitton/android/core/helper/DebounceHandler;

    move/from16 p3, v1

    const-wide/16 v1, 0x0

    move/from16 p4, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/vuitton/android/core/helper/DebounceHandler;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_39

    :cond_51
    move/from16 p3, v1

    move/from16 p4, v5

    :goto_39
    check-cast v0, Lcom/vuitton/android/core/helper/DebounceHandler;

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_52

    if-ne v2, v15, :cond_57

    :cond_52
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    move-object v1, v8

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_53

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_3a

    :cond_53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;->b()Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_3b

    :cond_55
    :goto_3a
    const/4 v1, 0x1

    goto :goto_3c

    :cond_56
    :goto_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_57
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_59

    if-ne v4, v15, :cond_58

    goto :goto_3d

    :cond_58
    const/4 v2, 0x0

    goto :goto_3e

    :cond_59
    :goto_3d
    new-instance v4, Ljv;

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Ljv;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_3e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v2, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p6, v1

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v1, v9, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v2, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v9, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p7, v2

    iget-object v2, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v2, :cond_78

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_5a

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3f

    :cond_5a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3f
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    if-eqz p6, :cond_5d

    const v2, 0x57ff68e4

    invoke-static {v9, v2, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p10, v4

    move/from16 p11, v5

    move/from16 p7, v7

    move/from16 p9, v16

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x7f1402f6

    invoke-static {v9, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_5c

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5b

    const v5, 0x23df2ace

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v42, v8

    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_40
    const/high16 v5, 0x100000

    goto :goto_41

    :cond_5b
    const/4 v5, 0x0

    const v0, 0x23df145a

    invoke-static {v9, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_5c
    move-object/from16 v42, v8

    const/4 v5, 0x0

    const v7, 0x23df1fa8

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_40

    :goto_41
    const/16 v31, 0x0

    const v32, 0x1fff8

    move-object/from16 v24, v14

    move-object/from16 v16, v15

    const-wide/16 v14, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    const-wide/16 v17, 0x0

    move-object/from16 v27, v19

    const/16 v19, 0x0

    move-object/from16 v28, v20

    const/16 v20, 0x0

    move-object/from16 v29, v22

    const/16 v30, 0x2

    const-wide/16 v21, 0x0

    move-object/from16 v43, v23

    const/16 v23, 0x0

    move-object/from16 v44, v24

    const/16 v24, 0x0

    move-object/from16 v45, v25

    const/16 v25, 0x0

    move-object/from16 v46, v26

    const/16 v26, 0x0

    move-object/from16 v47, v27

    const/16 v27, 0x0

    move/from16 v48, v30

    const/16 v30, 0x0

    move-object v5, v11

    move-object v11, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v5

    move-object/from16 v49, v29

    move-object/from16 v50, v43

    const/4 v5, 0x1

    move-object/from16 v29, v9

    move-object/from16 v9, v45

    move-object/from16 v52, v28

    move-object/from16 v28, v4

    move-object v4, v12

    move-wide/from16 v53, v7

    move-object v8, v13

    move-wide/from16 v12, v53

    move-object/from16 v7, v52

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v29

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_42
    move-object/from16 v28, v7

    move-object/from16 v12, v46

    move-object/from16 v14, v47

    goto/16 :goto_45

    :cond_5d
    move-object/from16 v42, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v8, v13

    move-object/from16 v44, v14

    move-object/from16 v50, v15

    move-object/from16 v46, v18

    move-object/from16 v47, v19

    move-object/from16 v28, v20

    move-object/from16 v49, v22

    const/4 v5, 0x1

    move-object v10, v9

    move-object/from16 v9, v17

    if-eqz v39, :cond_62

    move-object/from16 v11, v42

    check-cast v11, Ljava/lang/Iterable;

    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_5e

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5e

    goto/16 :goto_44

    :cond_5e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_62

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;->b()Z

    move-result v12

    if-eqz v12, :cond_5f

    const v11, 0x580ab230    # 6.0999166E14f

    invoke-static {v10, v11, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v1, v7, v11}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const-string v11, "dropdown_supporting_text"

    invoke-static {v7, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const v7, 0x7f140d88

    invoke-static {v10, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v5, :cond_61

    const/4 v14, 0x2

    if-ne v13, v14, :cond_60

    const v13, 0x23df8e2f

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_43

    :cond_60
    const/4 v13, 0x0

    const v0, 0x23df779c

    invoke-static {v10, v0, v13}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_61
    const/4 v13, 0x0

    const v14, 0x23df82e9

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_43
    const/16 v31, 0x0

    const v32, 0x1fff8

    move-object/from16 v20, v28

    move-object/from16 v28, v12

    move-wide v12, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v22

    const/16 v30, 0x2

    const-wide/16 v21, 0x0

    move-object/from16 v24, v23

    const/16 v23, 0x0

    move-object/from16 v25, v24

    const/16 v24, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v27, v26

    const/16 v26, 0x0

    move-object/from16 v29, v27

    const/16 v27, 0x0

    move/from16 v48, v30

    const/16 v30, 0x0

    move-object/from16 v52, v10

    move-object v10, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v52

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v29

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_42

    :cond_62
    :goto_44
    move-object/from16 v12, v46

    move-object/from16 v14, v47

    const/4 v13, 0x0

    const v7, 0x58132967

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_45
    const v7, 0x23df9f8b

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v7, v42

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v25, v11, 0x1

    if-ltz v11, :cond_76

    check-cast v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    if-nez v9, :cond_63

    const v15, 0x63369adb

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_48

    :cond_63
    const v15, 0x63369adc

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    instance-of v15, v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v15, :cond_64

    const v15, -0xaf02a36

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v15, v13

    check-cast v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-interface {v9, v13, v10, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    iput-object v5, v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g:Landroidx/compose/ui/text/AnnotatedString;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_47

    :cond_64
    const/4 v15, 0x0

    const v5, -0xaeefa25

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_47
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_48
    if-nez v12, :cond_65

    const v5, 0x633a9731

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4a

    :cond_65
    const v5, 0x633a9732

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    instance-of v5, v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v5, :cond_66

    const v5, 0x22ca0f77

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v5, v13

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-interface {v12, v13, v10, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/jvm/functions/Function0;

    iput-object v15, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->h:Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_49

    :cond_66
    const/4 v15, 0x0

    const v5, 0x22cb6512

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_49
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4a
    if-nez v14, :cond_67

    const v5, 0x633e69fe

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    :goto_4b
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4c

    :cond_67
    const v5, 0x633e69ff

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v14, v13, v10, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :goto_4c
    invoke-static/range {v42 .. v42}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v5

    if-ne v11, v5, :cond_68

    const/4 v11, 0x1

    goto :goto_4d

    :cond_68
    const/4 v11, 0x0

    :goto_4d
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/high16 p6, 0x380000

    and-int v15, v41, p6

    move/from16 p7, v5

    const/high16 v5, 0x100000

    if-ne v15, v5, :cond_69

    const/4 v15, 0x1

    goto :goto_4e

    :cond_69
    const/4 v15, 0x0

    :goto_4e
    or-int v15, p7, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v15, :cond_6b

    move-object/from16 v15, v50

    if-ne v5, v15, :cond_6a

    goto :goto_4f

    :cond_6a
    move-object/from16 p7, v7

    goto :goto_50

    :cond_6b
    move-object/from16 v15, v50

    :goto_4f
    new-instance v5, Lkv;

    move-object/from16 p7, v7

    const/4 v7, 0x0

    invoke-direct {v5, v0, v2, v7}, Lkv;-><init>(Lcom/vuitton/android/core/helper/DebounceHandler;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_50
    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v7, 0xe000000

    and-int v7, v41, v7

    move-object/from16 v26, v2

    const/high16 v2, 0x4000000

    if-ne v7, v2, :cond_6c

    const/4 v7, 0x1

    goto :goto_51

    :cond_6c
    const/4 v7, 0x0

    :goto_51
    or-int/2addr v5, v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_6d

    if-ne v7, v15, :cond_6e

    :cond_6d
    new-instance v7, Lkv;

    const/4 v5, 0x1

    invoke-direct {v7, v0, v4, v5}, Lkv;-><init>(Lcom/vuitton/android/core/helper/DebounceHandler;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6e
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v7, 0x70000000

    and-int v7, v41, v7

    const/high16 v2, 0x20000000

    if-ne v7, v2, :cond_6f

    const/4 v7, 0x1

    goto :goto_52

    :cond_6f
    const/4 v7, 0x0

    :goto_52
    or-int/2addr v5, v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_71

    if-ne v7, v15, :cond_70

    goto :goto_53

    :cond_70
    const/4 v5, 0x2

    goto :goto_54

    :cond_71
    :goto_53
    new-instance v7, Lkv;

    const/4 v5, 0x2

    invoke-direct {v7, v0, v8, v5}, Lkv;-><init>(Lcom/vuitton/android/core/helper/DebounceHandler;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_54
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/high16 v16, 0x1c00000

    and-int v2, v41, v16

    const/high16 v5, 0x800000

    if-ne v2, v5, :cond_72

    const/4 v2, 0x1

    goto :goto_55

    :cond_72
    const/4 v2, 0x0

    :goto_55
    or-int/2addr v2, v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_73

    if-ne v7, v15, :cond_74

    :cond_73
    new-instance v7, Ldt;

    const/4 v2, 0x7

    invoke-direct {v7, v0, v3, v2}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_74
    move-object/from16 v20, v7

    check-cast v20, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v41, 0x3

    and-int/lit16 v2, v2, 0x380

    shl-int/lit8 v7, v33, 0x9

    and-int/lit16 v5, v7, 0x1c00

    or-int/2addr v2, v5

    const v5, 0xe000

    and-int/2addr v5, v7

    or-int/2addr v2, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v7

    or-int/2addr v2, v5

    shl-int/lit8 v5, v41, 0x3

    and-int v5, v5, p6

    or-int v23, v2, v5

    and-int/lit8 v24, v41, 0x70

    move-object/from16 v21, p1

    move-object/from16 v16, p5

    move-object/from16 v22, v10

    move-object/from16 v46, v12

    move-object v10, v13

    move-object/from16 v47, v14

    move-object/from16 v43, v15

    move-object/from16 v7, v28

    move/from16 v13, v35

    move/from16 v14, v36

    move/from16 v15, v37

    move/from16 v12, p3

    invoke-static/range {v10 .. v24}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;ZZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v10

    move-object/from16 v10, v22

    if-nez v7, :cond_75

    const v2, 0x634d37be

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v11, 0x0

    :goto_56
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_57

    :cond_75
    const/4 v11, 0x0

    const v5, 0x634d37bf

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v7, v2, v10, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :goto_57
    move-object/from16 v28, v7

    move/from16 p3, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 p1, v21

    move/from16 v11, v25

    move-object/from16 v2, v26

    move-object/from16 v50, v43

    move-object/from16 v12, v46

    move-object/from16 v14, v47

    const/4 v5, 0x1

    move-object/from16 v7, p7

    goto/16 :goto_46

    :cond_76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 v4, 0x0

    throw v4

    :cond_77
    move-object/from16 v21, p1

    move-object/from16 v26, v2

    move-object/from16 v46, v12

    move-object/from16 v47, v14

    move-object/from16 v7, v28

    move/from16 v13, v35

    move/from16 v14, v36

    move/from16 v15, v37

    const/4 v11, 0x0

    move/from16 v12, p3

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    shr-int/lit8 v0, v33, 0x12

    and-int/lit8 v0, v0, 0x70

    const/4 v2, 0x6

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v49

    invoke-interface {v2, v1, v10, v0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v1, v9

    move-object v9, v4

    move v4, v12

    move v12, v14

    move-object v14, v1

    move/from16 v5, p4

    move-object/from16 v18, v2

    move-object/from16 v17, v7

    move-object/from16 v29, v10

    move v11, v13

    move v13, v15

    move-object/from16 v2, v21

    move-object/from16 v7, v26

    move/from16 v19, v39

    move-object/from16 v1, v44

    move-object/from16 v15, v46

    move-object/from16 v16, v47

    move-object v10, v8

    move-object v8, v3

    goto :goto_58

    :cond_78
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v4, 0x0

    throw v4

    :cond_79
    move-object v10, v9

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v29, v10

    move v5, v12

    move-object/from16 v1, v35

    move-object/from16 v10, p9

    move/from16 v12, p11

    :goto_58
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7a

    move-object v3, v0

    new-instance v0, Llv;

    move-object/from16 v6, p5

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v51, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v22}, Llv;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZIII)V

    move-object/from16 v3, v51

    iput-object v0, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7a
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;ZZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v0, p13

    const v3, -0x9caeb61

    move-object/from16 v4, p12

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

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

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

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

    move/from16 v12, p2

    if-nez v6, :cond_5

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v3, v6

    :cond_5
    and-int/lit16 v6, v0, 0xc00

    if-nez v6, :cond_7

    move/from16 v6, p3

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_4

    :cond_6
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v3, v11

    goto :goto_5

    :cond_7
    move/from16 v6, p3

    :goto_5
    and-int/lit16 v11, v0, 0x6000

    if-nez v11, :cond_9

    move/from16 v11, p4

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_6

    :cond_8
    const/16 v13, 0x2000

    :goto_6
    or-int/2addr v3, v13

    goto :goto_7

    :cond_9
    move/from16 v11, p4

    :goto_7
    const/high16 v13, 0x30000

    and-int/2addr v13, v0

    if-nez v13, :cond_b

    move/from16 v13, p5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v14, 0x10000

    :goto_8
    or-int/2addr v3, v14

    goto :goto_9

    :cond_b
    move/from16 v13, p5

    :goto_9
    const/high16 v14, 0x180000

    and-int/2addr v14, v0

    const/high16 v4, 0x100000

    if-nez v14, :cond_d

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move v14, v4

    goto :goto_a

    :cond_c
    const/high16 v14, 0x80000

    :goto_a
    or-int/2addr v3, v14

    :cond_d
    const/high16 v14, 0xc00000

    and-int/2addr v14, v0

    if-nez v14, :cond_f

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v14, 0x400000

    :goto_b
    or-int/2addr v3, v14

    :cond_f
    const/high16 v14, 0x6000000

    and-int/2addr v14, v0

    if-nez v14, :cond_11

    move-object/from16 v14, p8

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v17, 0x2000000

    :goto_c
    or-int v3, v3, v17

    goto :goto_d

    :cond_11
    move-object/from16 v14, p8

    :goto_d
    const/high16 v17, 0x30000000

    and-int v17, v0, v17

    move-object/from16 v9, p9

    if-nez v17, :cond_13

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v18, 0x10000000

    :goto_e
    or-int v3, v3, v18

    :cond_13
    and-int/lit8 v18, p14, 0x6

    move-object/from16 v9, p10

    if-nez v18, :cond_15

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x4

    goto :goto_f

    :cond_14
    const/16 v18, 0x2

    :goto_f
    or-int v18, p14, v18

    goto :goto_10

    :cond_15
    move/from16 v18, p14

    :goto_10
    and-int/lit8 v19, p14, 0x30

    if-nez v19, :cond_17

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_16

    const/16 v16, 0x20

    goto :goto_11

    :cond_16
    const/16 v16, 0x10

    :goto_11
    or-int v18, v18, v16

    :cond_17
    const v10, 0x12492493

    and-int/2addr v10, v3

    const v5, 0x12492492

    const/16 v16, 0x1

    if-ne v10, v5, :cond_19

    and-int/lit8 v5, v18, 0x13

    const/16 v10, 0x12

    if-eq v5, v10, :cond_18

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    goto :goto_13

    :cond_19
    :goto_12
    move/from16 v5, v16

    :goto_13
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v15, v10, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    const/high16 v19, 0x70000

    const/high16 v20, 0xe000000

    const/high16 v21, 0x1c00000

    const/high16 v22, 0x380000

    if-eqz v5, :cond_29

    const v5, 0x6b14fb78

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int v5, v3, v22

    if-ne v5, v4, :cond_1a

    move/from16 v4, v16

    goto :goto_14

    :cond_1a
    const/4 v4, 0x0

    :goto_14
    and-int/lit8 v5, v3, 0xe

    const/4 v10, 0x4

    const v23, 0xe000

    if-ne v5, v10, :cond_1b

    move/from16 v10, v16

    goto :goto_15

    :cond_1b
    const/4 v10, 0x0

    :goto_15
    or-int/2addr v4, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_1c

    if-ne v10, v9, :cond_1d

    :cond_1c
    new-instance v10, Lvg;

    const/16 v4, 0x1d

    invoke-direct {v10, v7, v1, v4}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v10, Lkotlin/jvm/functions/Function1;

    and-int v4, v3, v21

    const/high16 v0, 0x800000

    if-ne v4, v0, :cond_1e

    move/from16 v0, v16

    :goto_16
    const/4 v4, 0x4

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    goto :goto_16

    :goto_17
    if-ne v5, v4, :cond_1f

    goto :goto_18

    :cond_1f
    const/16 v16, 0x0

    :goto_18
    or-int v0, v0, v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_21

    if-ne v4, v9, :cond_20

    goto :goto_19

    :cond_20
    const/4 v0, 0x0

    goto :goto_1a

    :cond_21
    :goto_19
    new-instance v4, Lgv;

    const/4 v0, 0x0

    invoke-direct {v4, v8, v1, v0}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v4, Lkotlin/jvm/functions/Function1;

    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_22

    sget v5, Landroidx/compose/ui/text/input/ImeAction;->i:I

    :goto_1b
    move/from16 v28, v5

    goto :goto_1c

    :cond_22
    sget v5, Landroidx/compose/ui/text/input/ImeAction;->j:I

    goto :goto_1b

    :goto_1c
    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of v0, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    if-eqz v0, :cond_23

    const v0, 0x3d42e709

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    shl-int/lit8 v0, v3, 0x3

    and-int/lit16 v0, v0, 0x1c70

    shl-int/lit8 v3, v18, 0xf

    and-int v3, v3, v22

    or-int v17, v0, v3

    const/16 v18, 0x1

    move-object v13, v10

    move-object v10, v9

    const/4 v9, 0x0

    move-object v14, v4

    move-object v11, v5

    move-object/from16 v16, v15

    const/4 v0, 0x0

    move-object/from16 v15, p11

    invoke-static/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/EnumBasedFormFieldKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v16

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1f

    :cond_23
    move-object v14, v4

    move-object v13, v10

    const/4 v0, 0x0

    move-object v10, v9

    instance-of v4, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    if-eqz v4, :cond_26

    const v4, 0x3d431d5f

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CONFIRM_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v4, v9, :cond_25

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v4, v9, :cond_25

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v4, v9, :cond_24

    goto :goto_1d

    :cond_24
    const v4, 0x6b2c0eaa

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    iget v4, v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->c:I

    new-instance v24, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v32, 0x73

    const/16 v33, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v27, v4

    invoke-direct/range {v24 .. v33}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v3, v3, 0x1c70

    shl-int/lit8 v4, v18, 0x15

    and-int v5, v4, v21

    or-int/2addr v3, v5

    and-int v4, v4, v20

    or-int v19, v3, v4

    const/16 v20, 0x1

    const/4 v9, 0x0

    move/from16 v12, p2

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, v15

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, v24

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldFreeformKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v18

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_25
    :goto_1d
    const v4, 0x6b212c8a

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    iget v4, v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->c:I

    new-instance v24, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v32, 0x73

    const/16 v33, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v27, v4

    invoke-direct/range {v24 .. v33}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v3, v3, 0x1c70

    shl-int/lit8 v4, v18, 0x15

    and-int v5, v4, v21

    or-int/2addr v3, v5

    and-int v4, v4, v20

    or-int v19, v3, v4

    const/4 v9, 0x0

    move/from16 v12, p2

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, v15

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, v24

    invoke-static/range {v9 .. v19}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPasswordKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v15, v18

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_26
    instance-of v4, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    if-eqz v4, :cond_27

    const v4, 0x3d43d6af

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v3, v3, 0x1c70

    shl-int/lit8 v4, v18, 0xc

    and-int v4, v4, v19

    or-int v16, v3, v4

    const/4 v9, 0x0

    move/from16 v12, p2

    move-object/from16 v14, p11

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldBooleanKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_27
    instance-of v4, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    if-eqz v4, :cond_28

    const v4, 0x3d43ff14

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    shl-int/lit8 v4, v3, 0x3

    and-int/lit16 v9, v4, 0x1c70

    shr-int/lit8 v3, v3, 0x9

    and-int v3, v3, v23

    or-int/2addr v3, v9

    shl-int/lit8 v9, v18, 0xc

    and-int v9, v9, v19

    or-int/2addr v3, v9

    and-int v4, v4, v22

    or-int v16, v3, v4

    const/4 v8, 0x0

    move/from16 v11, p2

    move/from16 v14, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p11

    move-object v9, v10

    move-object v10, v5

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldReadOnlyKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_28
    const v1, 0x3d42e578

    invoke-static {v15, v1, v0}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_29
    const/4 v0, 0x0

    const v23, 0xe000

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v4, :cond_2a

    const v4, 0x6b420e9d

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    and-int/lit8 v4, v3, 0x7e

    shr-int/lit8 v5, v3, 0x3

    and-int/lit16 v8, v5, 0x380

    or-int/2addr v4, v8

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x6

    and-int v5, v5, v23

    or-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x9

    and-int v5, v5, v19

    or-int/2addr v4, v5

    and-int v5, v3, v22

    or-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x6

    and-int v3, v3, v21

    or-int/2addr v3, v4

    shl-int/lit8 v4, v18, 0x18

    and-int v5, v4, v20

    or-int/2addr v3, v5

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v13, v3, v4

    move/from16 v3, p1

    move/from16 v5, p4

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move v4, v6

    move-object v8, v7

    move-object v12, v15

    move/from16 v6, p2

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_20

    :cond_2a
    const v1, 0x3d42b9ce

    invoke-static {v15, v1, v0}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_20
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_2c

    new-instance v0, Lhv;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lhv;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;ZZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method
