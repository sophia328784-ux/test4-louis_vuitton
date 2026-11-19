.class public final synthetic Lb30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:F

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/pager/PagerState;FLcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb30;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb30;->f:Ljava/lang/Object;

    iput-object p2, p0, Lb30;->g:Ljava/lang/Object;

    iput p3, p0, Lb30;->e:F

    iput-object p4, p0, Lb30;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lb30;->c:Z

    iput-object p6, p0, Lb30;->i:Ljava/lang/Object;

    iput-object p7, p0, Lb30;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;FZLjava/util/List;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lb30;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb30;->g:Ljava/lang/Object;

    iput p2, p0, Lb30;->e:F

    iput-boolean p3, p0, Lb30;->c:Z

    iput-object p4, p0, Lb30;->f:Ljava/lang/Object;

    iput-object p5, p0, Lb30;->h:Ljava/lang/Object;

    iput-object p6, p0, Lb30;->i:Ljava/lang/Object;

    iput-object p7, p0, Lb30;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lb30;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb30;->c:Z

    iput-object p2, p0, Lb30;->f:Ljava/lang/Object;

    iput-object p3, p0, Lb30;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lb30;->g:Ljava/lang/Object;

    iput-object p5, p0, Lb30;->h:Ljava/lang/Object;

    iput p6, p0, Lb30;->e:F

    iput-object p7, p0, Lb30;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lb30;->b:I

    iget-object v4, v0, Lb30;->d:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v8, v0, Lb30;->i:Ljava/lang/Object;

    iget-object v9, v0, Lb30;->h:Ljava/lang/Object;

    iget-object v10, v0, Lb30;->f:Ljava/lang/Object;

    iget-object v11, v0, Lb30;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v11, Landroidx/compose/foundation/pager/PagerState;

    check-cast v10, Ljava/util/List;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v14, p4

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v15, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v15

    add-float/2addr v15, v1

    int-to-float v1, v12

    sub-float/2addr v1, v15

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "ModelSizeSlider$lambda$12$1"

    invoke-direct {v15, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    sget v5, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeItemKt;->a:F

    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/high16 v15, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v15, v3}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v3

    const v15, 0x3c23d70a    # 0.01f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v15

    if-lez v1, :cond_0

    new-instance v1, Led0;

    iget v15, v0, Lb30;->e:F

    iget-boolean v0, v0, Lb30;->c:Z

    invoke-direct {v1, v3, v15, v0}, Led0;-><init>(FFZ)V

    invoke-static {v5, v1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    :cond_0
    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v13, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v0, v2}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v2, v14, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    and-int/lit8 v2, v14, 0x30

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    or-int/2addr v1, v2

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    if-ne v2, v7, :cond_6

    :cond_5
    new-instance v2, Laf;

    invoke-direct {v2, v12, v10, v11, v9}, Laf;-><init>(ILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v6, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "contextualSizing_modelSizeItem_button"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    if-ne v1, v12, :cond_7

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    move v15, v6

    :goto_2
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    if-ne v2, v7, :cond_9

    :cond_8
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/b;

    invoke-direct {v2, v8, v4, v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x6

    move-object/from16 v17, v13

    move-object v13, v0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :pswitch_0
    const/16 v17, 0x0

    check-cast v10, Landroidx/compose/runtime/State;

    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/MutableState;

    move-object v13, v9

    check-cast v13, Landroidx/compose/runtime/MutableState;

    move-object v1, v8

    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v14, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v9, "LVSlideShowContent_vucX2i8$lambda$0$13"

    invoke-direct {v14, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int/lit8 v9, v5, 0x70

    xor-int/lit8 v15, v9, 0x30

    const/16 v9, 0x20

    if-le v15, v9, :cond_b

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    and-int/lit8 v11, v5, 0x30

    if-ne v11, v9, :cond_d

    :cond_c
    const/4 v9, 0x1

    goto :goto_3

    :cond_d
    move v9, v6

    :goto_3
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    iget-object v6, v0, Lb30;->d:Landroidx/compose/runtime/MutableState;

    if-nez v9, :cond_e

    if-ne v11, v7, :cond_f

    :cond_e
    move v9, v8

    goto :goto_4

    :cond_f
    move-object v9, v11

    move-object v11, v6

    move v6, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_5

    :goto_4
    new-instance v8, Lum;

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lum;-><init>(ILandroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move v6, v9

    move-object v9, v10

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v8}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/16 v10, 0x20

    if-le v15, v10, :cond_10

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v14

    if-nez v14, :cond_11

    :cond_10
    and-int/lit8 v14, v5, 0x30

    if-ne v14, v10, :cond_12

    :cond_11
    const/16 v16, 0x1

    :goto_6
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    goto :goto_7

    :cond_12
    const/16 v16, 0x0

    goto :goto_6

    :goto_7
    iget-boolean v11, v0, Lb30;->c:Z

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v10

    or-int v10, v16, v10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v10, :cond_14

    if-ne v15, v7, :cond_13

    goto :goto_8

    :cond_13
    move-object v0, v8

    goto :goto_9

    :cond_14
    :goto_8
    new-instance v7, Lr70;

    iget v10, v0, Lb30;->e:F

    move-object v0, v8

    move v8, v6

    invoke-direct/range {v7 .. v14}, Lr70;-><init>(ILandroidx/compose/runtime/State;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v15, v7

    :goto_9
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v15}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_15
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v5, 0x7e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :pswitch_1
    const/16 v17, 0x0

    check-cast v10, Landroid/content/Context;

    check-cast v11, Landroidx/compose/foundation/pager/PagerState;

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "ImmersiveArticleCarousel$lambda$14$0$2$0"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v6, v17

    invoke-static {v1, v6, v5}, Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_17

    if-ne v6, v7, :cond_18

    :cond_17
    new-instance v6, Ljx;

    invoke-direct {v6, v10, v11, v4}, Ljx;-><init>(Landroid/content/Context;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

    const/16 v26, 0x0

    iget v1, v0, Lb30;->e:F

    iget-boolean v0, v0, Lb30;->c:Z

    move/from16 v23, v0

    move/from16 v21, v1

    move-object/from16 v25, v3

    invoke-static/range {v20 .. v26}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt;->a(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
