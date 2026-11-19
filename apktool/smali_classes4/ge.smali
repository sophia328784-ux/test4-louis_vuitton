.class public final synthetic Lge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLjava/util/List;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iput-object p2, p0, Lge;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object p3, p0, Lge;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lge;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lge;->f:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lge;->g:Z

    iput-object p7, p0, Lge;->h:Ljava/util/List;

    iput-object p8, p0, Lge;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lge;->j:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object p10, p0, Lge;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lge;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lge;->m:Landroid/content/Context;

    iput-object p13, p0, Lge;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lge;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lge;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lge;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lge;->r:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lge;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v3, v0, Lge;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    const v2, -0x6b5f0755

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->s:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    const/4 v9, 0x0

    iget-object v5, v0, Lge;->d:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Lge;->e:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lge;->f:Lkotlin/jvm/functions/Function0;

    move-object v8, v13

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyLooksBottomBarKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_1b

    :cond_0
    move-object v2, v3

    const v3, -0x6b5535e9

    const-string v14, "BeautyVtoBottomBar$lambda$0$1$1"

    invoke-static {v3, v13, v14}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v15, 0x0

    invoke-static {v4, v5, v13, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1d

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v11, 0x1f4

    const/4 v12, 0x6

    move-object/from16 p1, v3

    invoke-static {v11, v15, v9, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    move-object/from16 p2, v4

    const/16 v4, 0xe

    invoke-static {v3, v9, v9, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    invoke-static {v11, v15, v9, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    invoke-static {v11, v9, v9, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v16, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/a;

    iget-object v11, v0, Lge;->h:Ljava/util/List;

    iget-object v9, v0, Lge;->i:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lge;->j:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v15, v0, Lge;->k:Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v3

    iget-object v3, v0, Lge;->l:Lkotlin/jvm/functions/Function0;

    move-object/from16 v21, v3

    move-object/from16 v18, v9

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/a;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v3, v16

    const v9, 0x2ae80a5

    invoke-static {v9, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const v11, 0x1b6d86

    const/4 v12, 0x0

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object v15, v7

    move-object v7, v4

    iget-boolean v4, v0, Lge;->g:Z

    move-object/from16 v16, v8

    const-string v8, "Dual color slider animation"

    move-object/from16 v18, v1

    move-object v1, v5

    move-object v0, v6

    move-object/from16 v23, v10

    move-object v10, v13

    move-object v13, v15

    move-object/from16 v15, v16

    move-object/from16 v6, v22

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 p1, v2

    move-object/from16 v2, p2

    invoke-static/range {v3 .. v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v10

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v30, 0x7

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v25, v3

    move/from16 v29, v4

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->f:Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v6, 0x36

    invoke-static {v4, v5, v8, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v8, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    invoke-static {v8, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v8, v0, v8, v1}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v23

    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_3

    sget v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v5, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Landroidx/compose/ui/unit/Dp;

    iget v3, v5, Landroidx/compose/ui/unit/Dp;->b:F

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v10, 0x6

    invoke-static {v7, v9, v8, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-eqz v16, :cond_1b

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v8, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v8, v0, v8, v1}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v8, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v5, v18

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-boolean v11, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->k:Z

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    move/from16 v16, v3

    if-eqz v10, :cond_5

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :goto_3
    move-object/from16 p2, v9

    goto :goto_4

    :cond_5
    move-object/from16 v3, v17

    goto :goto_3

    :goto_4
    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-object/from16 v18, v10

    move-object/from16 v19, v14

    if-eq v3, v9, :cond_c

    const v3, -0x3b6a88ef

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-boolean v3, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->y:Z

    if-eqz v3, :cond_7

    const v3, -0x3b69630a

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->STACKING:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne v12, v3, :cond_6

    const v3, -0x3b67bde0

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_6
    const v3, -0x3b658402

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->m1:I

    const v14, 0x7f140384

    invoke-static {v8, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v3

    sget v3, Lcom/vuitton/android/designkit/ui/theme/IconSize;->c:F

    move-object/from16 v22, v6

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    move-object v3, v15

    const/4 v15, 0x0

    move/from16 v23, v16

    const/16 v16, 0x3e1

    move-object/from16 v24, v3

    const/4 v3, 0x0

    move-object/from16 v25, v13

    move-object v13, v8

    const/4 v8, 0x0

    move-object/from16 v26, v9

    const/4 v9, 0x0

    move-object/from16 v27, v5

    move v5, v10

    const/4 v10, 0x0

    move/from16 v28, v11

    const/4 v11, 0x0

    move-object/from16 v29, v0

    move-object/from16 v30, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lge;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 v33, p2

    move-object/from16 v31, v1

    move-object/from16 p2, v2

    move-object/from16 v32, v4

    move-object/from16 v1, v18

    move-object/from16 v35, v19

    move-object/from16 v4, v21

    move-object/from16 v36, v22

    move-object/from16 v34, v26

    move-object/from16 v2, v30

    const/4 v0, 0x1

    move-object/from16 v18, v7

    move-object v7, v14

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_7
    move-object/from16 v33, p2

    move-object/from16 v29, v0

    move-object/from16 v31, v1

    move-object/from16 p2, v2

    move-object/from16 v32, v4

    move-object/from16 v27, v5

    move-object/from16 v36, v6

    move-object/from16 v34, v9

    move/from16 v28, v11

    move-object v2, v12

    move-object/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v23, v16

    move-object/from16 v1, v18

    move-object/from16 v35, v19

    const/4 v0, 0x1

    const/4 v14, 0x0

    move-object/from16 v18, v7

    move-object v13, v8

    const v3, -0x3b5d3673

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    if-eqz v1, :cond_b

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->e:Z

    if-ne v3, v0, :cond_b

    const v3, -0x3b5a95e5

    move-object/from16 v4, v35

    invoke-static {v3, v13, v4}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne v2, v5, :cond_8

    const v2, -0x3b575560

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_8
    const v2, -0x3b551b82

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->C0:I

    const v6, 0x7f140382

    invoke-static {v13, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    sget v6, Lcom/vuitton/android/designkit/ui/theme/IconSize;->c:F

    new-instance v8, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v8, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    move-object/from16 v6, v27

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v10, p0

    iget-object v11, v10, Lge;->p:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_9

    move-object/from16 v9, v36

    if-ne v12, v9, :cond_a

    goto :goto_8

    :cond_9
    move-object/from16 v9, v36

    :goto_8
    new-instance v12, Ll0;

    const/16 v15, 0x17

    invoke-direct {v12, v6, v11, v15}, Ll0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    const/16 v16, 0x3e0

    move-object/from16 v27, v6

    move-object v6, v8

    const/4 v8, 0x0

    move-object/from16 v22, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p4, v1

    move-object v0, v4

    move-object/from16 v1, v22

    move-object/from16 v37, v27

    move-object v4, v2

    move-object/from16 v2, p0

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :cond_b
    move-object/from16 v2, p0

    move-object/from16 p4, v1

    move-object/from16 v37, v27

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const v3, -0x3b4952b3

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_a

    :cond_c
    move-object/from16 v33, p2

    move-object/from16 v29, v0

    move-object/from16 v31, v1

    move-object/from16 p2, v2

    move-object/from16 v32, v4

    move-object/from16 v37, v5

    move-object v1, v6

    move-object/from16 v34, v9

    move/from16 v28, v11

    move-object/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v23, v16

    move-object/from16 p4, v18

    move-object/from16 v0, v19

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v18, v7

    move-object v13, v8

    const v3, -0x3b48cef3

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v2, Lge;->m:Landroid/content/Context;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v2, Lge;->n:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_d

    if-ne v7, v1, :cond_e

    :cond_d
    new-instance v7, Lj3;

    const/4 v1, 0x1

    invoke-direct {v7, v4, v6, v1}, Lj3;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v3, v1, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v1, v13, v3, v6, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move/from16 v3, v23

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v3, v18

    move-object/from16 v4, v33

    const/4 v10, 0x6

    invoke-static {v3, v4, v13, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v6

    if-eqz v6, :cond_f

    move-object/from16 v15, v25

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_b
    move-object/from16 v15, v24

    goto :goto_c

    :cond_f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    goto :goto_b

    :goto_c
    invoke-static {v13, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, p2

    invoke-static {v13, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v29

    move-object/from16 v5, v31

    invoke-static {v4, v13, v3, v13, v5}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v32

    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz p4, :cond_10

    move-object/from16 v1, p4

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :goto_d
    move-object/from16 v1, v34

    goto :goto_e

    :cond_10
    move-object/from16 v9, v17

    goto :goto_d

    :goto_e
    if-eq v9, v1, :cond_19

    const v1, 0x2528373

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v1

    iget-object v4, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    if-eqz v28, :cond_11

    const v1, 0x254e1c4

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->V:I

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_f
    move v5, v1

    goto :goto_10

    :cond_11
    const v1, 0x256e84a

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :goto_10
    const-string v1, ""

    if-eqz v28, :cond_14

    const v3, 0x25ad5bb

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz p1, :cond_12

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v3, :cond_12

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    goto :goto_11

    :cond_12
    move-object/from16 v9, v17

    :goto_11
    if-nez v9, :cond_13

    goto :goto_12

    :cond_13
    move-object v1, v9

    :goto_12
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f14035f

    invoke-static {v3, v1, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_13
    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v3, p1

    const v6, 0x25fe740

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz v3, :cond_15

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v3, :cond_15

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    goto :goto_14

    :cond_15
    move-object/from16 v9, v17

    :goto_14
    if-nez v9, :cond_16

    goto :goto_15

    :cond_16
    move-object v1, v9

    :goto_15
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1402fa

    invoke-static {v3, v1, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_13

    :goto_16
    sget v1, Lcom/vuitton/android/designkit/ui/theme/IconSize;->c:F

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x3e1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v2, Lge;->q:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v37

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->u:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->b:Z

    if-eqz v3, :cond_18

    const v3, 0x269a226

    invoke-static {v3, v13, v0}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v0

    iget-object v4, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    iget-boolean v0, v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->h:Z

    if-eqz v0, :cond_17

    const v0, 0x26e41b8

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_17
    move v5, v0

    goto :goto_18

    :cond_17
    const v0, 0x27075c6

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->F0:I

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_17

    :goto_18
    const v0, 0x7f1402f9

    invoke-static {v13, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x3e0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v2, Lge;->r:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_19

    :cond_18
    const v0, 0x2775164

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1a

    :cond_19
    const v0, 0x277d524

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_1d
    move-object/from16 v17, v9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17
.end method
