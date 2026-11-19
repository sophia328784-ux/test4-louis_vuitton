.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/form/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/components/a;->b:I

    const/16 v4, 0x18

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0x17

    const/16 v9, 0x16

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0x15

    const/16 v13, 0x1b

    const/16 v14, 0x1a

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v1, 0x2

    const/16 v16, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v1, :cond_0

    move/from16 v1, v16

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v21, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->ERROR:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    new-instance v22, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct/range {v22 .. v22}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1

    new-instance v1, Lkm;

    invoke-direct {v1, v14}, Lkm;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2

    new-instance v1, Lfl;

    const/16 v3, 0x1c

    invoke-direct {v1, v3, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_3

    new-instance v1, Lkm;

    invoke-direct {v1, v13}, Lkm;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v25, v1

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v26, v1

    check-cast v26, Lkotlin/jvm/functions/Function3;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_5

    new-instance v1, Lnn;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lnn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_6

    new-instance v1, Lnn;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lnn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_7

    new-instance v1, Lfl;

    invoke-direct {v1, v12, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v29, v1

    check-cast v29, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_8

    new-instance v1, Lnn;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lnn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_9

    new-instance v1, Lkm;

    invoke-direct {v1, v11}, Lkm;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v31, v1

    check-cast v31, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_a

    new-instance v1, Lkm;

    invoke-direct {v1, v10}, Lkm;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_b

    new-instance v1, Lnn;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lnn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v33, v1

    check-cast v33, Lkotlin/jvm/functions/Function0;

    const v35, 0x36db0db6

    const v36, 0x36db6

    sget-object v18, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v34, v0

    invoke-static/range {v18 .. v36}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_c
    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    and-int/lit8 v11, v10, 0x3

    if-eq v11, v1, :cond_d

    move/from16 v1, v16

    goto :goto_2

    :cond_d
    move v1, v2

    :goto_2
    and-int/lit8 v10, v10, 0x1

    invoke-interface {v0, v10, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    sget-object v19, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    const/16 v25, 0x38

    const/16 v26, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v26}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    new-instance v11, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v11}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_e

    new-instance v12, Lkm;

    invoke-direct {v12, v9}, Lkm;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_f

    new-instance v9, Lfl;

    invoke-direct {v9, v14, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v15, :cond_10

    new-instance v14, Lkm;

    invoke-direct {v14, v8}, Lkm;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v8, v14

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v15, :cond_11

    sget-object v14, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1;

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v14, Lkotlin/jvm/functions/Function3;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_12

    new-instance v3, Lnn;

    invoke-direct {v3, v7}, Lnn;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_13

    new-instance v7, Lnn;

    invoke-direct {v7, v6}, Lnn;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_14

    new-instance v6, Lfl;

    invoke-direct {v6, v13, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_15

    new-instance v2, Lnn;

    invoke-direct {v2, v5}, Lnn;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_16

    new-instance v2, Lkm;

    invoke-direct {v2, v4}, Lkm;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_17

    new-instance v4, Lkm;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Lkm;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_18

    new-instance v5, Lnn;

    const/16 v15, 0x12

    invoke-direct {v5, v15}, Lnn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v18, 0x36db0db0

    const v19, 0x36db6

    move-object v5, v11

    move-object v11, v7

    move-object v7, v9

    move-object v9, v14

    move-object v14, v2

    const/4 v2, 0x1

    move-object v15, v4

    move-object v4, v10

    move-object v10, v3

    const/4 v3, 0x1

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_19
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v1, :cond_1a

    move/from16 v1, v16

    goto :goto_4

    :cond_1a
    move v1, v2

    :goto_4
    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    sget-object v20, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    const/16 v26, 0x38

    const/16 v27, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    new-instance v5, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v5}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_1b

    new-instance v6, Lkm;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Lkm;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_1c

    new-instance v7, Lfl;

    invoke-direct {v7, v4, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_1d

    new-instance v4, Lkm;

    const/16 v8, 0x13

    invoke-direct {v4, v8}, Lkm;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_1e

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-354028097$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-354028097$1$4$1;

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function3;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_1f

    new-instance v4, Lnn;

    const/16 v13, 0xb

    invoke-direct {v4, v13}, Lnn;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v15, :cond_20

    new-instance v13, Lnn;

    invoke-direct {v13, v11}, Lnn;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v11, v13

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v15, :cond_21

    new-instance v13, Lfl;

    const/16 v14, 0x19

    invoke-direct {v13, v14, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_22

    new-instance v2, Lnn;

    invoke-direct {v2, v10}, Lnn;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v15, :cond_23

    new-instance v10, Lkm;

    const/16 v14, 0x14

    invoke-direct {v10, v14}, Lkm;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v14, v10

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v15, :cond_24

    new-instance v10, Lkm;

    invoke-direct {v10, v12}, Lkm;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_25

    new-instance v12, Lnn;

    const/16 v15, 0xe

    invoke-direct {v12, v15}, Lnn;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v16, v12

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v18, 0x36db0db0

    const v19, 0x36db6

    move-object v12, v13

    move-object v13, v2

    const/4 v2, 0x0

    move-object v15, v10

    move-object v10, v4

    move-object v4, v3

    const/4 v3, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_26
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v1, :cond_27

    move/from16 v1, v16

    goto :goto_6

    :cond_27
    move v1, v2

    :goto_6
    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_28

    new-instance v3, Lkm;

    const/16 v10, 0xe

    invoke-direct {v3, v10}, Lkm;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v15, :cond_29

    new-instance v10, Lfl;

    invoke-direct {v10, v9, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_2a

    new-instance v9, Lkm;

    invoke-direct {v9, v7}, Lkm;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_2b

    sget-object v7, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1871925576$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1871925576$1$4$1;

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v7, Lkotlin/jvm/functions/Function3;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v15, :cond_2c

    new-instance v11, Lnn;

    const/4 v12, 0x7

    invoke-direct {v11, v12}, Lnn;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_2d

    new-instance v12, Lnn;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Lnn;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v15, :cond_2e

    new-instance v13, Lfl;

    invoke-direct {v13, v8, v2}, Lfl;-><init>(IB)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_2f

    new-instance v2, Lnn;

    const/16 v8, 0x9

    invoke-direct {v2, v8}, Lnn;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v15, :cond_30

    new-instance v8, Lkm;

    invoke-direct {v8, v6}, Lkm;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_31

    new-instance v6, Lkm;

    invoke-direct {v6, v5}, Lkm;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_32

    new-instance v5, Lnn;

    const/16 v8, 0xa

    invoke-direct {v5, v8}, Lnn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v18, 0x36db0db6

    const v19, 0x36db6

    move-object v5, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;

    move-object v8, v9

    move-object v9, v7

    move-object v7, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v2

    const/4 v2, 0x0

    move-object v15, v6

    move-object v6, v3

    const/4 v3, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_33
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
