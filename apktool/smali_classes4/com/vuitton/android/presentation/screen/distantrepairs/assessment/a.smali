.class public final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;FFI)V
    .locals 0

    iput p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->e:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->c:F

    iput p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->d:F

    iget v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->c:F

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/a;->e:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v7, :cond_0

    move v3, v8

    :cond_0
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1

    if-ne v9, v4, :cond_2

    :cond_1
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v9, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object v1

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v9

    :cond_4
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_5

    if-ne v8, v4, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "goToCareService()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    const-string v13, "goToCareService"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v9

    :cond_6
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_7

    if-ne v9, v4, :cond_8

    :cond_7
    new-instance v9, Lss;

    const/4 v2, 0x5

    invoke-direct {v9, v11, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_9

    if-ne v10, v4, :cond_a

    :cond_9
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1;

    const-string v14, "openAddressForm(Ljava/lang/String;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    const-string v13, "openAddressForm"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_a
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v10

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_b

    if-ne v10, v4, :cond_c

    :cond_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$6$1;

    const-string v14, "onDeclineAssessment()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    const-string v13, "onDeclineAssessment"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_c
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v10

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_d

    if-ne v10, v4, :cond_e

    :cond_d
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$7$1;

    const-string v14, "openCancellationReasons()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    const-string v13, "openCancellationReasons"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_e
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v10

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_f

    if-ne v10, v4, :cond_10

    :cond_f
    new-instance v10, Llk;

    invoke-direct {v10, v6, v5, v7, v11}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v19, v10

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v20, v0

    move-object v12, v1

    move-object v15, v2

    move-object v13, v3

    move-object v14, v8

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentComposableKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_11
    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->N:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$Companion;

    and-int/lit8 v9, v1, 0x3

    if-eq v9, v7, :cond_12

    move v3, v8

    :cond_12
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_13

    if-ne v9, v4, :cond_14

    :cond_13
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$1$1;

    invoke-direct {v9, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object v1

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_15

    if-ne v3, v4, :cond_16

    :cond_15
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$2$1;

    const-string v14, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v13, "onNavigateBackPressed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v9

    :cond_16
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_17

    if-ne v7, v4, :cond_18

    :cond_17
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$3$1;

    const-string v14, "goToCareService()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    const-string v13, "goToCareService"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_18
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_19

    if-ne v9, v4, :cond_1a

    :cond_19
    new-instance v9, Lss;

    const/4 v2, 0x4

    invoke-direct {v9, v11, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1b

    if-ne v10, v4, :cond_1c

    :cond_1b
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$5$1;

    const-string v14, "openAddressForm(Ljava/lang/String;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    const-string v13, "openAddressForm"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_1c
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v10

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1d

    if-ne v10, v4, :cond_1e

    :cond_1d
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$6$1;

    const-string v14, "onDeclineAssessment()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    const-string v13, "onDeclineAssessment"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_1e
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v10

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1f

    if-ne v10, v4, :cond_20

    :cond_1f
    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$onCreateView$1$1$1$1$7$1;

    const-string v14, "openCancellationReasons()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    const-string v13, "openCancellationReasons"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_20
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v10

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_21

    if-ne v10, v4, :cond_22

    :cond_21
    new-instance v10, Llk;

    invoke-direct {v10, v6, v5, v8, v11}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v19, v10

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v20, v0

    move-object v12, v1

    move-object v15, v2

    move-object v13, v3

    move-object v14, v7

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_23
    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
