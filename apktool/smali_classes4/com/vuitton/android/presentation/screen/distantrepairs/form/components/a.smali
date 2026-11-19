.class public final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p10, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->c:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->k:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->j:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x10

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->j:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->f:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->k:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->c:Landroidx/compose/runtime/MutableState;

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v1, :pswitch_data_0

    check-cast v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v16, p3

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v16, 0x11

    if-eq v1, v4, :cond_0

    move v13, v14

    :cond_0
    and-int/lit8 v1, v16, 0x1

    invoke-interface {v15, v1, v13}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    if-nez v1, :cond_1

    const v0, 0x2a44b0c7

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_2

    :cond_1
    const v4, 0x2a44b0c8

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v13, :cond_2

    if-ne v12, v5, :cond_3

    :cond_2
    move-object/from16 v29, v15

    goto :goto_0

    :cond_3
    move-object/from16 v39, v12

    move-object v12, v10

    move-object v10, v15

    move-object/from16 v15, v39

    goto :goto_1

    :goto_0
    new-instance v15, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1;

    const-string v20, "removePhoto(I)V"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-class v18, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    const-string v19, "removePhoto"

    move-object/from16 v17, v10

    move-object/from16 v10, v29

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v17

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_1
    check-cast v15, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v15

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_4

    if-ne v15, v5, :cond_5

    :cond_4
    new-instance v15, Lhu;

    invoke-direct {v15, v9, v8, v14}, Lhu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v20, v15

    check-cast v20, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_6

    if-ne v15, v5, :cond_7

    :cond_6
    new-instance v15, Liu;

    invoke-direct {v15, v9, v8, v14}, Liu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v21, v15

    check-cast v21, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_8

    if-ne v9, v5, :cond_9

    :cond_8
    new-instance v9, Lsu;

    invoke-direct {v9, v12, v14}, Lsu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;I)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_a

    if-ne v13, v5, :cond_b

    :cond_a
    new-instance v13, Lsu;

    invoke-direct {v13, v12, v3}, Lsu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;I)V

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v23, v13

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_c

    if-ne v8, v5, :cond_d

    :cond_c
    new-instance v8, Lsu;

    invoke-direct {v8, v12, v2}, Lsu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;I)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_e

    if-ne v3, v5, :cond_f

    :cond_e
    new-instance v3, Lsu;

    const/4 v2, 0x4

    invoke-direct {v3, v12, v2}, Lsu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v26, v3

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_10

    if-ne v3, v5, :cond_11

    :cond_10
    new-instance v3, Lpp;

    const/4 v2, 0x5

    invoke-direct {v3, v12, v7, v11, v2}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v27, v3

    check-cast v27, Lkotlin/jvm/functions/Function0;

    const/16 v30, 0xc00

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->g:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->i:Lkotlin/jvm/functions/Function1;

    move-object/from16 v28, v0

    move-object v15, v1

    move-object/from16 v18, v2

    move-object/from16 v25, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v9

    move-object/from16 v29, v10

    invoke-static/range {v15 .. v30}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreenKt;->c(Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_12
    move-object/from16 v29, v15

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v15, p3

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v15, 0x11

    if-eq v1, v4, :cond_13

    move v1, v14

    goto :goto_3

    :cond_13
    move v1, v13

    :goto_3
    and-int/lit8 v4, v15, 0x1

    invoke-interface {v12, v4, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;

    if-nez v23, :cond_14

    const v0, -0x1b451527

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_14
    const v1, -0x1b451526

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_15

    if-ne v4, v5, :cond_16

    :cond_15
    new-instance v15, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1;

    const-string v20, "removePhoto(I)V"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-class v18, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    const-string v19, "removePhoto"

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v15

    :cond_16
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_17

    if-ne v4, v5, :cond_18

    :cond_17
    new-instance v4, Lhu;

    invoke-direct {v4, v9, v8, v13}, Lhu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v28, v4

    check-cast v28, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_19

    if-ne v4, v5, :cond_1a

    :cond_19
    new-instance v4, Liu;

    invoke-direct {v4, v9, v8, v13}, Liu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v29, v4

    check-cast v29, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1b

    if-ne v4, v5, :cond_1c

    :cond_1b
    new-instance v4, Lgu;

    invoke-direct {v4, v10, v14}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v30, v4

    check-cast v30, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1d

    if-ne v4, v5, :cond_1e

    :cond_1d
    new-instance v4, Lgu;

    invoke-direct {v4, v10, v3}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v31, v4

    check-cast v31, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1f

    if-ne v3, v5, :cond_20

    :cond_1f
    new-instance v3, Lgu;

    invoke-direct {v3, v10, v2}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v32, v3

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_21

    if-ne v2, v5, :cond_22

    :cond_21
    new-instance v2, Lgu;

    const/4 v1, 0x4

    invoke-direct {v2, v10, v1}, Lgu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v34, v2

    check-cast v34, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_23

    if-ne v2, v5, :cond_24

    :cond_23
    new-instance v2, Lpp;

    const/4 v1, 0x4

    invoke-direct {v2, v10, v7, v11, v1}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v35, v2

    check-cast v35, Lkotlin/jvm/functions/Function0;

    const/16 v38, 0xc00

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->g:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/a;->i:Lkotlin/jvm/functions/Function1;

    move-object/from16 v36, v0

    move-object/from16 v26, v1

    move-object/from16 v33, v2

    move-object/from16 v37, v12

    invoke-static/range {v23 .. v38}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreenKt;->c(Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_25
    move-object/from16 v37, v12

    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
