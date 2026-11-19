.class public abstract Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;",
        "bottomSheet",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x13496cfd

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x100

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x800

    goto :goto_2

    :cond_2
    const/16 v2, 0x400

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    goto :goto_3

    :cond_3
    const/16 v2, 0x2000

    :goto_3
    or-int v14, v0, v2

    and-int/lit16 v0, v14, 0x2493

    const/16 v2, 0x2492

    const/4 v15, 0x0

    const/16 v22, 0x1

    if-eq v0, v2, :cond_4

    move/from16 v0, v22

    goto :goto_4

    :cond_4
    move v0, v15

    :goto_4
    and-int/lit8 v2, v14, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-static {v0, v2, v10, v15, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v6, v14, 0xe

    if-eq v6, v11, :cond_5

    move/from16 v16, v15

    goto :goto_5

    :cond_5
    move/from16 v16, v22

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v16, :cond_6

    if-ne v13, v12, :cond_7

    :cond_6
    new-instance v13, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$1$1;

    invoke-direct {v13, v1, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v2, v10, v15, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x1c

    if-ne v4, v12, :cond_8

    new-instance v4, Lre;

    invoke-direct {v4, v5}, Lre;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v5, 0x30

    const/4 v15, 0x5

    invoke-static {v5, v15, v10, v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v15

    if-eq v6, v11, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    move/from16 v4, v22

    :goto_6
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit16 v5, v14, 0x380

    if-ne v5, v3, :cond_a

    move/from16 v3, v22

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    or-int/2addr v3, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_b

    if-ne v4, v12, :cond_c

    :cond_b
    new-instance v4, Lq;

    const/16 v3, 0x11

    invoke-direct {v4, v1, v7, v0, v3}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_d

    if-ne v5, v12, :cond_e

    :cond_d
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$2$1;

    invoke-direct {v5, v13, v15, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    if-eq v6, v11, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    move/from16 v0, v22

    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_11

    if-ne v2, v12, :cond_10

    goto :goto_9

    :cond_10
    move v7, v6

    goto :goto_a

    :cond_11
    :goto_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$3$1;

    const-string v5, "getPrebookSummary()V"

    move v2, v6

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    const-string v4, "getPrebookSummary"

    move v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_a
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eq v7, v11, :cond_12

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    move/from16 v0, v22

    :goto_b
    and-int/lit16 v3, v14, 0x1c00

    const/16 v4, 0x800

    if-ne v3, v4, :cond_13

    move/from16 v3, v22

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    or-int/2addr v0, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_14

    if-ne v3, v12, :cond_15

    :cond_14
    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;

    invoke-direct {v3, v1, v8}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function2;

    if-eq v7, v11, :cond_16

    const/4 v0, 0x0

    goto :goto_d

    :cond_16
    move/from16 v0, v22

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_17

    if-ne v4, v12, :cond_18

    :cond_17
    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$5$1;

    invoke-direct {v4, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lkotlin/jvm/functions/Function2;

    if-eq v7, v11, :cond_19

    const/4 v0, 0x0

    goto :goto_e

    :cond_19
    move/from16 v0, v22

    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_1a

    if-ne v5, v12, :cond_1b

    :cond_1a
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$6$1;

    invoke-direct {v5, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function1;

    if-eq v7, v11, :cond_1c

    const/4 v0, 0x0

    goto :goto_f

    :cond_1c
    move/from16 v0, v22

    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_1e

    if-ne v5, v12, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    goto :goto_11

    :cond_1e
    :goto_10
    new-instance v5, Lqg;

    const/4 v0, 0x0

    invoke-direct {v5, v1, v0}, Lqg;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function0;

    if-eq v7, v11, :cond_1f

    move v5, v0

    goto :goto_12

    :cond_1f
    move/from16 v5, v22

    :goto_12
    const v6, 0xe000

    and-int/2addr v6, v14

    const/16 v14, 0x4000

    if-ne v6, v14, :cond_20

    move/from16 v6, v22

    goto :goto_13

    :cond_20
    move v6, v0

    :goto_13
    or-int/2addr v5, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_21

    if-ne v6, v12, :cond_22

    :cond_21
    new-instance v6, Lk;

    const/16 v5, 0x1c

    invoke-direct {v6, v1, v9, v5}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function1;

    move-object v5, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v20

    const/16 v20, 0x30

    const/16 v21, 0x0

    move-object v14, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move v4, v11

    move-object/from16 v11, p1

    invoke-static/range {v10 .. v21}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v6, v19

    invoke-virtual {v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v10

    if-eqz v10, :cond_26

    const v10, 0x6dcd0fde

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v10, 0x7f140319

    invoke-static {v6, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eq v7, v4, :cond_23

    move v15, v0

    goto :goto_14

    :cond_23
    move/from16 v15, v22

    :goto_14
    or-int v4, v10, v15

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/16 v10, 0x9

    if-nez v4, :cond_24

    if-ne v7, v5, :cond_25

    :cond_24
    new-instance v7, Ltf;

    invoke-direct {v7, v1, v2, v10}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object v12, v7

    check-cast v12, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;

    move-object/from16 v7, p2

    invoke-direct {v4, v1, v7, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v2, -0x40910b72

    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v2, v10

    const/high16 v4, 0x6000000

    or-int v21, v2, v4

    const/16 v22, 0xf1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v20, v6

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_26
    move-object/from16 v7, p2

    const v2, 0x6de16ec5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_27
    move-object v6, v10

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_28

    new-instance v0, Lw;

    const/16 v7, 0x9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void
.end method
