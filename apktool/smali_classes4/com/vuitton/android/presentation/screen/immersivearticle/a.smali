.class public final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/a;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v15, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/2addr v0, v15

    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/a;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_1

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, v13}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/content/Context;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->h:Z

    if-eqz v4, :cond_4

    const v4, -0x4f1ededa

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2

    if-ne v5, v2, :cond_3

    :cond_2
    new-instance v5, Lu20;

    invoke-direct {v5, v6, v3}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v13, v3}, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotListenerKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    const v4, -0x4f1bb402

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    const/4 v12, 0x0

    if-nez v5, :cond_5

    if-ne v7, v2, :cond_6

    :cond_5
    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$2$1;

    invoke-direct {v7, v6, v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_7

    if-ne v7, v2, :cond_8

    :cond_7
    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$3$1;

    invoke-direct {v7, v6, v0, v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "onCreate$lambda$0$0"

    invoke-direct {v4, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object/from16 v16, v4

    goto :goto_3

    :cond_a
    move-object/from16 v16, v12

    :goto_3
    if-nez v16, :cond_b

    const v1, 0x7841cc35

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    move-object/from16 v17, v0

    move-object/from16 v28, v2

    move/from16 v18, v3

    move-object/from16 v27, v6

    move-object/from16 v16, v11

    move-object v15, v14

    goto/16 :goto_4

    :cond_b
    const v4, 0x7841cc36

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object/from16 v17, v0

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->u:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v4}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v4}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, ""

    :cond_c
    move-object/from16 v20, v4

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->A:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v22

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_d

    if-ne v5, v2, :cond_e

    :cond_d
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$1$1;

    const-string v9, "exitWithFade()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-class v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v8, "exitWithFade"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_e
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object/from16 v23, v5

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_f

    if-ne v5, v2, :cond_10

    :cond_f
    new-instance v5, Lu20;

    invoke-direct {v5, v6, v15}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v24, v5

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_11

    if-ne v5, v2, :cond_12

    :cond_11
    new-instance v5, Ll00;

    const/4 v4, 0x7

    invoke-direct {v5, v6, v4}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v25, v5

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_13

    if-ne v5, v2, :cond_14

    :cond_13
    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/b;

    invoke-direct {v5, v1, v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v1, v5

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_15

    if-ne v5, v2, :cond_16

    :cond_15
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$5$1;

    const-string v9, "onNavigateFromImmersiveArticle(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;)V"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v8, "onNavigateFromImmersiveArticle"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_16
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object/from16 v26, v5

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_17

    if-ne v5, v2, :cond_18

    :cond_17
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$6$1;

    const-string v9, "onProductWishlistClick(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;)V"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v8, "onProductWishlistClick"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_18
    check-cast v5, Lkotlin/reflect/KFunction;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v4, v14

    const/4 v14, 0x0

    move-object v10, v1

    move-object/from16 v28, v2

    move-object v15, v4

    move-object v12, v5

    move-object/from16 v27, v6

    move-object/from16 v6, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v18, v3

    move-object/from16 v16, v11

    move-object/from16 v3, v20

    move-object/from16 v11, v26

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v4, v16

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_19

    move-object/from16 v1, v28

    if-ne v2, v1, :cond_1a

    goto :goto_5

    :cond_19
    move-object/from16 v1, v28

    :goto_5
    new-instance v2, Lef;

    const/4 v3, 0x6

    invoke-direct {v2, v4, v3}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->a:Z

    if-nez v2, :cond_1c

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    if-eqz v2, :cond_1b

    goto :goto_6

    :cond_1b
    move/from16 v15, v18

    goto :goto_7

    :cond_1c
    :goto_6
    const/4 v15, 0x1

    :goto_7
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->b:Z

    move-object/from16 v6, v27

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_1d

    if-ne v4, v1, :cond_1e

    :cond_1d
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$3$1;

    const-string v9, "exitWithFade()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-class v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v8, "exitWithFade"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v13

    move v1, v15

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_8

    :cond_1f
    move-object v4, v12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v4

    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
