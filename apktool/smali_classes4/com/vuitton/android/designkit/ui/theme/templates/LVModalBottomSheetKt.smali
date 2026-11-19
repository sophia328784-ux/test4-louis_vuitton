.class public abstract Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p14

    move/from16 v3, p20

    move/from16 v4, p21

    move/from16 v5, p22

    const-string v6, "LVGenericBottomSheetContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, -0x4b78bd4d

    move-object/from16 v8, p19

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_1

    or-int/lit8 v11, v3, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v11, v3, 0x6

    if-nez v11, :cond_3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x4

    goto :goto_0

    :cond_2
    const/4 v11, 0x2

    :goto_0
    or-int/2addr v11, v3

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    and-int/lit8 v12, v3, 0x30

    if-nez v12, :cond_4

    or-int/lit8 v11, v11, 0x10

    :cond_4
    and-int/lit8 v12, v5, 0x4

    if-eqz v12, :cond_6

    or-int/lit16 v11, v11, 0x180

    :cond_5
    move-object/from16 v15, p2

    goto :goto_3

    :cond_6
    and-int/lit16 v15, v3, 0x180

    if-nez v15, :cond_5

    move-object/from16 v15, p2

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_2

    :cond_7
    const/16 v16, 0x80

    :goto_2
    or-int v11, v11, v16

    :goto_3
    and-int/lit8 v16, v5, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v11, v11, 0xc00

    :cond_8
    move-object/from16 v13, p3

    goto :goto_5

    :cond_9
    and-int/lit16 v13, v3, 0xc00

    if-nez v13, :cond_8

    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x800

    goto :goto_4

    :cond_a
    const/16 v17, 0x400

    :goto_4
    or-int v11, v11, v17

    :goto_5
    and-int/lit8 v17, v5, 0x10

    if-eqz v17, :cond_c

    or-int/lit16 v11, v11, 0x6000

    :cond_b
    move-object/from16 v10, p4

    goto :goto_7

    :cond_c
    and-int/lit16 v10, v3, 0x6000

    if-nez v10, :cond_b

    move-object/from16 v10, p4

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_6

    :cond_d
    const/16 v19, 0x2000

    :goto_6
    or-int v11, v11, v19

    :goto_7
    const/high16 v19, 0x30000

    and-int v20, v3, v19

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    move-object/from16 v10, p5

    if-nez v20, :cond_f

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    move/from16 v20, v22

    goto :goto_8

    :cond_e
    move/from16 v20, v21

    :goto_8
    or-int v11, v11, v20

    :cond_f
    and-int/lit8 v20, v5, 0x40

    const/high16 v23, 0x100000

    const/high16 v24, 0x80000

    const/high16 v25, 0x180000

    if-eqz v20, :cond_10

    or-int v11, v11, v25

    move-object/from16 v14, p6

    goto :goto_a

    :cond_10
    and-int v26, v3, v25

    move-object/from16 v14, p6

    if-nez v26, :cond_12

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    move/from16 v27, v23

    goto :goto_9

    :cond_11
    move/from16 v27, v24

    :goto_9
    or-int v11, v11, v27

    :cond_12
    :goto_a
    and-int/lit16 v9, v5, 0x80

    const/high16 v28, 0x400000

    const/high16 v29, 0x800000

    const/high16 v30, 0xc00000

    if-eqz v9, :cond_14

    or-int v11, v11, v30

    :cond_13
    move-object/from16 v31, v0

    move-object/from16 v0, p7

    goto :goto_c

    :cond_14
    and-int v31, v3, v30

    if-nez v31, :cond_13

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    move/from16 v32, v29

    goto :goto_b

    :cond_15
    move/from16 v32, v28

    :goto_b
    or-int v11, v11, v32

    :goto_c
    and-int/lit16 v0, v5, 0x100

    const/high16 v32, 0x6000000

    if-eqz v0, :cond_17

    or-int v11, v11, v32

    :cond_16
    move/from16 v33, v0

    move-object/from16 v0, p8

    goto :goto_e

    :cond_17
    and-int v33, v3, v32

    if-nez v33, :cond_16

    move/from16 v33, v0

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    const/high16 v34, 0x4000000

    goto :goto_d

    :cond_18
    const/high16 v34, 0x2000000

    :goto_d
    or-int v11, v11, v34

    :goto_e
    const/high16 v34, 0x30000000

    or-int v11, v11, v34

    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_19

    or-int/lit8 v35, v4, 0x6

    goto :goto_11

    :cond_19
    and-int/lit8 v35, v4, 0x6

    if-nez v35, :cond_1c

    and-int/lit8 v35, v4, 0x8

    if-nez v35, :cond_1a

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v35

    goto :goto_f

    :cond_1a
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    :goto_f
    if-eqz v35, :cond_1b

    const/16 v35, 0x4

    goto :goto_10

    :cond_1b
    const/16 v35, 0x2

    :goto_10
    or-int v35, v4, v35

    goto :goto_11

    :cond_1c
    move/from16 v35, v4

    :goto_11
    move/from16 p0, v0

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_1d

    or-int/lit8 v35, v35, 0x30

    move/from16 v36, v0

    :goto_12
    move/from16 v0, v35

    goto :goto_14

    :cond_1d
    and-int/lit8 v36, v4, 0x30

    if-nez v36, :cond_1f

    move/from16 v36, v0

    move-object/from16 v0, p11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1e

    const/16 v37, 0x20

    goto :goto_13

    :cond_1e
    const/16 v37, 0x10

    :goto_13
    or-int v35, v35, v37

    goto :goto_12

    :cond_1f
    move/from16 v36, v0

    move-object/from16 v0, p11

    goto :goto_12

    :goto_14
    and-int/lit16 v1, v5, 0x1000

    if-eqz v1, :cond_20

    or-int/lit16 v0, v0, 0x180

    goto :goto_17

    :cond_20
    move/from16 v35, v0

    and-int/lit16 v0, v4, 0x180

    if-nez v0, :cond_22

    move-object/from16 v0, p12

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_21

    const/16 v37, 0x100

    goto :goto_15

    :cond_21
    const/16 v37, 0x80

    :goto_15
    or-int v35, v35, v37

    :goto_16
    move/from16 v0, v35

    goto :goto_17

    :cond_22
    move-object/from16 v0, p12

    goto :goto_16

    :goto_17
    move/from16 v35, v1

    or-int/lit16 v1, v0, 0x6c00

    const v37, 0x8000

    and-int v37, v5, v37

    if-eqz v37, :cond_23

    const v1, 0x36c00

    or-int/2addr v1, v0

    goto :goto_1a

    :cond_23
    and-int v0, v4, v19

    if-nez v0, :cond_26

    const/high16 v0, 0x40000

    and-int/2addr v0, v4

    if-nez v0, :cond_24

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18

    :cond_24
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    if-eqz v0, :cond_25

    move/from16 v0, v22

    goto :goto_19

    :cond_25
    move/from16 v0, v21

    :goto_19
    or-int/2addr v1, v0

    :cond_26
    :goto_1a
    and-int v0, v5, v21

    if-eqz v0, :cond_27

    or-int v1, v1, v25

    move/from16 p19, v0

    move-object/from16 v0, p15

    goto :goto_1c

    :cond_27
    and-int v19, v4, v25

    move/from16 p19, v0

    move-object/from16 v0, p15

    if-nez v19, :cond_29

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1b

    :cond_28
    move/from16 v23, v24

    :goto_1b
    or-int v1, v1, v23

    :cond_29
    :goto_1c
    and-int v19, v5, v22

    if-eqz v19, :cond_2a

    or-int v1, v1, v30

    move-object/from16 v0, p16

    goto :goto_1d

    :cond_2a
    and-int v21, v4, v30

    move-object/from16 v0, p16

    if-nez v21, :cond_2c

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b

    move/from16 v28, v29

    :cond_2b
    or-int v1, v1, v28

    :cond_2c
    :goto_1d
    or-int v21, v1, v32

    and-int v22, v5, v24

    if-eqz v22, :cond_2e

    const/high16 v21, 0x36000000

    or-int v21, v1, v21

    :cond_2d
    move-object/from16 v1, p18

    :goto_1e
    move/from16 v10, v21

    goto :goto_20

    :cond_2e
    and-int v1, v4, v34

    if-nez v1, :cond_2d

    move-object/from16 v1, p18

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f

    const/high16 v23, 0x20000000

    goto :goto_1f

    :cond_2f
    const/high16 v23, 0x10000000

    :goto_1f
    or-int v21, v21, v23

    goto :goto_1e

    :goto_20
    const v21, 0x12492493

    and-int v0, v11, v21

    const v1, 0x12492492

    move/from16 v23, v10

    if-ne v0, v1, :cond_31

    and-int v0, v23, v21

    if-eq v0, v1, :cond_30

    goto :goto_21

    :cond_30
    const/4 v0, 0x0

    goto :goto_22

    :cond_31
    :goto_21
    const/4 v0, 0x1

    :goto_22
    and-int/lit8 v1, v11, 0x1

    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v3, 0x1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_33

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_23

    :cond_32
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v11, -0x71

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move-object/from16 v11, p12

    move/from16 v35, p13

    move-object/from16 v37, p15

    move-object/from16 v38, p16

    move/from16 v39, p17

    move-object/from16 v40, p18

    move v12, v0

    move-object/from16 v36, v2

    move-object v2, v13

    move-object v8, v15

    move-object/from16 v41, v31

    move-object/from16 v0, p1

    move-object/from16 v31, p8

    goto/16 :goto_31

    :cond_33
    :goto_23
    if-eqz v8, :cond_34

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :cond_34
    move-object/from16 v0, v31

    :goto_24
    invoke-static {v7}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v8

    and-int/lit8 v11, v11, -0x71

    if-eqz v12, :cond_35

    const/4 v15, 0x0

    :cond_35
    if-eqz v16, :cond_36

    const/4 v13, 0x0

    :cond_36
    if-eqz v17, :cond_37

    const/4 v12, 0x0

    goto :goto_25

    :cond_37
    move-object/from16 v12, p4

    :goto_25
    if-eqz v20, :cond_38

    const/4 v14, 0x0

    :cond_38
    if-eqz v9, :cond_39

    const/4 v9, 0x0

    goto :goto_26

    :cond_39
    move-object/from16 v9, p7

    :goto_26
    if-eqz v33, :cond_3a

    const/16 v16, 0x0

    goto :goto_27

    :cond_3a
    move-object/from16 v16, p8

    :goto_27
    if-eqz p0, :cond_3b

    const/16 v17, 0x0

    goto :goto_28

    :cond_3b
    move-object/from16 v17, p10

    :goto_28
    if-eqz v36, :cond_3d

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_3c

    new-instance v10, Lk40;

    move-object/from16 p1, v0

    const/16 v0, 0x1b

    invoke-direct {v10, v0}, Lk40;-><init>(I)V

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_29

    :cond_3c
    move-object/from16 p1, v0

    :goto_29
    move-object v0, v10

    check-cast v0, Lkotlin/jvm/functions/Function0;

    goto :goto_2a

    :cond_3d
    move-object/from16 p1, v0

    move-object/from16 v0, p11

    :goto_2a
    if-eqz v35, :cond_3e

    const/4 v10, 0x0

    goto :goto_2b

    :cond_3e
    move-object/from16 v10, p12

    :goto_2b
    if-eqz v37, :cond_3f

    const/4 v2, 0x0

    :cond_3f
    move-object/from16 p2, v0

    if-eqz p19, :cond_41

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_40

    new-instance v0, Lk40;

    move-object/from16 p3, v2

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Lk40;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_40
    move-object/from16 p3, v2

    :goto_2c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    goto :goto_2d

    :cond_41
    move-object/from16 p3, v2

    move-object/from16 v0, p15

    :goto_2d
    if-eqz v19, :cond_42

    const/4 v2, 0x0

    goto :goto_2e

    :cond_42
    move-object/from16 v2, p16

    :goto_2e
    move-object/from16 p4, v0

    if-eqz v22, :cond_44

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_43

    new-instance v0, Lk40;

    move-object/from16 p6, v2

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lk40;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_43
    move-object/from16 p6, v2

    :goto_2f
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v2, v10

    move-object v10, v9

    move-object v9, v12

    move v12, v11

    move-object v11, v2

    move-object/from16 v41, p1

    move-object/from16 v34, p2

    move-object/from16 v36, p3

    move-object/from16 v37, p4

    move-object/from16 v38, p6

    move-object/from16 v40, v0

    :goto_30
    move-object v0, v8

    move-object v2, v13

    move-object v8, v15

    move-object/from16 v31, v16

    move-object/from16 v33, v17

    const/16 v32, 0x1

    const/16 v35, 0x1

    const/16 v39, 0x1

    goto :goto_31

    :cond_44
    move-object/from16 p6, v2

    move-object v0, v10

    move-object v10, v9

    move-object v9, v12

    move v12, v11

    move-object v11, v0

    move-object/from16 v41, p1

    move-object/from16 v34, p2

    move-object/from16 v36, p3

    move-object/from16 v37, p4

    move-object/from16 v38, p6

    move-object/from16 v40, p18

    goto :goto_30

    :goto_31
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v9, :cond_45

    const/4 v13, 0x1

    goto :goto_32

    :cond_45
    const/4 v13, 0x0

    :goto_32
    shr-int/lit8 v15, v12, 0x6

    and-int/lit8 v28, v15, 0xe

    shr-int/lit8 v12, v12, 0xf

    and-int/lit16 v3, v12, 0x380

    or-int v3, v28, v3

    move/from16 p1, v3

    shl-int/lit8 v3, v23, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int v3, p1, v3

    and-int/lit8 v16, v3, 0xe

    xor-int/lit8 v4, v16, 0x6

    const/4 v5, 0x4

    if-le v4, v5, :cond_46

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    and-int/lit8 v4, v3, 0x6

    if-ne v4, v5, :cond_48

    :cond_47
    const/4 v4, 0x1

    goto :goto_33

    :cond_48
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0x380

    xor-int/lit16 v5, v5, 0x180

    move/from16 p1, v4

    const/16 v4, 0x100

    if-le v5, v4, :cond_49

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    :cond_49
    and-int/lit16 v5, v3, 0x180

    if-ne v5, v4, :cond_4b

    :cond_4a
    const/4 v4, 0x1

    goto :goto_34

    :cond_4b
    const/4 v4, 0x0

    :goto_34
    or-int v4, p1, v4

    and-int/lit16 v5, v3, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    move/from16 p1, v4

    const/16 v4, 0x800

    if-le v5, v4, :cond_4c

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_4c
    and-int/lit16 v3, v3, 0xc00

    if-ne v3, v4, :cond_4e

    :cond_4d
    const/4 v3, 0x1

    goto :goto_35

    :cond_4e
    const/4 v3, 0x0

    :goto_35
    or-int v3, p1, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4f

    if-ne v4, v1, :cond_52

    :cond_4f
    new-instance v4, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;

    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v13, :cond_50

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->e:I

    goto :goto_36

    :cond_50
    sget v3, Landroidx/compose/ui/text/style/TextAlign;->g:I

    :goto_36
    if-nez v10, :cond_51

    if-nez v11, :cond_51

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v5, 0x0

    :goto_37
    const/4 v13, 0x0

    goto :goto_38

    :cond_51
    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v5, 0x41800000    # 16.0f

    goto :goto_37

    :goto_38
    invoke-direct {v4, v3, v5, v13}, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;-><init>(IFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_52
    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;

    invoke-static/range {v41 .. v41}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v5, 0xe

    const/4 v13, 0x0

    invoke-static {v3, v0, v13, v5}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v16, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move-object/from16 p13, v10

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v10, v7, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    move-object v13, v11

    iget-wide v10, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v7, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v8

    iget-object v8, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_62

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_53

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_39

    :cond_53
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_39
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    if-nez v9, :cond_54

    const v3, -0x426eab0b

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/high16 v5, 0x41c00000    # 24.0f

    goto :goto_3a

    :cond_54
    const v3, -0x426eab0a

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v0, v3, v5}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v5, "bottomSheet_icon_view"

    invoke-static {v3, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    and-int/lit16 v5, v15, 0x380

    or-int/lit8 v5, v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScopeInstance;->a:Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScopeInstance;

    invoke-interface {v9, v8, v3, v7, v5}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3a
    if-nez v16, :cond_55

    const v1, -0x426b165d

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 p3, v2

    move/from16 v43, v5

    move-object v8, v7

    move-object/from16 p0, v9

    move v2, v12

    move-object/from16 v46, v13

    move-object v7, v14

    move/from16 v42, v15

    move-object/from16 v44, v16

    move/from16 v1, v23

    move-object/from16 v5, p13

    :goto_3b
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_3c

    :cond_55
    const v3, -0x426b165c

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v3, v6, v8}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p6, v3

    move/from16 p10, v8

    move/from16 p11, v10

    move/from16 p7, v11

    move/from16 p8, v17

    move/from16 p9, v18

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v8, "bottomSheet_header_text"

    invoke-static {v3, v8}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v2, :cond_56

    invoke-static {v6, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-nez v8, :cond_57

    :cond_56
    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_57
    invoke-interface {v3, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_58

    new-instance v8, Lx20;

    const/16 v1, 0x1d

    invoke-direct {v8, v1}, Lx20;-><init>(I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_58
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v3, v1, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v57, 0x0

    const v58, 0xfffffe

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

    move-object/from16 v42, v8

    move-wide/from16 v43, v10

    invoke-static/range {v42 .. v58}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v26

    iget v8, v4, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    new-instance v10, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v10, v8}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v29, 0x0

    const v30, 0x1fbfc

    move-object/from16 v18, v10

    const-wide/16 v10, 0x0

    move/from16 v17, v12

    move-object v8, v13

    const-wide/16 v12, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v20, v8

    move/from16 v21, v15

    move-object/from16 v8, v16

    const-wide/16 v15, 0x0

    move/from16 v22, v17

    const/16 v17, 0x0

    move-object/from16 v27, v19

    move-object/from16 v25, v20

    const-wide/16 v19, 0x0

    move/from16 v42, v21

    const/16 v21, 0x0

    move/from16 v43, v22

    const/16 v22, 0x0

    move/from16 v44, v23

    const/16 v23, 0x0

    const/16 v45, 0x1

    const/16 v24, 0x0

    move-object/from16 v46, v25

    const/16 v25, 0x0

    move-object/from16 p0, v27

    move-object/from16 v27, v7

    move-object/from16 v7, p0

    move-object/from16 p3, v2

    move-object/from16 p0, v9

    move/from16 v2, v43

    move-object v9, v3

    move/from16 v43, v5

    move-object/from16 v5, p13

    move v3, v1

    move/from16 v1, v44

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v44, v8

    move-object/from16 v8, v27

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_3b

    :goto_3c
    invoke-static {v6, v9}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 p9, v9

    move-object/from16 p6, v10

    move/from16 p11, v11

    move/from16 p7, v12

    move/from16 p8, v13

    move/from16 p10, v43

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const-string v10, "bottomSheet_description_text"

    invoke-static {v9, v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v7, :cond_59

    invoke-static {v6, v7}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-nez v10, :cond_5a

    :cond_59
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_5a
    invoke-interface {v9, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v11, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0xfffffe

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v26

    iget v10, v4, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    new-instance v11, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v11, v10}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    and-int/lit8 v28, v2, 0xe

    const/16 v29, 0x0

    const v30, 0x1fbfc

    move-object/from16 v18, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v27, v8

    move-object/from16 v8, p5

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v27

    const/high16 v9, 0x70000000

    const/high16 v10, 0x1c00000

    if-nez v5, :cond_5b

    const v2, -0x4259b4a7

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v16, v31

    move/from16 v24, v32

    move-object/from16 v2, v34

    goto/16 :goto_3d

    :cond_5b
    const v11, -0x4259b4a6

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v8, v11, v6, v12}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p6, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p7, v14

    move/from16 p8, v15

    move/from16 p9, v16

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const-string v12, "bottomSheet_primaryButton_button"

    invoke-static {v11, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-eqz v33, :cond_5c

    invoke-interface/range {v33 .. v33}, Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-nez v12, :cond_5d

    :cond_5c
    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_5d
    invoke-interface {v11, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    and-int/lit16 v2, v2, 0x1f80

    and-int v13, v42, v10

    or-int/2addr v2, v13

    shl-int/lit8 v13, v1, 0x18

    and-int/2addr v13, v9

    or-int/2addr v2, v13

    const/16 v13, 0x170

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 p6, v2

    move-object/from16 p13, v5

    move-object/from16 p8, v8

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move/from16 p7, v13

    move-object/from16 p12, v14

    move/from16 p15, v15

    move/from16 p17, v16

    move-object/from16 p11, v31

    move/from16 p16, v32

    move-object/from16 p14, v34

    invoke-static/range {p6 .. p17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object/from16 v16, p11

    move-object/from16 v2, p14

    move/from16 v24, p16

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3d
    if-nez v46, :cond_5e

    const v9, -0x424f5267

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v9, v35

    move-object/from16 v10, v37

    goto/16 :goto_3e

    :cond_5e
    const v11, -0x424f5266

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v8, v11, v6, v12}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 p6, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p7, v14

    move/from16 p8, v15

    move/from16 p9, v17

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const-string v12, "bottomSheet_secondaryButton_button"

    invoke-static {v11, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-eqz v36, :cond_5f

    invoke-interface/range {v36 .. v36}, Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-nez v12, :cond_60

    :cond_5f
    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_60
    invoke-interface {v11, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    and-int/lit16 v13, v1, 0x1f80

    shl-int/lit8 v14, v1, 0x9

    and-int/2addr v10, v14

    or-int/2addr v10, v13

    and-int/2addr v9, v14

    or-int/2addr v9, v10

    const/16 v10, 0x170

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 p8, v8

    move/from16 p6, v9

    move/from16 p7, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move/from16 p15, v15

    move/from16 p17, v17

    move/from16 p16, v35

    move-object/from16 p14, v37

    move-object/from16 p13, v46

    invoke-static/range {p6 .. p17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object/from16 v10, p14

    move/from16 v9, p16

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3e
    if-eqz v38, :cond_61

    const v11, -0x4243a498

    invoke-static {v8, v11, v6}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 p8, v4

    move-object/from16 p6, v6

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p7, v13

    move/from16 p9, v14

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v0, v4, v6}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v4, "bottomSheet_link_button"

    invoke-static {v0, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shr-int/lit8 v4, v1, 0x12

    and-int/lit16 v4, v4, 0x3f0

    shr-int/lit8 v1, v1, 0xc

    const/high16 v6, 0x70000

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    const/16 v4, 0x18

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 p6, v0

    move/from16 p13, v1

    move/from16 p14, v4

    move-object/from16 p9, v6

    move-object/from16 p12, v8

    move/from16 p10, v11

    move-object/from16 p7, v38

    move/from16 p8, v39

    move-object/from16 p11, v40

    invoke-static/range {p6 .. p14}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v4, p11

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3f
    const/4 v3, 0x1

    goto :goto_40

    :cond_61
    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v4, v40

    const v11, -0x423c86fb

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v11, v6}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3f

    :goto_40
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v17, v0

    move/from16 v18, v1

    move-object v12, v2

    move-object/from16 v19, v4

    move-object/from16 v27, v8

    move v14, v9

    move-object/from16 v9, v16

    move-object/from16 v11, v33

    move-object/from16 v15, v36

    move-object/from16 v1, v41

    move-object/from16 v3, v44

    move-object/from16 v13, v46

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v8, v5

    move-object/from16 v16, v10

    move/from16 v10, v24

    move-object/from16 v5, p0

    goto :goto_41

    :cond_62
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v13, 0x0

    throw v13

    :cond_63
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v27, v8

    move-object v4, v13

    move-object v7, v14

    move-object v3, v15

    move-object/from16 v1, v31

    move-object/from16 v8, p7

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object v15, v2

    move-object/from16 v2, p1

    :goto_41
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_64

    move-object v6, v0

    new-instance v0, Lay;

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v59, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v22}, Lay;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;III)V

    move-object/from16 v6, v59

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_64
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const-string v1, "LVModalBottomSheet-Ccamzx0"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x61b35a7e

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v5, v11, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v11, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v11

    goto :goto_1

    :cond_3
    move v5, v11

    :goto_1
    and-int/lit8 v6, v11, 0x30

    if-nez v6, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_4

    :cond_7
    and-int/lit16 v8, v11, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_3

    :cond_8
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v5, v9

    :goto_4
    and-int/lit16 v9, v11, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v12, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_5

    :cond_9
    move-object/from16 v9, p3

    :cond_a
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v5, v13

    goto :goto_6

    :cond_b
    move-object/from16 v9, p3

    :goto_6
    and-int/lit16 v13, v11, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v12, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_7

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_7
    or-int/2addr v5, v14

    goto :goto_8

    :cond_e
    move-object/from16 v13, p4

    :goto_8
    const/high16 v14, 0x30000

    and-int/2addr v14, v11

    if-nez v14, :cond_11

    and-int/lit8 v14, v12, 0x20

    if-nez v14, :cond_f

    move-wide/from16 v14, p5

    invoke-virtual {v3, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_9

    :cond_f
    move-wide/from16 v14, p5

    :cond_10
    const/high16 v16, 0x10000

    :goto_9
    or-int v5, v5, v16

    goto :goto_a

    :cond_11
    move-wide/from16 v14, p5

    :goto_a
    and-int/lit8 v16, v12, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v5, v5, v17

    move/from16 v7, p7

    goto :goto_c

    :cond_12
    and-int v17, v11, v17

    move/from16 v7, p7

    if-nez v17, :cond_14

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_b

    :cond_13
    const/high16 v17, 0x80000

    :goto_b
    or-int v5, v5, v17

    :cond_14
    :goto_c
    const/high16 v17, 0xc00000

    and-int v17, v11, v17

    if-nez v17, :cond_17

    move-object/from16 v17, v0

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_d

    :cond_15
    move-object/from16 v0, p8

    :cond_16
    const/high16 v18, 0x400000

    :goto_d
    or-int v5, v5, v18

    goto :goto_e

    :cond_17
    move-object/from16 v17, v0

    move-object/from16 v0, p8

    :goto_e
    const/high16 v18, 0x6000000

    and-int v18, v11, v18

    if-nez v18, :cond_19

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v18, 0x2000000

    :goto_f
    or-int v5, v5, v18

    :cond_19
    const v18, 0x2492493

    and-int v0, v5, v18

    move/from16 p10, v4

    const v4, 0x2492492

    move/from16 v18, v6

    const/16 v19, 0x1

    if-eq v0, v4, :cond_1a

    move/from16 v0, v19

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v11, 0x1

    const/16 v4, 0x1a

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const v23, -0x1c00001

    const v24, -0x70001

    const v25, -0xe001

    if-eqz v0, :cond_20

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_1c

    and-int/lit16 v5, v5, -0x1c01

    :cond_1c
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1d

    and-int v5, v5, v25

    :cond_1d
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1e

    and-int v5, v5, v24

    :cond_1e
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_1f

    and-int v5, v5, v23

    :cond_1f
    move-object/from16 v27, p8

    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v13, v19

    const/4 v4, 0x0

    const/16 v22, 0x0

    :goto_11
    move-wide/from16 v19, v14

    goto/16 :goto_15

    :cond_20
    :goto_12
    if-eqz p10, :cond_21

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_21
    move-object/from16 v0, v17

    :goto_13
    if-eqz v18, :cond_23

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_22

    new-instance v1, Lk40;

    invoke-direct {v1, v4}, Lk40;-><init>(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v8, v1

    :cond_23
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_24

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v1, v3, v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v1

    and-int/lit16 v5, v5, -0x1c01

    move-object/from16 v22, v9

    move-object v9, v1

    goto :goto_14

    :cond_24
    const/16 v22, 0x0

    :goto_14
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    const/16 v4, 0xe

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/WindowInsetsKt;->d(FI)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    and-int v5, v5, v25

    move-object v13, v1

    :cond_25
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_26

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    and-int v1, v5, v24

    move v5, v1

    :cond_26
    if-eqz v16, :cond_27

    move/from16 v7, v19

    :cond_27
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_28

    sget-object v1, Landroidx/compose/material3/ModalBottomSheetDefaults;->a:Landroidx/compose/material3/ModalBottomSheetProperties;

    and-int v5, v5, v23

    move-object/from16 v27, v1

    const/4 v4, 0x0

    move-object v1, v0

    move-object v0, v13

    move/from16 v13, v19

    goto :goto_11

    :cond_28
    move-object/from16 v27, p8

    move-object v1, v0

    move-object v0, v13

    move/from16 v13, v19

    const/4 v4, 0x0

    goto :goto_11

    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v14, v5, 0xc

    const/16 v21, 0xe

    and-int/lit8 v14, v14, 0xe

    invoke-static {v0, v3, v14}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->c(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)V

    const-string v14, "bottomSheet_panel_view"

    invoke-static {v1, v14}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    iget-object v15, v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a:Landroidx/compose/material3/SheetState;

    const/16 v4, 0xf

    if-eqz v7, :cond_29

    const v13, 0x797bcecd

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v13, Lrv;

    invoke-direct {v13, v2, v8, v9, v4}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move/from16 p4, v4

    const v4, 0x63870a65

    invoke-static {v4, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v25, v4

    goto :goto_16

    :cond_29
    move/from16 p4, v4

    const/4 v13, 0x0

    const v4, 0x798069e4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v25, v22

    :goto_16
    and-int/lit16 v4, v5, 0x380

    const/16 v13, 0x100

    if-ne v4, v13, :cond_2a

    const/4 v4, 0x1

    goto :goto_17

    :cond_2a
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v4, v13

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_2b

    if-ne v13, v6, :cond_2c

    :cond_2b
    new-instance v13, Lt3;

    const/16 v4, 0x9

    invoke-direct {v13, v8, v9, v4}, Lt3;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v13, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lw20;

    const/4 v6, 0x5

    invoke-direct {v4, v0, v6}, Lw20;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Ld3;

    move-object/from16 p0, v0

    const/16 v0, 0x1a

    invoke-direct {v6, v10, v0}, Ld3;-><init>(Ljava/lang/Object;I)V

    const v0, 0x4e036360    # 5.5108198E8f

    invoke-static {v0, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v28

    shl-int/lit8 v0, v5, 0x3

    const/high16 v6, 0x380000

    and-int v30, v0, v6

    shr-int/lit8 v0, v5, 0xf

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v0, v0, 0xc00

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    move/from16 v31, v0

    move-object/from16 v29, v3

    move-object/from16 v26, v4

    invoke-static/range {v13 .. v31}, Landroidx/compose/material3/ModalBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v5, p0

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v9, v27

    move v8, v7

    move-wide/from16 v6, v19

    goto :goto_18

    :cond_2d
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v3, v8

    move-object v4, v9

    move-object v5, v13

    move-object/from16 v1, v17

    move-object/from16 v9, p8

    move v8, v7

    move-wide v6, v14

    :goto_18
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2e

    new-instance v0, Lm60;

    invoke-direct/range {v0 .. v12}, Lm60;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, -0x4853e906

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    and-int/2addr v0, v5

    invoke-virtual {p1, v0, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v0

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->g(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x2347c1b0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->e(Landroid/content/Context;)Landroidx/activity/ComponentActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_4

    const v0, 0x2349000a

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_4
    const v3, 0x2349000b

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v6, :cond_6

    :cond_5
    new-instance v7, Lk60;

    invoke-direct {v7, v2, v0, v5}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v7, p1}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_7
    const v0, 0x234f9dc8

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Lom;

    invoke-direct {v0, p0, p2, v1}, Lom;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final d(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const v0, 0x4ad29d2b    # 6901397.5f

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Lss;

    const/16 v1, 0x1d

    invoke-direct {v2, v0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, p0}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Ln50;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ln50;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final e(Landroid/content/Context;)Landroidx/activity/ComponentActivity;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/activity/ComponentActivity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->e(Landroid/content/Context;)Landroidx/activity/ComponentActivity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;
    .locals 5

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    new-instance p1, Ln60;

    invoke-direct {p1, v0}, Ln60;-><init>(I)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p1, p2}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 p0, p0, 0x7e

    invoke-static {p0, v0, p2, p3}, Landroidx/compose/material3/ModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/SheetState;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    new-instance v4, Lt30;

    const/4 v1, 0x6

    invoke-direct {v4, p0, p1, v1}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v2, v4, p2, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-object p0
.end method
