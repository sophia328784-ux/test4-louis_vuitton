.class public final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;

.field public final synthetic h:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->g:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->h:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {v13}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x7

    invoke-static {v1, v2, v10, v3, v6}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v13}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v2, v10, v3, v6}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Landroid/content/ClipboardManager;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v11, :cond_1

    new-instance v9, Lp;

    invoke-direct {v9, v3}, Lp;-><init>(I)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x30

    const/4 v14, 0x5

    invoke-static {v12, v14, v10, v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v9

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_2

    if-ne v15, v11, :cond_3

    :cond_2
    new-instance v15, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$1$1;

    invoke-direct {v15, v6, v9, v2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_4

    new-instance v2, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v2}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v15, v2

    check-cast v15, Landroidx/compose/material3/SnackbarHostState;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v14, v14, v16

    move/from16 v16, v14

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->c:Landroid/content/Context;

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v16, :cond_5

    if-ne v5, v11, :cond_6

    :cond_5
    move-object v5, v11

    goto :goto_1

    :cond_6
    move-object v2, v11

    move-object v11, v5

    move-object v5, v2

    move-object v2, v12

    move-object/from16 v18, v15

    goto :goto_2

    :goto_1
    new-instance v11, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$2$1;

    const/16 v16, 0x0

    move-object/from16 v28, v13

    move-object v13, v2

    move-object v2, v12

    move-object/from16 v12, v28

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lkotlin/coroutines/Continuation;)V

    move-object v13, v12

    move-object/from16 v18, v15

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_2
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_8

    if-ne v12, v5, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v20, v14

    goto :goto_4

    :cond_8
    :goto_3
    new-instance v11, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$3$1;

    const-string v16, "onPromptChanged(Ljava/lang/String;)V"

    const/16 v17, 0x0

    const/4 v12, 0x1

    move-object v15, v14

    const-class v14, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    move-object/from16 v19, v15

    const-string v15, "onPromptChanged"

    move-object/from16 v20, v19

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v12, v11

    :goto_4
    move-object/from16 v19, v12

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_a

    if-ne v12, v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v12

    move-object v12, v13

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v11, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$4$1;

    const-string v16, "onMessageAnimationEnd(Ljava/lang/String;)V"

    const/16 v17, 0x0

    const/4 v12, 0x1

    const-class v14, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    const-string v15, "onMessageAnimationEnd"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v13

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_6
    check-cast v11, Lkotlin/reflect/KFunction;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_b

    if-ne v14, v5, :cond_c

    :cond_b
    new-instance v14, Li;

    const/4 v13, 0x3

    invoke-direct {v14, v13, v12, v7}, Li;-><init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_d

    if-ne v15, v5, :cond_e

    :cond_d
    new-instance v15, Ll;

    invoke-direct {v15, v12, v7}, Ll;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v15, Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_f

    if-ne v3, v5, :cond_10

    :cond_f
    new-instance v3, Lj;

    invoke-direct {v3, v13, v7, v4}, Lj;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v4, v13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_11

    if-ne v13, v5, :cond_12

    :cond_11
    new-instance v13, Li;

    const/4 v4, 0x4

    invoke-direct {v13, v4, v12, v7}, Li;-><init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v4, v4, v16

    move-object/from16 v16, v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_13

    if-ne v2, v5, :cond_14

    :cond_13
    new-instance v2, Li;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v12, v7}, Li;-><init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v17, v17, v21

    move-object/from16 v21, v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v17, :cond_16

    if-ne v2, v5, :cond_15

    goto :goto_7

    :cond_15
    move-object/from16 v17, v3

    goto :goto_8

    :cond_16
    :goto_7
    new-instance v2, Lj;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-direct {v2, v4, v7, v3}, Lj;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;I)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->g:Lkotlin/jvm/functions/Function3;

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v22

    or-int v4, v4, v22

    move-object/from16 v22, v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_17

    if-ne v2, v5, :cond_18

    :cond_17
    new-instance v2, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$11$1;

    invoke-direct {v2, v3, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatComposableKt$AICompanionChatComposable$1$11$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_19

    if-ne v3, v5, :cond_1a

    :cond_19
    new-instance v3, Lk;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v8, v4}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1b

    if-ne v4, v5, :cond_1c

    :cond_1b
    new-instance v4, Ll;

    const/4 v1, 0x0

    invoke-direct {v4, v1, v12, v7}, Ll;-><init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->h:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v8, v8, v20

    move-object/from16 v20, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v8, :cond_1e

    if-ne v3, v5, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v8, 0x0

    goto :goto_a

    :cond_1e
    :goto_9
    new-instance v3, Lm;

    const/4 v8, 0x0

    invoke-direct {v3, v1, v2, v8}, Lm;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1f

    if-ne v2, v5, :cond_20

    :cond_1f
    new-instance v2, Li;

    const/4 v1, 0x2

    invoke-direct {v2, v1, v12, v7}, Li;-><init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v18

    const/16 v18, 0x30

    move-object/from16 v24, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->f:Lkotlin/jvm/functions/Function1;

    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v12

    move-object v7, v13

    move-object v5, v15

    move-object/from16 v12, v20

    move-object/from16 v8, v21

    move-object/from16 v0, v24

    move-object v15, v3

    move-object v13, v4

    move-object v4, v14

    move-object/from16 v3, v19

    move-object/from16 v19, v9

    move-object v14, v11

    move-object/from16 v9, v22

    move-object/from16 v11, v23

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatScreenKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v10, v17

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    const v1, 0x3080f2af

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f140319

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v12, v25

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v13, v26

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_21

    move-object/from16 v5, v27

    if-ne v3, v5, :cond_22

    :cond_21
    new-instance v3, Lq;

    const/4 v4, 0x0

    invoke-direct {v3, v12, v13, v0, v4}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v11, Lr;

    const/16 v16, 0x0

    move-object/from16 v3, p0

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/a;->i:Lkotlin/jvm/functions/Function0;

    move-object v15, v0

    invoke-direct/range {v11 .. v16}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x464257b6

    invoke-static {v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v3, 0x6000000

    or-int v11, v0, v3

    const/16 v12, 0xf1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v19

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_23
    const v0, 0x309ed65b

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
