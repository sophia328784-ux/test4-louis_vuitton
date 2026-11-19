.class public abstract Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterScreenKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    move-object/from16 v2, p13

    move/from16 v3, p25

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const v4, -0x1f81d8da

    move-object/from16 v5, p24

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v8, v3, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v5, v11

    goto :goto_3

    :cond_3
    move-object/from16 v8, p1

    :goto_3
    and-int/lit16 v11, v3, 0x180

    if-nez v11, :cond_5

    move-object/from16 v11, p2

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_4

    :cond_4
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v5, v14

    goto :goto_5

    :cond_5
    move-object/from16 v11, p2

    :goto_5
    and-int/lit16 v14, v3, 0xc00

    if-nez v14, :cond_7

    move-object/from16 v14, p3

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_6

    :cond_6
    const/16 v16, 0x400

    :goto_6
    or-int v5, v5, v16

    goto :goto_7

    :cond_7
    move-object/from16 v14, p3

    :goto_7
    and-int/lit16 v7, v3, 0x6000

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v18

    goto :goto_8

    :cond_8
    move/from16 v19, v17

    :goto_8
    or-int v5, v5, v19

    goto :goto_9

    :cond_9
    move-object/from16 v7, p4

    :goto_9
    const/high16 v19, 0x30000

    and-int v20, v3, v19

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    move-object/from16 v9, p5

    if-nez v20, :cond_b

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v23, v22

    goto :goto_a

    :cond_a
    move/from16 v23, v21

    :goto_a
    or-int v5, v5, v23

    :cond_b
    const/high16 v23, 0x180000

    and-int v23, v3, v23

    const/high16 v24, 0x80000

    const/high16 v25, 0x100000

    if-nez v23, :cond_e

    const/high16 v23, 0x200000

    and-int v23, v3, v23

    if-nez v23, :cond_c

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    goto :goto_b

    :cond_c
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    :goto_b
    if-eqz v23, :cond_d

    move/from16 v23, v25

    goto :goto_c

    :cond_d
    move/from16 v23, v24

    :goto_c
    or-int v5, v5, v23

    :cond_e
    const/high16 v23, 0xc00000

    and-int v23, v3, v23

    const/high16 v26, 0x400000

    const/high16 v27, 0x800000

    move-object/from16 v10, p7

    if-nez v23, :cond_10

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    move/from16 v28, v27

    goto :goto_d

    :cond_f
    move/from16 v28, v26

    :goto_d
    or-int v5, v5, v28

    :cond_10
    const/high16 v28, 0x6000000

    and-int v28, v3, v28

    const/high16 v29, 0x2000000

    const/high16 v30, 0x4000000

    move-object/from16 v12, p8

    if-nez v28, :cond_12

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    move/from16 v31, v30

    goto :goto_e

    :cond_11
    move/from16 v31, v29

    :goto_e
    or-int v5, v5, v31

    :cond_12
    const/high16 v31, 0x30000000

    and-int v31, v3, v31

    const/high16 v32, 0x10000000

    const/high16 v33, 0x20000000

    move-object/from16 v13, p9

    if-nez v31, :cond_14

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    move/from16 v34, v33

    goto :goto_f

    :cond_13
    move/from16 v34, v32

    :goto_f
    or-int v5, v5, v34

    :cond_14
    move-object/from16 v10, p10

    move/from16 v34, v5

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v35, 0x4

    :goto_10
    move-object/from16 v5, p11

    goto :goto_11

    :cond_15
    const/16 v35, 0x2

    goto :goto_10

    :goto_11
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    const/16 v36, 0x20

    goto :goto_12

    :cond_16
    const/16 v36, 0x10

    :goto_12
    or-int v35, v35, v36

    move-object/from16 v6, p12

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    const/16 v37, 0x100

    goto :goto_13

    :cond_17
    const/16 v37, 0x80

    :goto_13
    or-int v35, v35, v37

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    const/16 v37, 0x800

    goto :goto_14

    :cond_18
    const/16 v37, 0x400

    :goto_14
    or-int v35, v35, v37

    move-object/from16 v15, p14

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    move/from16 v17, v18

    :cond_19
    or-int v17, v35, v17

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    move/from16 v21, v22

    :cond_1a
    or-int v17, v17, v21

    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    move/from16 v24, v25

    :cond_1b
    or-int v17, v17, v24

    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    move/from16 v26, v27

    :cond_1c
    or-int v17, v17, v26

    move-object/from16 v0, p18

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    move/from16 v29, v30

    :cond_1d
    or-int v17, v17, v29

    move-object/from16 v0, p19

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    move/from16 v32, v33

    :cond_1e
    or-int v0, v17, v32

    move-object/from16 v3, p20

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/16 v16, 0x4

    :goto_15
    move-object/from16 v3, p21

    goto :goto_16

    :cond_1f
    const/16 v16, 0x2

    goto :goto_15

    :goto_16
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    const/16 v23, 0x20

    goto :goto_17

    :cond_20
    const/16 v23, 0x10

    :goto_17
    or-int v16, v16, v23

    move-object/from16 v3, p22

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    const/16 v28, 0x100

    goto :goto_18

    :cond_21
    const/16 v28, 0x80

    :goto_18
    or-int v16, v16, v28

    move-object/from16 v3, p23

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    const/16 v37, 0x800

    goto :goto_19

    :cond_22
    const/16 v37, 0x400

    :goto_19
    or-int v3, v16, v37

    const v16, 0x12492493

    and-int v5, v34, v16

    const/16 v17, 0x0

    const v6, 0x12492492

    const/16 v18, 0x1

    if-ne v5, v6, :cond_24

    and-int v5, v0, v16

    if-ne v5, v6, :cond_24

    and-int/lit16 v5, v3, 0x493

    const/16 v6, 0x492

    if-eq v5, v6, :cond_23

    goto :goto_1a

    :cond_23
    move/from16 v5, v17

    goto :goto_1b

    :cond_24
    :goto_1a
    move/from16 v5, v18

    :goto_1b
    and-int/lit8 v6, v34, 0x1

    invoke-virtual {v4, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroidx/compose/ui/focus/FocusManager;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    sget-object v21, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;->REGISTER:Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;

    iget-boolean v6, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->m:Z

    move/from16 p24, v3

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->d:Ljava/lang/String;

    move-object/from16 v16, v3

    and-int/lit16 v3, v0, 0x1c00

    move/from16 v22, v0

    const/16 v0, 0x800

    if-ne v3, v0, :cond_25

    move/from16 v17, v18

    :cond_25
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v17, v0

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_26

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v0, :cond_27

    :cond_26
    new-instance v3, Lt30;

    const/16 v0, 0x16

    invoke-direct {v3, v2, v1, v0}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v18, v3

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a()Z

    move-result v23

    new-instance v0, Lvf0;

    move-object/from16 v3, p7

    move-object/from16 v2, p18

    move-object/from16 v17, p21

    move-object/from16 v11, p23

    move/from16 v24, p24

    move-object/from16 v39, v4

    move/from16 v25, v6

    move-object v8, v9

    move-object v4, v12

    move-object v7, v13

    move-object v12, v15

    move-object/from16 v26, v16

    move-object/from16 v9, p11

    move-object/from16 v13, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v6, p22

    invoke-direct/range {v0 .. v17}, Lvf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const v1, -0x75369e25

    move-object/from16 v2, v39

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    shr-int/lit8 v0, v34, 0x9

    and-int/lit16 v1, v0, 0x380

    or-int/lit8 v1, v1, 0x30

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    const v3, 0xe000

    shr-int/lit8 v4, v34, 0x6

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v34, 0x9

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/high16 v3, 0xe000000

    shl-int/lit8 v4, v34, 0x15

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v22, 0x15

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v17, v1, v3

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, v19

    shr-int/lit8 v1, v22, 0x15

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shl-int/lit8 v1, v24, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    const/16 v19, 0x1

    move-object/from16 v10, v18

    move/from16 v18, v0

    const/4 v0, 0x0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move-object/from16 v11, p4

    move-object/from16 v4, p6

    move-object/from16 v9, p12

    move-object/from16 v12, p19

    move-object/from16 v13, p20

    move-object/from16 v16, v2

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    move/from16 v14, v23

    move/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v19}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v39, v16

    goto :goto_1c

    :cond_28
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_29

    move-object v1, v0

    new-instance v0, Lwf0;

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

    move/from16 v25, p25

    move-object/from16 v40, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v25}, Lwf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v40

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
