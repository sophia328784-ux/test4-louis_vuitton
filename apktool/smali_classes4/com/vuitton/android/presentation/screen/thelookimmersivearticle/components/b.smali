.class public final synthetic Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic j:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->c:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->i:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->j:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v2, v5

    invoke-interface {v13, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "TheLookImmersiveArticleDetailScreen$lambda$5"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    const/16 v20, 0x0

    if-eqz v10, :cond_a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v3}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v1, Lcf;

    const/16 v12, 0xd

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->c:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->d:Landroid/content/Context;

    invoke-direct {v1, v14, v15, v12}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v12, 0x4c1bb9d7    # 4.082262E7f

    invoke-static {v12, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const/16 v18, 0x6000

    const/16 v19, 0x3ffc

    move-object v1, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->b:Landroidx/compose/foundation/pager/PagerState;

    move v12, v4

    const/4 v4, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move-object/from16 v21, v7

    const/4 v7, 0x0

    move-object/from16 v22, v8

    const/4 v8, 0x0

    move-object/from16 v23, v9

    const/4 v9, 0x0

    move-object/from16 v24, v10

    const/4 v10, 0x0

    move-object/from16 v25, v11

    const/4 v11, 0x0

    move/from16 v26, v12

    const/4 v12, 0x0

    move-object/from16 v27, v16

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v28, v14

    const/4 v14, 0x0

    move-object/from16 v29, v17

    const/16 v17, 0x30

    move-object v0, v1

    move-object/from16 v33, v21

    move-object/from16 v32, v22

    move-object/from16 v30, v24

    move-object/from16 v34, v25

    move-object/from16 v1, v27

    move-object/from16 v35, v28

    move-object/from16 v31, v29

    invoke-static/range {v2 .. v19}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v16

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v1, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v7, v23

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_2
    move-object/from16 v7, v30

    goto :goto_3

    :cond_2
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    goto :goto_2

    :goto_3
    invoke-static {v13, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v31

    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v32

    move-object/from16 v6, v33

    invoke-static {v5, v13, v1, v13, v6}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, v34

    invoke-static {v13, v4, v1, v0, v3}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v35

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    iget v4, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    iget v8, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->g:Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_3

    if-ne v11, v12, :cond_4

    :cond_3
    new-instance v11, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$1$1;

    invoke-direct {v11, v4}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v10, v11

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->h:Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->i:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v11, v15

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v11, v15

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->j:Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v11, v11, v16

    move-object/from16 p1, v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v11, :cond_6

    if-ne v0, v12, :cond_5

    goto :goto_4

    :cond_5
    move-object v11, v14

    move-object v14, v15

    goto :goto_5

    :cond_6
    :goto_4
    new-instance v21, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;

    const/16 v27, 0x0

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v22, v4

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;I)V

    move-object/from16 v0, v21

    move-object/from16 v11, v24

    move-object/from16 v14, v25

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    move-object/from16 p2, v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_7

    if-ne v0, v12, :cond_8

    :cond_7
    new-instance v21, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;

    const/16 v27, 0x1

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v22, v4

    move-object/from16 v24, v11

    move-object/from16 v25, v14

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;I)V

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x6

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->e:Ljava/lang/String;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/b;->f:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object v3, v0

    invoke-static/range {v2 .. v14}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleLookStepperKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_6

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
