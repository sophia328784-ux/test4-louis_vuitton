.class public final synthetic Lcom/vuitton/android/presentation/screen/story/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/story/StoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/story/StoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/story/a;->b:Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v5, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/story/a;->b:Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    const/4 v0, 0x3

    invoke-static {v10, v4, v4, v0}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->b(Landroidx/activity/ComponentActivity;ZZI)V

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->I()Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/story/StoryViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x0

    if-nez v1, :cond_1

    if-ne v2, v13, :cond_2

    :cond_1
    new-instance v2, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$1$1;

    invoke-direct {v2, v10, v6}, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/story/StoryActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->f:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    if-ne v2, v13, :cond_4

    :cond_3
    new-instance v2, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$2$1;

    invoke-direct {v2, v10, v11, v6}, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/story/StoryActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "onCreate$lambda$0$0"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->b:Z

    if-nez v1, :cond_7

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v3

    :goto_3
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-boolean v3, v2, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_8

    if-ne v4, v13, :cond_9

    :cond_8
    new-instance v4, Lp01;

    const/4 v2, 0x5

    invoke-direct {v4, v10, v11, v2}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x6

    const/16 v9, 0x14

    const/4 v2, 0x0

    move-object v7, v5

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v7

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x2553dcd8

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->I()Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    move-result-object v1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_a

    if-ne v3, v13, :cond_b

    :cond_a
    new-instance v14, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$3$2$1;

    const-string v19, "onClose(Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;)V"

    const/16 v20, 0x0

    const/4 v15, 0x1

    const-class v17, Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    const-string v18, "onClose"

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v14

    :cond_b
    check-cast v3, Lkotlin/reflect/KFunction;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_d

    if-ne v2, v13, :cond_c

    goto :goto_4

    :cond_c
    move-object v8, v10

    goto :goto_5

    :cond_d
    :goto_4
    new-instance v6, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$3$3$1;

    const-string v11, "openCtaStoryUrl(Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    move-object v8, v10

    const-string v10, "openCtaStoryUrl"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v6

    :goto_5
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->I()Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    move-result-object v1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_e

    if-ne v6, v13, :cond_f

    :cond_e
    new-instance v14, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$3$4$1;

    const-string v19, "storyOnNext()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    const-string v18, "storyOnNext"

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v14

    :cond_f
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->I()Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    move-result-object v1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_10

    if-ne v7, v13, :cond_11

    :cond_10
    new-instance v14, Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$3$5$1;

    const-string v19, "storyOnPrev()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    const-string v18, "storyOnPrev"

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v14

    :cond_11
    check-cast v7, Lkotlin/reflect/KFunction;

    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt;->a(Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_12
    const v0, 0x255953f6

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_7

    :cond_13
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v6

    :cond_14
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
