.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/compose/runtime/MutableState;II)V
    .locals 0

    iput p4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->c:Landroidx/compose/runtime/MutableState;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->d:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->c:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/detail/a;->e:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->K:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v3, :cond_0

    move v7, v8

    :cond_0
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_1

    if-ne v8, v4, :cond_2

    :cond_1
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v8, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "FORMATTED_AMOUNT"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    :cond_4
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "goToCareServices()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;

    const-string v13, "goToCareServices"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_6
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_7

    if-ne v8, v4, :cond_8

    :cond_7
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "goToCareServices()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;

    const-string v13, "goToCareServices"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v9

    :cond_8
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_9

    if-ne v8, v4, :cond_a

    :cond_9
    new-instance v8, Lzd;

    const/16 v3, 0xe

    invoke-direct {v8, v11, v5, v6, v3}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v16, v8

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x0

    move-object/from16 v17, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v7

    invoke-static/range {v12 .. v18}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairPaymentFailedComposableKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_b
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    and-int/lit8 v10, v1, 0x3

    if-eq v10, v3, :cond_c

    move v7, v8

    :cond_c
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_d

    if-ne v8, v4, :cond_e

    :cond_d
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v8, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    move-result-object v1

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object v3

    iget-object v7, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->H:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iget-object v7, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->M:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v7, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->N:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    if-eqz v7, :cond_f

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    :cond_f
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_10

    if-ne v8, v4, :cond_11

    :cond_10
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$2$1;

    const-string v12, "onRepairCancelled()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onRepairCancelled"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_11
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v8

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_12

    if-ne v8, v4, :cond_13

    :cond_12
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$3$1;

    const-string v12, "onRepairCancelled()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onRepairCancelled"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_13
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v8

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_14

    if-ne v8, v4, :cond_15

    :cond_14
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$4$1;

    const-string v12, "onModifyDelivery(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onModifyDelivery"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_15
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v8

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_16

    if-ne v8, v4, :cond_17

    :cond_16
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$5$1;

    const-string v12, "onAcceptEstimateClick-Bh2oOZo(Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onAcceptEstimateClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_17
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_18

    if-ne v8, v4, :cond_19

    :cond_18
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$6$1;

    const-string v12, "onTrackMyShipmentClick(Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onTrackMyShipmentClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_19
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_1a

    if-ne v8, v4, :cond_1b

    :cond_1a
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$7$1;

    const-string v12, "onConfirmAddressClick()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onConfirmAddressClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_1b
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v21, v8

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_1c

    if-ne v8, v4, :cond_1d

    :cond_1c
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$8$1;

    const-string v12, "onCancelClick()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    const-string v11, "onCancelClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_1d
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_1e

    if-ne v10, v4, :cond_1f

    :cond_1e
    new-instance v10, Lzd;

    const/16 v4, 0xd

    invoke-direct {v10, v9, v5, v6, v4}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v22, v10

    check-cast v22, Lkotlin/jvm/functions/Function1;

    const/16 v24, 0x0

    move-object/from16 v23, v0

    move-object v10, v1

    move-object v11, v3

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object v14, v2

    move-object/from16 v21, v8

    invoke-static/range {v10 .. v24}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_20
    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$Companion;

    and-int/lit8 v10, v1, 0x3

    if-eq v10, v3, :cond_21

    move v7, v8

    :cond_21
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_22

    if-ne v8, v4, :cond_23

    :cond_22
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v8, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v1

    invoke-virtual {v9}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object v2

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v3}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->M:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_24

    if-ne v8, v4, :cond_25

    :cond_24
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$2$1;

    const-string v12, "onRepairCancelled()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onRepairCancelled"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_25
    move-object v14, v8

    check-cast v14, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_26

    if-ne v8, v4, :cond_27

    :cond_26
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$3$1;

    const-string v12, "onRepairCancelled()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onRepairCancelled"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_27
    move-object v15, v8

    check-cast v15, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_28

    if-ne v8, v4, :cond_29

    :cond_28
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$4$1;

    const-string v12, "onModifyDelivery-7ixY91Q(Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onModifyDelivery"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_29
    move-object/from16 v16, v8

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_2a

    if-ne v8, v4, :cond_2b

    :cond_2a
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$5$1;

    const-string v12, "onAcceptEstimateClick-Bh2oOZo(Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onAcceptEstimateClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_2b
    move-object/from16 v17, v8

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_2c

    if-ne v8, v4, :cond_2d

    :cond_2c
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$6$1;

    const-string v12, "onTrackMyShipmentClick(Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onTrackMyShipmentClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_2d
    move-object/from16 v18, v8

    check-cast v18, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_2e

    if-ne v8, v4, :cond_2f

    :cond_2e
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$7$1;

    const-string v12, "onConfirmAddressClick()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onConfirmAddressClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_2f
    move-object/from16 v19, v8

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_30

    if-ne v8, v4, :cond_31

    :cond_30
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$8$1;

    const-string v12, "onCancelClick()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    const-string v11, "onCancelClick"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_31
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object v13, v14

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object v14, v15

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object/from16 v15, v16

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v17

    check-cast v16, Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v18

    check-cast v17, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v19

    check-cast v18, Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_32

    if-ne v8, v4, :cond_33

    :cond_32
    new-instance v8, Lzd;

    const/16 v4, 0xc

    invoke-direct {v8, v9, v5, v6, v4}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_33
    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x0

    move-object/from16 v22, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static/range {v10 .. v23}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_34
    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v3, :cond_35

    move v3, v8

    goto :goto_3

    :cond_35
    move v3, v7

    :goto_3
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_36

    if-ne v10, v4, :cond_37

    :cond_36
    new-instance v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v10, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_37
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object v2

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_38

    if-ne v9, v4, :cond_39

    :cond_38
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_39
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_3a

    if-ne v10, v4, :cond_3b

    :cond_3a
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "onModifyAddressClicked()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    const-string v13, "onModifyAddressClicked"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_3b
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v10

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_3c

    if-ne v10, v4, :cond_3d

    :cond_3c
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$4$1;

    const-string v14, "onModifyBillingAddressClicked()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    const-string v13, "onModifyBillingAddressClicked"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_3d
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_3e

    if-ne v12, v4, :cond_3f

    :cond_3e
    new-instance v12, Lwr0;

    invoke-direct {v12, v11, v7}, Lwr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    move-object/from16 v17, v12

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_40

    if-ne v9, v4, :cond_41

    :cond_40
    new-instance v9, Lwr0;

    invoke-direct {v9, v11, v8}, Lwr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_41
    move-object/from16 v18, v9

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_42

    if-ne v8, v4, :cond_43

    :cond_42
    new-instance v8, Lxo0;

    const/16 v7, 0x9

    invoke-direct {v8, v11, v7}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_43
    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_44

    if-ne v8, v4, :cond_45

    :cond_44
    new-instance v8, Lzd;

    const/16 v4, 0xb

    invoke-direct {v8, v11, v5, v6, v4}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_45
    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x0

    move-object/from16 v21, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    invoke-static/range {v12 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_46
    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v3, :cond_47

    move v3, v8

    goto :goto_5

    :cond_47
    move v3, v7

    :goto_5
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_48

    if-ne v10, v4, :cond_49

    :cond_48
    new-instance v10, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v10, v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object v2

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_4a

    if-ne v9, v4, :cond_4b

    :cond_4a
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4b
    move-object v3, v9

    check-cast v3, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_4c

    if-ne v10, v4, :cond_4d

    :cond_4c
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "onModifyShippingAddressClicked()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    const-string v13, "onModifyShippingAddressClicked"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_4d
    move-object/from16 v16, v10

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_4e

    if-ne v10, v4, :cond_4f

    :cond_4e
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$onCreateView$1$1$1$1$4$1;

    const-string v14, "onModifyBillingAddressClicked()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    const-string v13, "onModifyBillingAddressClicked"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_4f
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object/from16 v15, v16

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v10

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_50

    if-ne v9, v4, :cond_51

    :cond_50
    new-instance v9, Lsr0;

    invoke-direct {v9, v11, v7}, Lsr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_51
    move-object/from16 v17, v9

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_52

    if-ne v7, v4, :cond_53

    :cond_52
    new-instance v7, Lsr0;

    invoke-direct {v7, v11, v8}, Lsr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_53
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_54

    if-ne v7, v4, :cond_55

    :cond_54
    new-instance v7, Lxo0;

    const/16 v3, 0x8

    invoke-direct {v7, v11, v3}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_55
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_56

    if-ne v7, v4, :cond_57

    :cond_56
    new-instance v7, Lzd;

    const/16 v3, 0xa

    invoke-direct {v7, v11, v5, v6, v3}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_57
    move-object/from16 v20, v7

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x0

    move-object/from16 v21, v0

    move-object v12, v1

    move-object v13, v2

    invoke-static/range {v12 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressBffComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_58
    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
