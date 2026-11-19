.class public abstract Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    move/from16 v9, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7224e3ef

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v9, 0x6

    const/4 v2, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v9

    goto :goto_2

    :cond_2
    move v0, v9

    :goto_2
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_4

    move/from16 v3, p1

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v0, v5

    goto :goto_4

    :cond_4
    move/from16 v3, p1

    :goto_4
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_6

    move/from16 v5, p2

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_5

    :cond_5
    const/16 v6, 0x80

    :goto_5
    or-int/2addr v0, v6

    goto :goto_6

    :cond_6
    move/from16 v5, p2

    :goto_6
    and-int/lit16 v6, v9, 0xc00

    const/16 v7, 0x800

    if-nez v6, :cond_9

    and-int/lit16 v6, v9, 0x1000

    if-nez v6, :cond_7

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_7

    :cond_7
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    :goto_7
    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_8

    :cond_8
    const/16 v6, 0x400

    :goto_8
    or-int/2addr v0, v6

    :cond_9
    and-int/lit16 v6, v9, 0x6000

    if-nez v6, :cond_b

    move-object/from16 v6, p4

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x4000

    goto :goto_9

    :cond_a
    const/16 v11, 0x2000

    :goto_9
    or-int/2addr v0, v11

    goto :goto_a

    :cond_b
    move-object/from16 v6, p4

    :goto_a
    const/high16 v11, 0x30000

    and-int/2addr v11, v9

    if-nez v11, :cond_d

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x20000

    goto :goto_b

    :cond_c
    const/high16 v11, 0x10000

    :goto_b
    or-int/2addr v0, v11

    :cond_d
    const/high16 v11, 0x180000

    and-int/2addr v11, v9

    if-nez v11, :cond_f

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x100000

    goto :goto_c

    :cond_e
    const/high16 v12, 0x80000

    :goto_c
    or-int/2addr v0, v12

    goto :goto_d

    :cond_f
    move-object/from16 v11, p6

    :goto_d
    const v12, 0x92493

    and-int/2addr v12, v0

    const v13, 0x92492

    if-eq v12, v13, :cond_10

    const/4 v12, 0x1

    goto :goto_e

    :cond_10
    const/4 v12, 0x0

    :goto_e
    and-int/lit8 v13, v0, 0x1

    invoke-virtual {v10, v13, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_17

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-static {v12, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v0, 0xe

    if-eq v14, v2, :cond_12

    and-int/lit8 v14, v0, 0x8

    if-eqz v14, :cond_11

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_f

    :cond_11
    const/4 v14, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v14, 0x1

    :goto_10
    and-int/lit16 v15, v0, 0x1c00

    if-eq v15, v7, :cond_14

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_13

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_11

    :cond_13
    const/16 v16, 0x0

    goto :goto_12

    :cond_14
    :goto_11
    const/16 v16, 0x1

    :goto_12
    or-int v0, v14, v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_15

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v0, :cond_16

    :cond_15
    new-instance v7, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt$PrivacyComposable$1$1;

    const/4 v0, 0x0

    invoke-direct {v7, v1, v4, v0}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt$PrivacyComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v13, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "PrivacyComposable"

    invoke-direct {v0, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->e(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v0, Lkn0;

    invoke-direct {v0, v8, v2}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v2, -0x7d883455

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;

    move v2, v3

    move v3, v5

    move-object v7, v12

    move-object v5, v4

    move-object v4, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/privacy/components/a;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v1, 0x38cc3940

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const v23, 0x30000030

    const/16 v24, 0x1fc

    const/4 v12, 0x0

    move-object/from16 v22, v10

    move-object v10, v13

    const/4 v13, 0x0

    move-object v11, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v10 .. v24}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_13

    :cond_17
    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_13
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_18

    new-instance v0, Lzv;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object v6, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
