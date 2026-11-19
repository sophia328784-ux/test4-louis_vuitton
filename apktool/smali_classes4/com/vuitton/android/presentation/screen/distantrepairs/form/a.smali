.class public final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;
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

    iput p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->c:Landroidx/compose/runtime/MutableState;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x1

    iget v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->d:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->c:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/a;->e:Landroidx/fragment/app/Fragment;

    packed-switch v1, :pswitch_data_0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v4, :cond_0

    move v3, v6

    :cond_0
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_1

    if-ne v6, v5, :cond_2

    :cond_1
    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v6, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    move-result-object v1

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v5, :cond_4

    :cond_3
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v9

    :cond_4
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5

    if-ne v6, v5, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "addToCalendar()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    const-string v13, "addToCalendar"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v9

    :cond_6
    check-cast v6, Lkotlin/reflect/KFunction;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_7

    if-ne v9, v5, :cond_8

    :cond_7
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$4$1;

    const-string v14, "goToCareService()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    const-string v13, "goToCareService"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_9

    if-ne v9, v5, :cond_a

    :cond_9
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$5$1;

    const-string v14, "takePicture(I)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    const-string v13, "takePicture"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v9

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v3, v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_b

    if-ne v9, v5, :cond_c

    :cond_b
    new-instance v9, Lzd;

    const/4 v3, 0x4

    invoke-direct {v9, v11, v7, v8, v3}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v18, v9

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_d

    if-ne v7, v5, :cond_e

    :cond_d
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$onCreateView$1$1$1$1$7$1;

    const-string v14, "onUrlClicked(Ljava/lang/String;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    const-string v13, "onUrlClicked"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_e
    check-cast v7, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v20, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v4

    move-object v15, v6

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_f
    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v4, :cond_10

    move v3, v6

    :cond_10
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_11

    if-ne v6, v5, :cond_12

    :cond_11
    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v6, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v16

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_13

    if-ne v2, v5, :cond_14

    :cond_13
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_14
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_15

    if-ne v2, v5, :cond_16

    :cond_15
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "addToCalendar()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    const-string v13, "addToCalendar"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_16
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v2

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_17

    if-ne v2, v5, :cond_18

    :cond_17
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$4$1;

    const-string v14, "goToCareService()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    const-string v13, "goToCareService"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_18
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v20, v2

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_19

    if-ne v2, v5, :cond_1a

    :cond_19
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$5$1;

    const-string v14, "takePicture(I)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    const-string v13, "takePicture"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_1a
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1b

    if-ne v2, v5, :cond_1c

    :cond_1b
    new-instance v2, Lzd;

    const/4 v1, 0x3

    invoke-direct {v2, v11, v7, v8, v1}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1d

    if-ne v2, v5, :cond_1e

    :cond_1d
    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$onCreateView$1$1$1$1$7$1;

    const-string v6, "onUrlClicked(Ljava/lang/String;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    const-string v5, "onUrlClicked"

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_1e
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v20, v0

    move-object/from16 v19, v2

    move-object/from16 v18, v8

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBffComposableKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1f
    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
