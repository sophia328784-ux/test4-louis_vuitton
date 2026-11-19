.class public abstract Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;",
        "prebookCTAState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x1aef718d

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v12, p2

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v13, p3

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int v14, v0, v1

    and-int/lit16 v0, v14, 0x2493

    const/16 v1, 0x2492

    const/4 v15, 0x0

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v15

    :goto_5
    and-int/lit8 v1, v14, 0x1

    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v5, v14, 0xe

    if-eq v5, v10, :cond_6

    move v6, v15

    goto :goto_6

    :cond_6
    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v10, 0x0

    move/from16 v17, v6

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_7

    if-ne v4, v6, :cond_8

    :cond_7
    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$1$1;

    invoke-direct {v4, v2, v10}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v4, 0x7

    invoke-static {v1, v10, v9, v15, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->t4()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v10, v9, v15, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v10, v9, v15, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;

    instance-of v4, v11, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$BookingConflict;

    if-eqz v4, :cond_9

    check-cast v11, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$BookingConflict;

    :goto_7
    const/4 v4, 0x7

    goto :goto_8

    :cond_9
    move-object v11, v10

    goto :goto_7

    :goto_8
    invoke-static {v15, v4, v9, v10}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v19, v19, v20

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v19, :cond_a

    if-ne v15, v6, :cond_b

    :cond_a
    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$2$1;

    invoke-direct {v15, v11, v4, v10}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$BookingConflict;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v10, v14, 0x70

    const/16 v15, 0x20

    if-eq v10, v15, :cond_c

    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    const/4 v15, 0x1

    :goto_9
    const v19, 0xe000

    move-object/from16 v21, v0

    and-int v0, v14, v19

    move-object/from16 v19, v1

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    or-int/2addr v0, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_f

    if-ne v1, v6, :cond_e

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    new-instance v1, Lnf;

    const/4 v15, 0x0

    invoke-direct {v1, v7, v8, v15}, Lnf;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    const/4 v0, 0x4

    if-eq v5, v0, :cond_10

    move v0, v15

    goto :goto_d

    :cond_10
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_12

    if-ne v3, v6, :cond_11

    goto :goto_e

    :cond_11
    move-object/from16 v25, v1

    move-object/from16 v24, v4

    move v8, v5

    move-object/from16 v20, v11

    move-object/from16 v15, v21

    move-object v11, v6

    goto :goto_f

    :cond_12
    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$3$1;

    move v3, v5

    const-string v5, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    move-object/from16 v20, v6

    const/4 v6, 0x0

    move-object/from16 v22, v1

    const/4 v1, 0x2

    move/from16 v23, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    move-object/from16 v24, v4

    const-string v4, "onFieldUpdated"

    move-object/from16 v8, v20

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v15, v21

    move-object/from16 v25, v22

    move/from16 v8, v23

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_f
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x4

    if-eq v8, v0, :cond_13

    const/4 v4, 0x0

    goto :goto_10

    :cond_13
    const/4 v4, 0x1

    :goto_10
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v11, :cond_15

    :cond_14
    new-instance v1, Lk;

    const/16 v0, 0x14

    invoke-direct {v1, v2, v15, v0}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    if-ne v1, v11, :cond_16

    goto :goto_11

    :cond_16
    const/4 v0, 0x1

    goto :goto_12

    :cond_17
    :goto_11
    new-instance v1, Lje;

    const/4 v0, 0x1

    invoke-direct {v1, v15, v0}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_18

    if-ne v3, v11, :cond_19

    :cond_18
    new-instance v3, Lef;

    const/4 v1, 0x3

    invoke-direct {v3, v15, v1}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v26, v3

    check-cast v26, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    if-eq v8, v1, :cond_1a

    const/4 v4, 0x0

    goto :goto_13

    :cond_1a
    move v4, v0

    :goto_13
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v4, :cond_1b

    if-ne v1, v11, :cond_1c

    :cond_1b
    move v1, v0

    goto :goto_14

    :cond_1c
    move/from16 v27, v0

    goto :goto_15

    :goto_14
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$BookingInfoFormComposable$7$1;

    const-string v5, "loadForm()V"

    const/4 v6, 0x0

    move v3, v1

    const/4 v1, 0x0

    move v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    move/from16 v27, v4

    const-string v4, "loadForm"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_15
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1d

    const/4 v4, 0x0

    :goto_16
    const/16 v3, 0x20

    goto :goto_17

    :cond_1d
    move/from16 v4, v27

    goto :goto_16

    :goto_17
    if-eq v10, v3, :cond_1e

    const/16 v27, 0x0

    :cond_1e
    or-int v3, v4, v27

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1f

    if-ne v4, v11, :cond_20

    :cond_1f
    new-instance v4, Ll0;

    const/16 v3, 0x1c

    invoke-direct {v4, v2, v7, v3}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v18, v4

    check-cast v18, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v3, v14, 0x380

    shl-int/lit8 v4, v14, 0xc

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move-object v11, v12

    move-object/from16 v16, v13

    move-object/from16 v10, v19

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    const/4 v4, 0x0

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    move/from16 v20, v3

    move v3, v0

    move-object v0, v15

    move-object/from16 v15, v26

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v5, v19

    invoke-virtual/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v6

    if-eqz v6, :cond_21

    const v6, -0x7e2e0c4c

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v6, 0x7f140319

    invoke-static {v5, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    new-instance v6, Lg1;

    move-object/from16 v11, v25

    invoke-direct {v6, v1, v0, v11, v3}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0xd549542

    invoke-static {v0, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x6000000

    or-int v20, v0, v1

    const/16 v21, 0xf1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v5

    move-object/from16 v12, v24

    invoke-static/range {v9 .. v21}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_21
    const v0, -0x7e26fdf1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_22
    move-object v5, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_23

    new-instance v0, Lof;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lof;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
