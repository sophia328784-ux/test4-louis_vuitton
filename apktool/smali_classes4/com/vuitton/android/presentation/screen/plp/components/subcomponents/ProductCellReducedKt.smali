.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move/from16 v10, p7

    const-string v6, "ProductCellReduced"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5434ddc8

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    iget-object v8, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v3, v10, 0x30

    if-nez v3, :cond_4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_4
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    goto :goto_4

    :cond_6
    move-object/from16 v3, p2

    :goto_4
    and-int/lit16 v5, v10, 0xc00

    if-nez v5, :cond_8

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_5

    :cond_7
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    :cond_8
    and-int/lit16 v5, v10, 0x6000

    move-object/from16 v13, p4

    if-nez v5, :cond_a

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x4000

    goto :goto_6

    :cond_9
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v0, v5

    :cond_a
    const/high16 v5, 0x30000

    and-int/2addr v5, v10

    if-nez v5, :cond_c

    move-object/from16 v5, p5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v15, 0x10000

    :goto_7
    or-int/2addr v0, v15

    :goto_8
    move v15, v0

    goto :goto_9

    :cond_c
    move-object/from16 v5, p5

    goto :goto_8

    :goto_9
    const v0, 0x12493

    and-int/2addr v0, v15

    const v9, 0x12492

    if-eq v0, v9, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    and-int/lit8 v9, v15, 0x1

    invoke-virtual {v7, v9, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v18, :cond_e

    if-ne v14, v4, :cond_f

    :cond_e
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v14}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v18, :cond_10

    if-ne v1, v4, :cond_11

    :cond_10
    new-instance v1, Lup0;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lup0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v5, v1, v7, v5, v3}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_12

    new-instance v5, Lcom/vuitton/android/presentation/utils/UrlFactory;

    invoke-static {v12}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v3, v5

    check-cast v3, Lcom/vuitton/android/presentation/utils/UrlFactory;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->f:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-object/from16 v21, v8

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    :goto_b
    const/16 v8, 0x180

    invoke-static {v12, v0, v3, v7, v8}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderExtKt;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/utils/UrlFactory;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_14

    if-ne v8, v4, :cond_15

    :cond_14
    new-instance v8, Lnj0;

    const/16 v0, 0xc

    invoke-direct {v8, v14, v0}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-static {v11, v0, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    and-int/lit16 v14, v15, 0x1c00

    const/16 v10, 0x800

    if-ne v14, v10, :cond_16

    move/from16 v17, v0

    goto :goto_c

    :cond_16
    const/16 v17, 0x0

    :goto_c
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v17, v17, v19

    const/high16 v19, 0x70000

    and-int v0, v15, v19

    const/high16 v10, 0x20000

    if-ne v0, v10, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    or-int v0, v17, v0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    and-int/lit16 v10, v15, 0x380

    move/from16 v16, v0

    const/16 v0, 0x100

    if-ne v10, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    :goto_e
    or-int v0, v16, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_1a

    if-ne v10, v4, :cond_19

    goto :goto_f

    :cond_19
    move-object/from16 v16, v5

    move-object/from16 p6, v9

    move-object v0, v10

    move-object/from16 v23, v20

    move-object v10, v3

    move-object v9, v4

    goto :goto_10

    :cond_1a
    :goto_f
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;

    move-object v10, v3

    move-object/from16 v16, v5

    move-object/from16 p6, v9

    move-object/from16 v23, v20

    move-object/from16 v5, p2

    move-object/from16 v3, p5

    move-object v9, v4

    move-object v4, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v8, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v29, 0x7

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v0

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v3, "plp_productCard_view"

    invoke-static {v0, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    move v5, v14

    iget-wide v13, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v21, :cond_30

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v17, v5

    iget-boolean v5, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_1b

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v13, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v20, v15

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v0, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {v11, v0, v1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v24, v11

    const/4 v11, 0x7

    move-object/from16 v25, v9

    const/4 v9, 0x0

    invoke-static {v0, v9, v9, v11}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v1, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v21, :cond_2f

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_1c

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    invoke-static {v7, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v7, v13, v7, v8}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v7, v0, v15, v6}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->e:J

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "plp_product_image"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v0, v12}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v10, v1}, Lcom/vuitton/android/presentation/utils/UrlFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_1d
    const/4 v9, 0x0

    :goto_13
    invoke-static {v0, v12, v9}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v0, :cond_1e

    iget-object v9, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->c:Lcom/vuitton/android/presentation/model/common/ScaleUiModel;

    goto :goto_14

    :cond_1e
    const/4 v9, 0x0

    :goto_14
    const/4 v0, -0x1

    if-nez v9, :cond_1f

    move v1, v0

    goto :goto_15

    :cond_1f
    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_15
    if-eq v1, v0, :cond_22

    const/4 v0, 0x1

    if-eq v1, v0, :cond_21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_20

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    :goto_16
    move-object v15, v0

    goto :goto_17

    :cond_20
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_21
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    goto :goto_16

    :cond_22
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    goto :goto_16

    :goto_17
    const v0, 0x7f08035c

    const/4 v5, 0x0

    invoke-static {v0, v7, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v14

    move/from16 v0, v17

    const/16 v17, 0x1030

    move v11, v5

    move-object/from16 v16, v7

    const/16 v10, 0x800

    invoke-static/range {v12 .. v17}, Lcoil3/compose/SingletonAsyncImageKt;->a(Lcoil3/request/ImageRequest;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v23

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    move-object v2, v8

    goto :goto_18

    :cond_23
    const/4 v2, 0x0

    :goto_18
    if-nez v2, :cond_24

    const v0, -0x3f951105

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    const/4 v0, 0x1

    goto/16 :goto_20

    :cond_24
    const v1, -0x3f951104

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-boolean v1, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a:Z

    if-nez v1, :cond_26

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_1a

    :cond_25
    const v0, -0x1859e088

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1f

    :cond_26
    move-object/from16 v1, p1

    :goto_1a
    const v3, -0x1867569e

    invoke-static {v7, v3, v6}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v9, v25

    if-nez v4, :cond_27

    if-ne v5, v9, :cond_28

    :cond_27
    new-instance v5, Lxo0;

    const/4 v4, 0x3

    invoke-direct {v5, v2, v4}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v11, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object/from16 v3, p6

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-ne v0, v10, :cond_29

    const/4 v5, 0x1

    goto :goto_1b

    :cond_29
    move v5, v11

    :goto_1b
    or-int/2addr v4, v5

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x6

    if-nez v4, :cond_2b

    if-ne v5, v9, :cond_2a

    goto :goto_1c

    :cond_2a
    move-object/from16 v4, p3

    goto :goto_1d

    :cond_2b
    :goto_1c
    new-instance v5, Lsm0;

    move-object/from16 v4, p3

    invoke-direct {v5, v3, v4, v1, v6}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-ne v0, v10, :cond_2c

    const/4 v0, 0x1

    goto :goto_1e

    :cond_2c
    move v0, v11

    :goto_1e
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_2d

    if-ne v5, v9, :cond_2e

    :cond_2d
    new-instance v5, Lok0;

    invoke-direct {v5, v4, v1, v6}, Lok0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v5, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v0, v20, 0x70

    const/high16 v8, 0x380000

    shl-int/lit8 v6, v20, 0x6

    and-int/2addr v6, v8

    or-int v8, v0, v6

    const/16 v9, 0x18

    move-object v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_19

    :goto_20
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_21

    :cond_2f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v22, 0x0

    throw v22

    :cond_30
    const/16 v22, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_31
    move-object/from16 v24, v11

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_32

    new-instance v0, Lz2;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v7}, Lz2;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_32
    return-void
.end method
