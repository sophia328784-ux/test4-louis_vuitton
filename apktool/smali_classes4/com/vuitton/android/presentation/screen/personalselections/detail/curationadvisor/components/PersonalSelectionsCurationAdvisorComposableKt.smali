.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorComposableKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move-object/from16 v2, p11

    move-object/from16 v3, p17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p9}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x71050b6d

    move-object/from16 v5, p18

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p19, v5

    move-object/from16 v9, p1

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x20

    goto :goto_1

    :cond_1
    const/16 v10, 0x10

    :goto_1
    or-int/2addr v5, v10

    move-object/from16 v10, p2

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x100

    goto :goto_2

    :cond_2
    const/16 v13, 0x80

    :goto_2
    or-int/2addr v5, v13

    move-object/from16 v13, p3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_3

    move/from16 v16, v18

    goto :goto_3

    :cond_3
    move/from16 v16, v17

    :goto_3
    or-int v5, v5, v16

    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v16, :cond_4

    move/from16 v16, v20

    goto :goto_4

    :cond_4
    move/from16 v16, v19

    :goto_4
    or-int v5, v5, v16

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v22, 0x10000

    const/high16 v23, 0x20000

    if-eqz v21, :cond_5

    move/from16 v21, v23

    goto :goto_5

    :cond_5
    move/from16 v21, v22

    :goto_5
    or-int v5, v5, v21

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v24, 0x80000

    const/high16 v25, 0x100000

    if-eqz v21, :cond_6

    move/from16 v21, v25

    goto :goto_6

    :cond_6
    move/from16 v21, v24

    :goto_6
    or-int v5, v5, v21

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v26, 0x400000

    if-eqz v21, :cond_7

    const/high16 v21, 0x800000

    goto :goto_7

    :cond_7
    move/from16 v21, v26

    :goto_7
    or-int v5, v5, v21

    move-object/from16 v15, p8

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    const/high16 v28, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v28, 0x2000000

    :goto_8
    or-int v5, v5, v28

    move-object/from16 v6, p9

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    const/high16 v29, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v29, 0x10000000

    :goto_9
    or-int v5, v5, v29

    move-object/from16 v12, p10

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    const/16 v30, 0x4

    goto :goto_a

    :cond_a
    const/16 v30, 0x2

    :goto_a
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    const/16 v16, 0x20

    goto :goto_b

    :cond_b
    const/16 v16, 0x10

    :goto_b
    or-int v16, v30, v16

    move-object/from16 v14, p12

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v21, 0x100

    goto :goto_c

    :cond_c
    const/16 v21, 0x80

    :goto_c
    or-int v16, v16, v21

    move/from16 v21, v5

    move-object/from16 v5, p13

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    move/from16 v17, v18

    :cond_d
    or-int v16, v16, v17

    move-object/from16 v5, p14

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v19, v20

    :cond_e
    or-int v16, v16, v19

    move-object/from16 v5, p15

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v22, v23

    :cond_f
    or-int v16, v16, v22

    move-object/from16 v5, p16

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v24, v25

    :cond_10
    or-int v16, v16, v24

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v26, 0x800000

    :cond_11
    or-int v16, v16, v26

    const v17, 0x12492493

    and-int v5, v21, v17

    const v6, 0x12492492

    if-ne v5, v6, :cond_13

    const v5, 0x492493

    and-int v5, v16, v5

    const v6, 0x492492

    if-eq v5, v6, :cond_12

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/4 v5, 0x1

    :goto_e
    and-int/lit8 v6, v21, 0x1

    invoke-virtual {v4, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Error;

    if-nez v5, :cond_14

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Expired;

    if-nez v5, :cond_14

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Loading;

    if-eqz v5, :cond_15

    :cond_14
    move-object v2, v4

    move-object v0, v7

    goto/16 :goto_11

    :cond_15
    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    if-eqz v5, :cond_1a

    const v5, -0x39e1ba3d

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    new-instance v6, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v6}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    const/high16 v17, 0x1c00000

    and-int v0, v16, v17

    move-object/from16 v19, v5

    const/high16 v5, 0x800000

    if-ne v0, v5, :cond_16

    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    and-int/lit8 v5, v16, 0x70

    move/from16 p18, v0

    const/16 v0, 0x20

    if-ne v5, v0, :cond_17

    const/16 v18, 0x1

    goto :goto_10

    :cond_17
    const/16 v18, 0x0

    :goto_10
    or-int v0, p18, v18

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_18

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v0, :cond_19

    :cond_18
    new-instance v5, Lpj0;

    const/4 v0, 0x2

    invoke-direct {v5, v3, v2, v0}, Lpj0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v21, 0x7e

    move/from16 p18, v0

    shl-int/lit8 v0, v21, 0x3

    and-int/lit16 v2, v0, 0x1c00

    or-int v2, p18, v2

    const v16, 0xe000

    and-int v16, v0, v16

    or-int v2, v2, v16

    const/high16 v16, 0x70000

    and-int v16, v0, v16

    or-int v2, v2, v16

    const/high16 v16, 0x380000

    and-int v16, v0, v16

    or-int v2, v2, v16

    and-int v0, v0, v17

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int v2, v21, v2

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int v2, v21, v2

    or-int v20, v0, v2

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object v3, v9

    move-object/from16 v2, v19

    move-object/from16 v19, v4

    move-object v4, v6

    move-object v9, v7

    move-object v7, v8

    move-object v8, v11

    move-object v6, v13

    move-object/from16 v11, p9

    move-object v13, v5

    move-object v5, v10

    move-object v10, v15

    move-object/from16 v15, p13

    invoke-static/range {v2 .. v20}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorScreenKt;->c(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v0, v9

    move-object/from16 v2, v19

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1a
    move-object v2, v4

    const/4 v3, 0x0

    const v0, -0x43ef6dbf

    invoke-static {v2, v0, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :goto_11
    const v3, -0x39fba991

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lkn0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v4, 0x7813b2cf

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v15

    new-instance v3, Lni0;

    const/16 v4, 0xc

    move-object/from16 v5, p7

    invoke-direct {v3, v1, v5, v4}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v4, 0x438f061a

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const v18, 0x30000030

    const/16 v19, 0xfd

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1b
    move-object v2, v4

    move-object v0, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_1c

    new-instance v0, Loe;

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

    move/from16 v19, p19

    move-object/from16 v32, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Loe;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object v1, v0

    move-object/from16 v0, v32

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
