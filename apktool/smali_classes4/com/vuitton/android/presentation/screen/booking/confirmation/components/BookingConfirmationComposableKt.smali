.class public abstract Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x66f98f4

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v11, 0x100

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int v12, v0, v2

    and-int/lit16 v0, v12, 0x93

    const/16 v2, 0x92

    const/4 v13, 0x0

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v13

    :goto_3
    and-int/lit8 v2, v12, 0x1

    invoke-virtual {v9, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Context;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-static {v0, v2, v9, v13, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;

    and-int/lit8 v0, v12, 0xe

    if-eq v0, v10, :cond_4

    move v2, v13

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    :goto_4
    and-int/lit8 v4, v12, 0x70

    if-ne v4, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v13

    :goto_5
    or-int/2addr v2, v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_6

    if-ne v3, v4, :cond_7

    :cond_6
    new-instance v3, Ll0;

    const/16 v2, 0x1a

    invoke-direct {v3, v1, v7, v2}, Ll0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function0;

    if-eq v0, v10, :cond_8

    move v2, v13

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_9

    if-ne v3, v4, :cond_a

    :cond_9
    move v2, v0

    goto :goto_7

    :cond_a
    move v14, v0

    move-object v13, v4

    goto :goto_8

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationComposableKt$BookingConfirmationComposable$2$1;

    const-string v5, "getConfirmedBookings()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;

    move-object/from16 v18, v4

    const-string v4, "getConfirmedBookings"

    move v14, v2

    move-object/from16 v13, v18

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_8
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    if-eq v14, v10, :cond_b

    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    const/4 v0, 0x1

    :goto_9
    and-int/lit16 v2, v12, 0x380

    if-ne v2, v11, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    or-int/2addr v0, v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_d

    if-ne v2, v13, :cond_e

    :cond_d
    new-instance v2, Lk;

    const/16 v0, 0x11

    invoke-direct {v2, v1, v8, v0}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_10

    if-ne v2, v13, :cond_f

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    new-instance v2, Lef;

    const/4 v0, 0x0

    invoke-direct {v2, v15, v0}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eq v14, v10, :cond_11

    move v4, v0

    goto :goto_d

    :cond_11
    const/4 v4, 0x1

    :goto_d
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_12

    if-ne v5, v13, :cond_13

    :cond_12
    new-instance v5, Lf0;

    const/16 v4, 0xe

    invoke-direct {v5, v1, v15, v4}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function2;

    if-eq v14, v10, :cond_14

    goto :goto_e

    :cond_14
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_15

    if-ne v4, v13, :cond_16

    :cond_15
    new-instance v4, Lk;

    const/16 v0, 0x12

    invoke-direct {v4, v1, v15, v0}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v10, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v16

    move-object/from16 v16, v9

    move-object v9, v11

    move-object v13, v2

    move-object v11, v3

    move-object v14, v5

    invoke-static/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->d(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_f

    :cond_17
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lu;

    const/16 v5, 0xc

    move/from16 v4, p4

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
