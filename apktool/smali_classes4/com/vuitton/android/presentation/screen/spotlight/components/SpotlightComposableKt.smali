.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v2, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x3b10b2e3

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x4

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v10, p2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v12, p3

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v15, p4

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int v11, v0, v1

    and-int/lit16 v0, v11, 0x2493

    const/16 v1, 0x2492

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    and-int/lit8 v1, v11, 0x1

    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    and-int/lit8 v0, v11, 0xe

    if-eq v0, v8, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_7

    if-ne v3, v4, :cond_8

    :cond_7
    move v1, v0

    goto :goto_7

    :cond_8
    move v14, v0

    move-object v13, v4

    goto :goto_8

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$1$1;

    const-string v5, "onSpotlightPageChanged(I)V"

    const/4 v6, 0x0

    move v3, v1

    const/4 v1, 0x1

    move/from16 v17, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-object/from16 v18, v4

    const-string v4, "onSpotlightPageChanged"

    move/from16 v14, v17

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_8
    move-object/from16 v18, v3

    check-cast v18, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    if-ne v1, v13, :cond_b

    :cond_a
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$2$1;

    const-string v5, "onSkuPageChanged(II)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onSkuPageChanged"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_b
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_c

    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_d

    if-ne v1, v13, :cond_e

    :cond_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$3$1;

    const-string v5, "onHotspotClick(II)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onHotspotClick"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_e
    move-object/from16 v20, v1

    check-cast v20, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_f

    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_10

    if-ne v1, v13, :cond_11

    :cond_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$4$1;

    const-string v5, "onIntroFinished()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onIntroFinished"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_11
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_12

    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_13

    if-ne v1, v13, :cond_14

    :cond_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$5$1;

    const-string v5, "onOutroFinished()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onOutroFinished"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_14
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_15

    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_16

    if-ne v1, v13, :cond_17

    :cond_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$6$1;

    const-string v5, "onOnboardingFinished()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onOnboardingFinished"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_17
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_18

    const/4 v0, 0x0

    goto :goto_e

    :cond_18
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_19

    if-ne v1, v13, :cond_1a

    :cond_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$7$1;

    const-string v5, "onSpotlightBackPressed(I)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onSpotlightBackPressed"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1a
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/reflect/KFunction;

    if-eq v14, v8, :cond_1b

    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1d

    if-ne v1, v13, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_11

    :cond_1d
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightComposableKt$SpotlightComposable$8$1;

    const-string v5, "onHotspotAnimationOneByOneFinished(I)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    const-string v4, "onHotspotAnimationOneByOneFinished"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v2, v18

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v3, v19

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, v20

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object/from16 v6, v21

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v22, Lkotlin/jvm/functions/Function0;

    check-cast v23, Lkotlin/jvm/functions/Function0;

    if-eq v14, v8, :cond_1e

    const/4 v4, 0x0

    goto :goto_12

    :cond_1e
    const/4 v4, 0x1

    :goto_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_20

    if-ne v8, v13, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    goto :goto_14

    :cond_20
    :goto_13
    new-instance v8, Lw01;

    const/4 v4, 0x0

    invoke-direct {v8, v1, v4}, Lw01;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_21

    const/16 v17, 0x0

    goto :goto_15

    :cond_21
    const/16 v17, 0x1

    :goto_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v17, :cond_22

    if-ne v4, v13, :cond_23

    :cond_22
    new-instance v4, Lw01;

    const/4 v13, 0x1

    invoke-direct {v4, v1, v13}, Lw01;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function1;

    move-object/from16 v14, v24

    check-cast v14, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v11, 0x6

    and-int/lit16 v0, v0, 0x1c00

    shl-int/lit8 v17, v11, 0xf

    const/high16 v18, 0x1c00000

    and-int v17, v17, v18

    or-int v17, v0, v17

    shr-int/lit8 v0, v11, 0x6

    and-int/lit8 v0, v0, 0x70

    const v18, 0xe000

    and-int v11, v11, v18

    or-int v18, v0, v11

    move-object v1, v10

    move-object v10, v8

    move-object v8, v1

    move-object v11, v4

    move-object v4, v9

    move-object/from16 v1, v16

    move-object/from16 v9, v23

    move-object/from16 v16, v7

    move-object/from16 v7, v22

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_16

    :cond_24
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_16
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_25

    new-instance v0, Lkj0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lkj0;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method
