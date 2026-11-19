.class public final synthetic Lcom/vuitton/android/presentation/screen/portal/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:F

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:I

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

.field public final synthetic k:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;FLkotlin/jvm/internal/Ref$FloatRef;IFLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;Landroidx/compose/runtime/snapshots/SnapshotStateMap;ZZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->b:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->c:F

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->e:I

    iput p5, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->f:F

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->g:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->h:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->j:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->k:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->l:Z

    iput-boolean p12, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->m:Z

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->n:Landroid/content/Context;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/portal/components/a;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "PortalSliderComponent$lambda$7$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v7, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->b:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v4

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v4

    iget v13, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->c:F

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v8, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->e:I

    iget v11, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->f:F

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->g:Lkotlin/jvm/internal/Ref$FloatRef;

    move v15, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->h:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->i:Lkotlin/jvm/internal/Ref$IntRef;

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ne v4, v10, :cond_1

    cmpg-float v4, v13, v12

    if-ltz v4, :cond_2

    :cond_1
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v4

    if-eq v4, v10, :cond_3

    cmpl-float v4, v13, v12

    if-lez v4, :cond_3

    :cond_2
    int-to-float v4, v8

    mul-float/2addr v1, v4

    sub-float v16, v16, v15

    mul-float v1, v1, v16

    iput v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    iput v12, v14, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    const/16 v1, 0xc8

    iput v1, v11, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    const/16 v4, 0x32

    iput v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x32

    iput v12, v6, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    int-to-float v8, v8

    mul-float/2addr v1, v8

    sub-float v16, v16, v15

    mul-float v1, v1, v16

    iput v1, v14, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    iput v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    const/16 v1, 0xc8

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :goto_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->j:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    if-eqz v10, :cond_4

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->e:Ljava/util/List;

    add-int/lit8 v8, v10, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->f:Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;->a:Ljava/time/Instant;

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v12, v10, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->k:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-nez v12, :cond_8

    if-eqz v8, :cond_8

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v8, 0x1

    :goto_6
    iget-boolean v12, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->l:Z

    move-object/from16 v16, v5

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->m:Z

    if-nez v4, :cond_9

    const v0, -0xc96d825

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->b:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->c:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget v14, v14, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    iget v15, v6, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    const/16 v19, 0x0

    move/from16 v17, v5

    move-object/from16 v18, v7

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/portal/components/PortalCoverKt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FFZZLandroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v18

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_7

    :cond_9
    move/from16 v17, v5

    move-object v1, v7

    move v7, v12

    const v5, -0xc8e518d

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v12

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v12, v12, v18

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->n:Landroid/content/Context;

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v12, v12, v19

    move/from16 p3, v7

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v12, :cond_a

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v12, :cond_b

    :cond_a
    new-instance v7, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;

    const/4 v12, 0x0

    invoke-direct {v7, v8, v4, v6, v12}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1;-><init>(ZLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->g:J

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v5, v6, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v6, v12, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    new-instance v3, Lbp0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/portal/components/a;->o:Lkotlin/jvm/functions/Function1;

    move/from16 v7, p3

    move-object v6, v4

    move-object v4, v14

    move-object/from16 v12, v16

    move/from16 v8, v17

    move-object/from16 v5, v18

    move-object v14, v0

    invoke-direct/range {v3 .. v15}, Lbp0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;ZZLandroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    const v0, -0x57c9a063

    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v8, 0x6d80

    const/4 v9, 0x0

    const-string v5, "portal_content_slide"

    move-object v7, v1

    move-object v3, v2

    move-object/from16 v4, v19

    move-object/from16 v2, v20

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v12, 0x0

    throw v12
.end method
