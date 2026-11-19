.class public final synthetic Ls11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:F

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/State;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls11;->b:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iput-object p2, p0, Ls11;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Ls11;->d:Landroid/content/Context;

    iput p4, p0, Ls11;->e:F

    iput-object p5, p0, Ls11;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Ls11;->g:Landroidx/compose/runtime/State;

    iput-object p7, p0, Ls11;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Ls11;->i:Landroidx/compose/runtime/State;

    iput-object p9, p0, Ls11;->j:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Ls11;->k:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v1, 0x6

    const/4 v12, 0x2

    if-nez v3, :cond_1

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v1, 0x13

    const/16 v4, 0x12

    const/4 v13, 0x0

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v13

    :goto_1
    and-int/2addr v1, v5

    invoke-interface {v11, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Ls11;->b:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-boolean v1, v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    iget-object v14, v0, Ls11;->c:Landroidx/compose/runtime/MutableState;

    if-nez v1, :cond_3

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    move v15, v5

    goto :goto_2

    :cond_3
    move v15, v13

    :goto_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v16

    const/16 v6, 0x1f4

    const/4 v7, 0x6

    invoke-static {v6, v13, v1, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    invoke-static {v8, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v17

    move-object v8, v1

    new-instance v1, Lt11;

    move v9, v4

    iget-object v4, v0, Ls11;->d:Landroid/content/Context;

    move v10, v5

    iget v5, v0, Ls11;->e:F

    move/from16 v18, v6

    iget-object v6, v0, Ls11;->f:Lkotlin/jvm/functions/Function0;

    move/from16 v19, v7

    iget-object v7, v0, Ls11;->g:Landroidx/compose/runtime/State;

    move-object/from16 v20, v8

    iget-object v8, v0, Ls11;->h:Landroidx/compose/runtime/MutableState;

    move/from16 v21, v9

    iget-object v9, v0, Ls11;->i:Landroidx/compose/runtime/State;

    move/from16 v22, v10

    iget-object v10, v0, Ls11;->j:Landroidx/compose/runtime/MutableState;

    move/from16 p2, v15

    move/from16 v12, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v14

    move/from16 v14, v19

    invoke-direct/range {v1 .. v10}, Lt11;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroid/content/Context;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    const v2, 0x2b2e1ee9

    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const v10, 0x30d80

    move-object v9, v11

    const/16 v11, 0x12

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v12, v13, v15, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    const/4 v10, 0x3

    invoke-static {v15, v10}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v6

    new-instance v1, Lu11;

    iget-object v0, v0, Ls11;->k:Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, v18

    invoke-direct {v1, v0, v2}, Lu11;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x418a3ee0    # -0.23999453f

    invoke-static {v0, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const v10, 0x30d80

    const/4 v4, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_4
    move-object v9, v11

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
