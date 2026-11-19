.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "previousExpandedModuleIndex",
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


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1f4

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a:J

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v15, p2

    move-object/from16 v8, p4

    move/from16 v9, p17

    move/from16 v10, p18

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2330a19e

    move-object/from16 v3, p16

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v9

    goto :goto_2

    :cond_2
    move v0, v9

    :goto_2
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_4

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v0, v5

    :cond_4
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :cond_6
    and-int/lit16 v5, v9, 0xc00

    const/16 v16, 0x800

    if-nez v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move/from16 v5, v16

    goto :goto_5

    :cond_7
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    :cond_8
    and-int/lit16 v5, v9, 0x6000

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-nez v5, :cond_a

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move/from16 v5, v18

    goto :goto_6

    :cond_9
    move/from16 v5, v17

    :goto_6
    or-int/2addr v0, v5

    :cond_a
    const/high16 v5, 0x30000

    and-int v19, v9, v5

    const/high16 v20, 0x10000

    const/high16 v21, 0x20000

    move-object/from16 v12, p5

    if-nez v19, :cond_c

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v21

    goto :goto_7

    :cond_b
    move/from16 v19, v20

    :goto_7
    or-int v0, v0, v19

    :cond_c
    const/high16 v19, 0x180000

    and-int v19, v9, v19

    move-object/from16 v13, p6

    if-nez v19, :cond_e

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v22, 0x80000

    :goto_8
    or-int v0, v0, v22

    :cond_e
    const/high16 v22, 0xc00000

    and-int v22, v9, v22

    move-object/from16 v3, p7

    if-nez v22, :cond_10

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v23, 0x400000

    :goto_9
    or-int v0, v0, v23

    :cond_10
    const/high16 v23, 0x6000000

    and-int v23, v9, v23

    move-object/from16 v4, p8

    if-nez v23, :cond_12

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/high16 v24, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v24, 0x2000000

    :goto_a
    or-int v0, v0, v24

    :cond_12
    const/high16 v24, 0x30000000

    and-int v24, v9, v24

    move-object/from16 v7, p9

    if-nez v24, :cond_14

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v25, 0x10000000

    :goto_b
    or-int v0, v0, v25

    :cond_14
    and-int/lit8 v25, v10, 0x6

    move-object/from16 v7, p10

    if-nez v25, :cond_16

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v22, 0x4

    goto :goto_c

    :cond_15
    const/16 v22, 0x2

    :goto_c
    or-int v22, v10, v22

    goto :goto_d

    :cond_16
    move/from16 v22, v10

    :goto_d
    and-int/lit8 v23, v10, 0x30

    move-object/from16 v14, p11

    if-nez v23, :cond_18

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v24, 0x20

    goto :goto_e

    :cond_17
    const/16 v24, 0x10

    :goto_e
    or-int v22, v22, v24

    :cond_18
    move/from16 v24, v5

    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_1a

    move-object/from16 v5, p12

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    const/16 v19, 0x100

    goto :goto_f

    :cond_19
    const/16 v19, 0x80

    :goto_f
    or-int v22, v22, v19

    goto :goto_10

    :cond_1a
    move-object/from16 v5, p12

    :goto_10
    and-int/lit16 v6, v10, 0xc00

    if-nez v6, :cond_1c

    move-object/from16 v6, p13

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    goto :goto_11

    :cond_1b
    const/16 v16, 0x400

    :goto_11
    or-int v22, v22, v16

    goto :goto_12

    :cond_1c
    move-object/from16 v6, p13

    :goto_12
    move/from16 v16, v0

    and-int/lit16 v0, v10, 0x6000

    if-nez v0, :cond_1e

    move-object/from16 v0, p14

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v17, v18

    :cond_1d
    or-int v22, v22, v17

    goto :goto_13

    :cond_1e
    move-object/from16 v0, p14

    :goto_13
    and-int v17, v10, v24

    move-object/from16 v7, p15

    if-nez v17, :cond_20

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move/from16 v20, v21

    :cond_1f
    or-int v22, v22, v20

    :cond_20
    const v17, 0x12492493

    and-int v0, v16, v17

    const v2, 0x12492492

    const/16 v17, 0x1

    if-ne v0, v2, :cond_22

    const v0, 0x12493

    and-int v0, v22, v0

    const v2, 0x12492

    if-eq v0, v2, :cond_21

    goto :goto_14

    :cond_21
    const/4 v0, 0x0

    goto :goto_15

    :cond_22
    :goto_14
    move/from16 v0, v17

    :goto_15
    and-int/lit8 v2, v16, 0x1

    invoke-virtual {v11, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v15, :cond_23

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;->BACK:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    goto :goto_16

    :cond_23
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;->CLOSE:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    :goto_16
    if-eqz v15, :cond_24

    move-object/from16 v2, p10

    goto :goto_17

    :cond_24
    move-object/from16 v2, p9

    :goto_17
    instance-of v7, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-eqz v7, :cond_25

    move-object/from16 v18, p0

    check-cast v18, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object/from16 v1, v18

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    move-object v13, v1

    goto :goto_19

    :cond_26
    const/4 v13, 0x0

    :goto_19
    if-eqz p1, :cond_27

    const v1, 0x7f140449

    goto :goto_1a

    :cond_27
    const v1, 0x7f140444

    :goto_1a
    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f140336

    invoke-static {v11, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    move/from16 v3, v17

    const/4 v4, 0x0

    invoke-static {v4, v2, v11, v4, v3}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v4, v3, v11, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    move/from16 v20, v4

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v20, :cond_28

    if-ne v5, v4, :cond_29

    :cond_28
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$BookingReservationScreen$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v13, v3, v6}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$BookingReservationScreen$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v13, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6, v11, v5}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v5

    if-eqz v7, :cond_2a

    move-object/from16 v6, p0

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    goto :goto_1b

    :cond_2a
    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_2e

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    if-eqz v6, :cond_2e

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    if-eqz v6, :cond_2e

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    if-eqz v3, :cond_2b

    goto :goto_1d

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v21

    goto :goto_1c

    :cond_2c
    move-object/from16 v21, v3

    const/4 v7, -0x1

    :goto_1d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ltz v7, :cond_2d

    :goto_1e
    const/4 v6, 0x0

    goto :goto_20

    :cond_2d
    :goto_1f
    const/4 v3, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v21, v3

    goto :goto_1f

    :goto_20
    invoke-static {v5, v3, v11, v6}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->b(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "BookingReservationScreen"

    invoke-direct {v3, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v20, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v9, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v22, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_32

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_2f

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    :cond_2f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_21
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v10, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_30

    if-ne v6, v4, :cond_31

    :cond_30
    new-instance v6, La4;

    const/16 v4, 0xe

    invoke-direct {v6, v1, v4}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    new-instance v3, Lu;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v0, v2, v4}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x2a29ce68

    invoke-static {v0, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    new-instance v0, Lhg;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v2, p3

    move-object/from16 v6, p7

    move-object/from16 v5, p8

    move-object/from16 v3, v19

    const/16 v17, 0x1

    invoke-direct/range {v0 .. v7}, Lhg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLkotlin/Function;Ljava/lang/Object;I)V

    const v1, 0xdacaaa9

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    new-instance v0, Lg0;

    const/16 v1, 0xd

    invoke-direct {v0, v8, v1}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, -0xed07916

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    new-instance v0, Lig;

    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v12, p12

    move-object/from16 v2, p15

    move-object v15, v11

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v4, v20

    move-object/from16 v11, v21

    move-object/from16 v19, v22

    move-wide/from16 v22, v9

    move-object v9, v14

    move-object/from16 v14, p13

    move-object/from16 v10, p14

    invoke-direct/range {v0 .. v14}, Lig;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/lazy/LazyListState;ZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x6a16f9f3

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    const v29, 0x30000db0

    const/16 v30, 0x1b0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v28, v15

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_22

    :cond_32
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v18, 0x0

    throw v18

    :cond_33
    move-object v15, v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_22
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_34

    move-object v1, v0

    new-instance v0, Ljg;

    move/from16 v2, p1

    move/from16 v3, p2

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

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v31, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Ljg;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    move-object/from16 v1, v31

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_34
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move/from16 v6, p3

    const v0, 0x460a9b78

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v6

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    and-int/lit8 v4, v0, 0x13

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v8, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_2
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v4, -0x122e53f7

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Density;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-interface {v4, v8}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v11, :cond_3

    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Landroidx/compose/runtime/MutableState;

    and-int/lit8 v12, v0, 0x70

    if-ne v12, v5, :cond_4

    move v5, v10

    goto :goto_3

    :cond_4
    move v5, v9

    :goto_3
    and-int/lit8 v0, v0, 0xe

    if-ne v0, v3, :cond_5

    move v9, v10

    :cond_5
    or-int v0, v5, v9

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_6

    if-ne v3, v11, :cond_7

    :cond_6
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v1, p1

    move v3, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;-><init>(Ljava/lang/Integer;Landroidx/compose/foundation/lazy/LazyListState;ILandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, p1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Lf0;

    const/16 v4, 0x14

    invoke-direct {v3, p0, p1, v6, v4}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
