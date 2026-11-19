.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/utils/UrlFactory;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, -0x138f5614

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v2

    and-int/lit8 v5, v3, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eq v5, v6, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    and-int/2addr v3, v9

    invoke-virtual {v8, v3, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v6, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const-string v10, "FullscreenAssetPage"

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    iget-object v12, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v12, :cond_6

    invoke-static {v12}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v13

    if-ne v13, v9, :cond_6

    const v4, -0x352ec5bd    # -6855969.5f

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_3

    :cond_2
    new-instance v6, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v6, v3}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v6, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v6, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->e:Ljava/lang/String;

    invoke-static {v9}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, v11

    :goto_2
    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->d:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v5

    goto :goto_3

    :cond_5
    move-object v10, v11

    :goto_3
    sget-object v5, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v28, 0x0

    const v29, 0x1f9810

    move-object/from16 v25, v8

    const/4 v8, 0x0

    move v5, v7

    move-object v7, v9

    const/4 v9, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v26, 0x36c30006

    const/16 v27, 0x6c06

    move/from16 v30, v5

    move-object v5, v3

    move/from16 v3, v30

    invoke-static/range {v4 .. v29}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v8, v25

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_8

    :cond_6
    move v12, v7

    const v5, -0x3523fdc5    # -7209245.5f

    invoke-static {v8, v5, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v7, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v7, v3}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_7

    iget-object v10, v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v10, :cond_7

    sget-object v13, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-virtual {v1, v10, v13}, Lcom/vuitton/android/presentation/utils/UrlFactory;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    move-object v10, v11

    :goto_4
    invoke-static {v7, v3, v10}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v3

    if-eqz v6, :cond_8

    iget-object v11, v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->c:Lcom/vuitton/android/presentation/model/common/ScaleUiModel;

    :cond_8
    const/4 v6, -0x1

    if-nez v11, :cond_9

    move v7, v6

    goto :goto_5

    :cond_9
    sget-object v7, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt$WhenMappings;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v7, v7, v10

    :goto_5
    if-eq v7, v6, :cond_c

    if-eq v7, v9, :cond_b

    if-ne v7, v4, :cond_a

    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    :goto_6
    move-object v7, v4

    goto :goto_7

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_b
    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    goto :goto_6

    :cond_c
    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    goto :goto_6

    :goto_7
    const v4, 0x7f08035c

    invoke-static {v4, v8, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    const/16 v9, 0x11b0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lcoil3/compose/SingletonAsyncImageKt;->a(Lcoil3/request/ImageRequest;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v4, Lwd0;

    const/16 v5, 0x10

    invoke-direct {v4, v0, v1, v2, v5}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;FLandroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const v3, -0x1f96090f

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v3, v5

    and-int/lit8 v5, v3, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v3, v8

    invoke-virtual {v12, v3, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->f:Ljava/util/List;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_3

    if-ne v9, v10, :cond_4

    :cond_3
    new-instance v9, Ldb;

    const/16 v6, 0x8

    invoke-direct {v9, v5, v6}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    invoke-static {v7, v9, v12, v7, v6}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v10, :cond_5

    new-instance v9, Lcom/vuitton/android/presentation/utils/UrlFactory;

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v9, Lcom/vuitton/android/presentation/utils/UrlFactory;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v10, "FullscreenImageSlider"

    invoke-direct {v3, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v4, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_6

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v10, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->e:J

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v13, v14, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v1, v7}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v4, Lcf;

    const/16 v11, 0x9

    invoke-direct {v4, v5, v9, v11}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v9, -0x38ee4848

    invoke-static {v9, v4, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    const/16 v20, 0x6000

    const/16 v21, 0x3ffc

    move-object v4, v6

    const/4 v6, 0x0

    move v9, v7

    const/4 v7, 0x0

    move v11, v8

    const/4 v8, 0x0

    move v13, v9

    const/4 v9, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    move v15, v11

    const/4 v11, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    move/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v24, v19

    const/16 v19, 0x0

    move-object/from16 p2, v5

    move/from16 v0, v22

    move-object v5, v3

    move-object/from16 v3, v24

    invoke-static/range {v4 .. v21}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v18

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_7

    const v5, -0x52f6c14d

    invoke-static {v12, v5, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v3, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v13, 0x0

    const/16 v14, 0x38

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v14}, Lcom/vuitton/android/presentation/compose/components/LVPagerLineIndicatorKt;->a(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/Composer;II)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    const v3, -0x52f3e7d5

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v3, Lfh;

    const/4 v5, 0x2

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v1, v2, v5}, Lfh;-><init>(Ljava/lang/Object;FII)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v1, "PLPProductFullscreenComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x61979ed1

    move-object/from16 v6, p5

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    iget-object v5, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v6, p6, 0x6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_1
    const/16 v7, 0x10

    :goto_0
    or-int/2addr v6, v7

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_1

    :cond_2
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v6, v7

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_2

    :cond_3
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v6, v7

    move-object/from16 v7, p4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x4000

    goto :goto_3

    :cond_4
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v6, v11

    and-int/lit16 v11, v6, 0x2493

    const/16 v12, 0x2492

    if-eq v11, v12, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    and-int/lit8 v12, v6, 0x1

    invoke-virtual {v10, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 p5, v15

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v16, :cond_6

    if-ne v9, v15, :cond_7

    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v9}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v9, Ljava/lang/String;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v0, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v8, 0x0

    move-object/from16 v29, v0

    const/4 v0, 0x2

    invoke-static {v13, v14, v8, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v19

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v24, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v0

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v30

    and-int/lit16 v0, v6, 0x380

    const/16 v8, 0x100

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_9

    if-ne v8, v15, :cond_a

    :cond_9
    new-instance v8, Lrh0;

    const/16 v0, 0x12

    invoke-direct {v8, v3, v2, v0}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v34, v8

    check-cast v34, Lkotlin/jvm/functions/Function0;

    const/16 v35, 0x1f

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_c

    if-ne v13, v15, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x1

    goto :goto_7

    :cond_c
    :goto_6
    new-instance v13, Lnj0;

    const/4 v8, 0x1

    invoke-direct {v13, v9, v8}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v13, 0x0

    invoke-static {v8, v9, v10, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    iget-wide v13, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v30, 0x0

    if-eqz v5, :cond_19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v18, v5

    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_d

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v14, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v19, v6

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;->c:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    sget-object v20, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v20, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    const v0, 0x3fe38e39

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_9

    :goto_a
    invoke-static {v11, v0, v10, v2}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;FLandroidx/compose/runtime/Composer;I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    move/from16 v21, v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v24, 0x0

    const/16 v25, 0x8

    sget-object v20, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v22, v0

    move/from16 v23, v2

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v9, v10, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    move-object/from16 p5, v8

    iget-wide v7, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_18

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_f

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    invoke-static {v10, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, p5

    invoke-static {v10, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v10, v14, v10, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v10, v0, v6, v1, v7}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v9, 0x30

    invoke-static {v8, v7, v10, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v7

    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v18, v11

    iget-boolean v11, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_10

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_c
    invoke-static {v10, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v10, v14, v10, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v2, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v7, v2}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v6, v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->d:Ljava/lang/String;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v19

    sget v19, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    const/16 v27, 0x6180

    const v28, 0x1aff8

    move-object/from16 v25, v10

    const-wide/16 v10, 0x0

    move-object v5, v12

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v22, v17

    move-object/from16 v21, v18

    const-wide/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x2

    move-object/from16 v26, v22

    const/16 v22, 0x0

    move/from16 v31, v23

    const/16 v23, 0x0

    move-object/from16 v32, v26

    const/16 v26, 0x0

    move-object/from16 v2, v24

    move-object/from16 v24, v0

    move-object v0, v2

    move/from16 v2, v31

    move-object/from16 v36, v32

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v25

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-nez v5, :cond_11

    const v3, -0x48005826

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    const/4 v8, 0x1

    goto :goto_f

    :cond_11
    const v6, -0x48005825

    invoke-static {v10, v6, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v11

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v9, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->V:I

    and-int/lit16 v7, v3, 0x1c00

    const/16 v11, 0x800

    if-ne v7, v11, :cond_12

    const/4 v13, 0x1

    goto :goto_e

    :cond_12
    move v13, v2

    :goto_e
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v7, v13

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_13

    move-object/from16 v7, v36

    if-ne v11, v7, :cond_14

    :cond_13
    new-instance v11, Lok0;

    invoke-direct {v11, v4, v0, v2}, Lok0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/high16 v7, 0x380000

    shl-int/lit8 v3, v3, 0x6

    and-int v14, v3, v7

    const/4 v15, 0x0

    move-object/from16 v12, p4

    move-object v7, v0

    move-object v13, v10

    move v10, v5

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v10, v13

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :goto_f
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->b()Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;

    move-result-object v7

    if-nez v7, :cond_15

    const v0, -0x53dc7090

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_15
    const v0, -0x53dc708f

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellFullKt;->f(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v30, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_10
    if-nez v30, :cond_16

    const v0, -0x1b7aa2aa

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :goto_11
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v2, 0x1

    goto :goto_12

    :cond_16
    const v0, -0x1b7abc18

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    goto :goto_11

    :goto_12
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v29

    goto :goto_13

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v30

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v30

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v30

    :cond_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1b

    new-instance v0, Lkj0;

    const/4 v7, 0x2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
