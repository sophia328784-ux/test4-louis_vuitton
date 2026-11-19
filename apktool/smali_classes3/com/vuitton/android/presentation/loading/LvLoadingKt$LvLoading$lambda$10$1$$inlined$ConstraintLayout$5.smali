.class public final Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/airbnb/lottie/compose/LottieAnimationState;

.field public final synthetic g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

.field public final synthetic h:Landroidx/compose/runtime/State;

.field public final synthetic i:Lcom/airbnb/lottie/compose/LottieCompositionResult;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lcom/vuitton/android/presentation/loading/LoadingMode;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlin/jvm/functions/Function0;Lcom/airbnb/lottie/compose/LottieAnimationState;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/State;Lcom/airbnb/lottie/compose/LottieCompositionResult;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/loading/LoadingMode;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->c:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->f:Lcom/airbnb/lottie/compose/LottieAnimationState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    iput-object p6, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->h:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->i:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    iput-object p8, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->j:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->k:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iput-object p10, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->l:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->m:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->c:Landroidx/compose/runtime/MutableState;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->d:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->d()V

    const v3, 0x5d6b2f77

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->c()Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;->a:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v7, :cond_2

    sget-object v5, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;->b:Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v5}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v6, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_a

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->h:Landroidx/compose/runtime/State;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v9, v8}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->i:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/LottieComposition;

    iget-object v10, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->f:Lcom/airbnb/lottie/compose/LottieAnimationState;

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_4

    if-ne v12, v7, :cond_5

    :cond_4
    new-instance v12, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$2$1$1;

    invoke-direct {v12, v10}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$2$1$1;-><init>(Lcom/airbnb/lottie/compose/LottieAnimationState;)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    const v21, 0x1fdf8

    move-object v10, v4

    const/4 v4, 0x0

    move-object v11, v5

    const/4 v5, 0x0

    move-object/from16 v18, v6

    const/4 v6, 0x0

    move-object v14, v7

    const/4 v7, 0x0

    move-object v15, v3

    move-object v3, v8

    const/4 v8, 0x0

    move-object/from16 v16, v1

    move-object v1, v9

    const/4 v9, 0x0

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->g:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v22, v2

    move-object v2, v12

    const/4 v12, 0x0

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object/from16 v24, v14

    const/4 v14, 0x0

    move-object/from16 v25, v15

    const/4 v15, 0x0

    move-object/from16 v26, v16

    const/16 v16, 0x0

    move-object/from16 v27, v17

    const/16 v17, 0x0

    move-object/from16 v28, v19

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v33, v24

    move-object/from16 v29, v25

    move-object/from16 v31, v26

    move-object/from16 v30, v27

    move-object/from16 v32, v28

    invoke-static/range {v1 .. v21}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v18

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->r()V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    iget-object v3, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->j:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v10, 0x0

    move v4, v3

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v11, v10, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    move v5, v4

    invoke-static {v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    move-object/from16 v15, v29

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v14, v33

    if-nez v7, :cond_6

    if-ne v8, v14, :cond_7

    :cond_6
    new-instance v8, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$3$1;

    invoke-direct {v8, v15, v1, v2}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$3$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;FF)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, v30

    invoke-static {v1, v8}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v1, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$4;

    iget-object v13, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->k:Lcom/vuitton/android/presentation/loading/LoadingMode;

    move-object/from16 v15, v32

    invoke-direct {v1, v13, v15}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$4;-><init>(Lcom/vuitton/android/presentation/loading/LoadingMode;Landroidx/compose/runtime/State;)V

    const v7, -0x17fd5263

    invoke-static {v7, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const v8, 0x30d80

    const/16 v9, 0x10

    move-object/from16 v18, v6

    move-object v6, v1

    move v1, v5

    const/4 v5, 0x0

    move-object/from16 v7, v18

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v3

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_8

    if-ne v4, v14, :cond_9

    :cond_8
    new-instance v4, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$5$1;

    invoke-direct {v4, v1, v2}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$5$1;-><init>(FF)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, v31

    invoke-static {v1, v4}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->l:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v11, v10, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    invoke-static {v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$6;

    iget-object v0, v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5;->m:Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v13, v0, v15}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$6;-><init>(Lcom/vuitton/android/presentation/loading/LoadingMode;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V

    const v0, 0x63ff6b94

    invoke-static {v0, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const v7, 0x30d80

    const/16 v8, 0x10

    move v0, v2

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    move-object v11, v13

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11
.end method
