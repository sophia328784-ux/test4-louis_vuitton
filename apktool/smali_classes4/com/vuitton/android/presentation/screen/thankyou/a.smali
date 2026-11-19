.class public final synthetic Lcom/vuitton/android/presentation/screen/thankyou/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/a;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object/from16 v1, p0

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/thankyou/a;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v14, :cond_1

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    const v2, 0x7f140593

    invoke-static {v4, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    const v2, 0x7f140592

    invoke-static {v4, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    sget-object v17, Landroidx/compose/material3/SnackbarDuration;->Indefinite:Landroidx/compose/material3/SnackbarDuration;

    sget-object v21, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->FEEDBACK:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    new-instance v15, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    const/16 v22, 0x14

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;-><init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v3, :cond_2

    if-ne v5, v14, :cond_3

    :cond_2
    new-instance v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1;

    invoke-direct {v5, v1, v15, v7, v6}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_4

    if-ne v5, v14, :cond_5

    :cond_4
    new-instance v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$2$1;

    invoke-direct {v5, v7, v1, v0, v6}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_7

    if-ne v5, v14, :cond_6

    goto :goto_1

    :cond_6
    move-object v15, v6

    move-object v8, v7

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$3$1;

    const-string v10, "navigateToFeed()V"

    const/4 v11, 0x0

    move-object v3, v6

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    const-string v9, "navigateToFeed"

    move-object v15, v3

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v8, v7

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_2
    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_8

    if-ne v6, v14, :cond_9

    :cond_8
    new-instance v6, Lm21;

    const/16 v3, 0x9

    invoke-direct {v6, v8, v0, v3}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v0, 0x0

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->m(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v5

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet;

    if-nez v0, :cond_a

    const v0, -0x1a8a7940

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_6

    :cond_a
    const v1, -0x1a8a793f

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;

    if-eqz v0, :cond_16

    const v0, 0x4f384bc4    # 3.09197312E9f

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    if-eqz v1, :cond_b

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    goto :goto_3

    :cond_b
    move-object v6, v15

    :goto_3
    if-eqz v6, :cond_c

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    if-nez v0, :cond_f

    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    if-eqz v1, :cond_d

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    goto :goto_4

    :cond_d
    move-object v6, v15

    :goto_4
    if-eqz v6, :cond_e

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    goto :goto_5

    :cond_e
    new-instance v15, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v15

    :cond_f
    :goto_5
    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_10

    if-ne v3, v14, :cond_11

    :cond_10
    new-instance v15, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$5$1$1;

    const-string v20, "onFeedbackChange(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;)V"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-class v18, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    const-string v19, "onFeedbackChange"

    move-object/from16 v17, v1

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v15

    :cond_11
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_12

    if-ne v5, v14, :cond_13

    :cond_12
    new-instance v15, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$5$2$1;

    const-string v20, "submitFeedback()V"

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-class v18, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    const-string v19, "submitFeedback"

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v15

    :cond_13
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v2, v5

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_14

    if-ne v5, v14, :cond_15

    :cond_14
    new-instance v5, Lhv0;

    const/16 v3, 0x10

    invoke-direct {v5, v8, v3}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouFeedbackBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_16
    const v0, 0x28e2b7b

    invoke-static {v4, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
