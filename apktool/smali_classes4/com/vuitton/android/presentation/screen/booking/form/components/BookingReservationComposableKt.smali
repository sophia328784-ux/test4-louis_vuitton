.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;",
        "bookingCTAState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x7513614d

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0xc00

    if-nez v1, :cond_3

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    goto :goto_2

    :cond_2
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_3

    :cond_4
    const/16 v1, 0x2000

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v15, p5

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v1, 0x10000

    :goto_4
    or-int/2addr v0, v1

    move-object/from16 v1, p6

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v3, 0x80000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v3, p7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v4, 0x400000

    :goto_6
    or-int/2addr v0, v4

    const v4, 0x492493

    and-int/2addr v4, v0

    const v5, 0x492492

    const/16 v16, 0x1

    if-eq v4, v5, :cond_8

    move/from16 v4, v16

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v0, 0xe

    if-eq v14, v12, :cond_9

    const/16 v17, 0x0

    goto :goto_8

    :cond_9
    move/from16 v17, v16

    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v6, 0x0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_a

    if-ne v13, v1, :cond_b

    :cond_a
    new-instance v13, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$1$1;

    invoke-direct {v13, v2, v6}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v14, v12, :cond_c

    const/4 v13, 0x0

    goto :goto_9

    :cond_c
    move/from16 v13, v16

    :goto_9
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v13, v13, v17

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v13, :cond_e

    if-ne v12, v1, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v13, p2

    goto :goto_b

    :cond_e
    :goto_a
    new-instance v12, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$2$1;

    move-object/from16 v13, p2

    invoke-direct {v12, v2, v13, v4, v6}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v12, 0x0

    invoke-static {v4, v6, v11, v12, v5}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    shr-int/lit8 v19, v0, 0x3

    and-int/lit8 v12, v19, 0xe

    invoke-static {v7, v6, v11, v12, v5}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    move-object/from16 v21, v12

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->ma()Z

    move-result v12

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->U7()Z

    move-result v13

    const/4 v4, 0x4

    if-eq v14, v4, :cond_f

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    move/from16 v4, v16

    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_10

    if-ne v5, v1, :cond_11

    :cond_10
    move v4, v0

    goto :goto_d

    :cond_11
    move v7, v0

    move-object v10, v1

    const/16 v20, 0x0

    goto :goto_e

    :goto_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$3$1;

    const-string v5, "toggleModule(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object/from16 v22, v1

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    move/from16 v23, v4

    const-string v4, "toggleModule"

    move-object/from16 v10, v22

    move/from16 v7, v23

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_e
    move-object/from16 v22, v5

    check-cast v22, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_12

    move/from16 v6, v20

    goto :goto_f

    :cond_12
    move/from16 v6, v16

    :goto_f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_13

    if-ne v0, v10, :cond_14

    :cond_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$4$1;

    const-string v5, "updateModuleData(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    const-string v4, "updateModuleData"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v23, v0

    check-cast v23, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_15

    move/from16 v6, v20

    goto :goto_10

    :cond_15
    move/from16 v6, v16

    :goto_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_16

    if-ne v0, v10, :cond_17

    :cond_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$5$1;

    const-string v5, "openCategoryEditor(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    const-string v4, "openCategoryEditor"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v24, v0

    check-cast v24, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_18

    move/from16 v6, v20

    goto :goto_11

    :cond_18
    move/from16 v6, v16

    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_19

    if-ne v0, v10, :cond_1a

    :cond_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$6$1;

    const-string v5, "dismissCategoryEditor()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    const-string v4, "dismissCategoryEditor"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v25, v0

    check-cast v25, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_1b

    move/from16 v6, v20

    goto :goto_12

    :cond_1b
    move/from16 v6, v16

    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_1c

    if-ne v0, v10, :cond_1d

    :cond_1c
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$7$1;

    const-string v5, "confirmCategoryEditor(Ljava/util/List;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    const-string v4, "confirmCategoryEditor"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v26, v0

    check-cast v26, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_1e

    move/from16 v6, v20

    goto :goto_13

    :cond_1e
    move/from16 v6, v16

    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_20

    if-ne v0, v10, :cond_1f

    goto :goto_14

    :cond_1f
    move-object/from16 v2, p0

    goto :goto_15

    :cond_20
    :goto_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$8$1;

    const-string v5, "initialize()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    const-string v4, "initialize"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v22, Lkotlin/jvm/functions/Function1;

    check-cast v23, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_21

    move/from16 v6, v20

    goto :goto_16

    :cond_21
    move/from16 v6, v16

    :goto_16
    and-int/lit16 v1, v7, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_22

    move/from16 v1, v16

    goto :goto_17

    :cond_22
    move/from16 v1, v20

    :goto_17
    or-int/2addr v1, v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_23

    if-ne v3, v10, :cond_24

    :cond_23
    new-instance v3, Lk;

    const/16 v1, 0x1a

    invoke-direct {v3, v2, v8, v1}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v18, v3

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x4

    if-eq v14, v4, :cond_25

    move/from16 v6, v20

    goto :goto_18

    :cond_25
    move/from16 v6, v16

    :goto_18
    const v1, 0xe000

    and-int v3, v7, v1

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_26

    goto :goto_19

    :cond_26
    move/from16 v16, v20

    :goto_19
    or-int v3, v6, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_27

    if-ne v4, v10, :cond_28

    :cond_27
    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;

    invoke-direct {v4, v2, v9}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v4, Lkotlin/jvm/functions/Function3;

    check-cast v24, Lkotlin/jvm/functions/Function2;

    check-cast v25, Lkotlin/jvm/functions/Function0;

    check-cast v26, Lkotlin/jvm/functions/Function1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v3, v7, 0xc

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    const/16 v5, 0x6000

    or-int v28, v5, v3

    shr-int/lit8 v3, v7, 0x12

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v5, v7, 0x9

    and-int/2addr v1, v5

    or-int v29, v3, v1

    move-object/from16 v27, v11

    move-object/from16 v20, v15

    move-object/from16 v14, v19

    move-object/from16 v11, v21

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v15, p2

    move-object/from16 v21, p6

    move-object/from16 v25, p7

    move-object/from16 v26, v0

    move-object/from16 v19, v4

    invoke-static/range {v11 .. v29}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1a

    :cond_29
    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1a
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_2a

    new-instance v0, Lfg;

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v2, p1

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lfg;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method
