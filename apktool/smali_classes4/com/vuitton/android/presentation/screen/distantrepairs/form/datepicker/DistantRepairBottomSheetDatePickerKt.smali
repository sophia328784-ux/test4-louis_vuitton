.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;",
        "slotSelected",
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
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;->a:F

    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v2, p1

    move/from16 v9, p8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7d4606d9

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v9, 0x6

    const/4 v1, 0x2

    move-object/from16 v4, p0

    if-nez v0, :cond_1

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v9, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    goto :goto_4

    :cond_5
    move-object/from16 v3, p2

    :goto_4
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_5

    :cond_6
    const/16 v6, 0x400

    :goto_5
    or-int/2addr v0, v6

    goto :goto_6

    :cond_7
    move-object/from16 v5, p3

    :goto_6
    and-int/lit16 v6, v9, 0x6000

    move-object/from16 v8, p4

    if-nez v6, :cond_9

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_7

    :cond_8
    const/16 v6, 0x2000

    :goto_7
    or-int/2addr v0, v6

    :cond_9
    and-int/lit8 v6, p9, 0x20

    const/high16 v7, 0x30000

    if-eqz v6, :cond_b

    or-int/2addr v0, v7

    :cond_a
    move-object/from16 v7, p5

    goto :goto_9

    :cond_b
    and-int/2addr v7, v9

    if-nez v7, :cond_a

    move-object/from16 v7, p5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v11, 0x10000

    :goto_8
    or-int/2addr v0, v11

    :goto_9
    const/high16 v11, 0x180000

    and-int/2addr v11, v9

    if-nez v11, :cond_f

    and-int/lit8 v11, p9, 0x40

    if-nez v11, :cond_d

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x100000

    goto :goto_a

    :cond_d
    move-object/from16 v11, p6

    :cond_e
    const/high16 v12, 0x80000

    :goto_a
    or-int/2addr v0, v12

    goto :goto_b

    :cond_f
    move-object/from16 v11, p6

    :goto_b
    const v12, 0x92493

    and-int/2addr v12, v0

    const v13, 0x92492

    const/4 v14, 0x1

    if-eq v12, v13, :cond_10

    move v12, v14

    goto :goto_c

    :cond_10
    const/4 v12, 0x0

    :goto_c
    and-int/2addr v0, v14

    invoke-virtual {v10, v0, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v9, 0x1

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_e

    :cond_12
    :goto_d
    if-eqz v6, :cond_14

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_13

    new-instance v0, Lrt;

    invoke-direct {v0, v1}, Lrt;-><init>(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v7, v0

    :cond_14
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_15

    const v0, 0x7f140f53

    invoke-static {v10, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :cond_15
    :goto_e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_16

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v6, v0

    check-cast v6, Landroidx/compose/runtime/MutableState;

    const v0, 0x7f1408d0

    invoke-static {v10, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    const v0, 0x7f1408bd

    invoke-static {v10, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Llf;

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v8}, Llf;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x89cabdc

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/16 v23, 0x30

    const/16 v24, 0x543

    move-object/from16 v21, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "careservicesCalendar_title_text"

    const-string v15, "careservicesCalendar_description_text"

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "careservicesCalendar_cross_button"

    const/16 v19, 0x0

    const v22, 0x30c30c00

    invoke-static/range {v10 .. v24}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v5

    goto :goto_f

    :cond_17
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v6, v7

    move-object v7, v11

    :goto_f
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_18

    new-instance v0, Lgf;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v8, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lgf;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
