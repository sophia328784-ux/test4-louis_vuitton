.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselItemKt$WhenMappings;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    const-string v1, "ProductCarouselItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x875faea

    move-object/from16 v7, p5

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v3, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v7, v6, 0x6

    and-int/lit8 v8, v6, 0x30

    if-nez v8, :cond_2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_0

    :cond_1
    const/16 v8, 0x10

    :goto_0
    or-int/2addr v7, v8

    :cond_2
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x100

    goto :goto_1

    :cond_3
    const/16 v8, 0x80

    :goto_1
    or-int/2addr v7, v8

    :cond_4
    and-int/lit16 v8, v6, 0xc00

    const/16 v9, 0x800

    if-nez v8, :cond_6

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    goto :goto_2

    :cond_5
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v7, v8

    :cond_6
    and-int/lit16 v8, v6, 0x6000

    if-nez v8, :cond_8

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4000

    goto :goto_3

    :cond_7
    const/16 v8, 0x2000

    :goto_3
    or-int/2addr v7, v8

    :cond_8
    and-int/lit16 v8, v7, 0x2493

    const/16 v11, 0x2492

    const/4 v14, 0x0

    if-eq v8, v11, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    move v8, v14

    :goto_4
    and-int/lit8 v11, v7, 0x1

    invoke-virtual {v12, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1e

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v15, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v0, v7, 0x1c00

    if-ne v0, v9, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    move v0, v14

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_b

    if-ne v8, v9, :cond_c

    :cond_b
    new-instance v8, Lee0;

    const/16 v0, 0x18

    invoke-direct {v8, v4, v0}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v30, v15

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v8, v11, v12, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    iget-wide v10, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v31, 0x0

    if-eqz v3, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_d

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v11, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v16, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v0, v10, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v32, v3

    iget-wide v3, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->e:J

    sget-object v14, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v3, v4, v14}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v3, "productCarousel_asset"

    invoke-static {v0, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/utils/UrlFactory;

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    invoke-static {v14}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v14

    invoke-direct {v3, v14}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    iget-object v14, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-object/from16 v18, v10

    iget-boolean v10, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    iget-object v14, v14, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    sget-object v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-virtual {v3, v14, v0}, Lcom/vuitton/android/presentation/utils/UrlFactory;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v9

    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    move-object/from16 v14, v18

    const/16 v18, 0x180

    move/from16 v20, v7

    move-object/from16 v7, v19

    const/16 v19, 0x7f8

    move/from16 v21, v10

    const/4 v10, 0x0

    move-object/from16 v22, v11

    const/4 v11, 0x0

    move-object/from16 v26, v12

    const/4 v12, 0x0

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object/from16 v24, v14

    const/4 v14, 0x0

    move-object/from16 v25, v15

    const/4 v15, 0x0

    move-object/from16 v27, v16

    const/16 v16, 0x0

    move-object/from16 v35, v3

    move-object/from16 v33, v4

    move-object v6, v8

    move/from16 p0, v20

    move/from16 v34, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    move-object/from16 v36, v24

    move-object/from16 v17, v26

    move-object/from16 v5, v27

    const/4 v2, 0x0

    move-object v8, v0

    move-object/from16 v0, v25

    invoke-static/range {v7 .. v19}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v17

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v15, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v14, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v17, 0x0

    const/16 v18, 0x8

    move/from16 v16, v8

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v9, v10, v12, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v32, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_e

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    invoke-static {v12, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v14, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v12, v4, v12, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v11, v36

    invoke-static {v12, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v7, v14}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const-string v13, "productCarousel_productName_text"

    invoke-static {v8, v13}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v13, p1

    move v14, v7

    iget-object v7, v13, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    sget-object v15, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v20, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v36, Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselItemKt$WhenMappings;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v14, v36, v16

    move-object/from16 v18, v11

    const/4 v11, 0x2

    const/4 v2, 0x1

    if-eq v14, v2, :cond_10

    if-ne v14, v11, :cond_f

    const v2, -0x10eedf22

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v16, v7

    move-object v14, v8

    iget-wide v7, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    const v0, -0x10eef5b5

    invoke-static {v12, v0, v2}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_10
    move-object/from16 v16, v7

    move-object v14, v8

    const/4 v2, 0x0

    const v7, -0x10eeeb3c

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    const/16 v28, 0x6180

    const v29, 0x1aff8

    move v2, v11

    move-object/from16 v26, v12

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v19, v10

    move-object/from16 v25, v15

    move-wide/from16 v41, v7

    move-object v7, v9

    move-wide/from16 v9, v41

    move-object v8, v14

    const-wide/16 v14, 0x0

    move-object/from16 v21, v7

    move-object/from16 v7, v16

    const/16 v16, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v24, v18

    move-object/from16 v23, v19

    const-wide/16 v18, 0x0

    move-object/from16 v27, v21

    const/16 v21, 0x0

    move/from16 v37, v22

    const/16 v22, 0x1

    move-object/from16 v38, v23

    const/16 v23, 0x0

    move-object/from16 v39, v24

    const/16 v24, 0x0

    move-object/from16 v40, v27

    const/16 v27, 0x0

    move/from16 v2, v37

    move-object/from16 v37, v4

    move-object/from16 v4, v38

    move-object/from16 v38, v5

    move v5, v2

    move-object/from16 v2, v40

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v26

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v14, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget v8, Lcom/vuitton/android/designkit/ui/theme/IconSize;->b:F

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v7, 0xe000

    and-int v7, p0, v7

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_11

    const/4 v7, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_13

    move-object/from16 v7, v35

    if-ne v8, v7, :cond_12

    goto :goto_a

    :cond_12
    move-object/from16 v9, p4

    goto :goto_b

    :cond_13
    :goto_a
    new-instance v8, Lee0;

    const/16 v7, 0x19

    move-object/from16 v9, p4

    invoke-direct {v8, v9, v7}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v17, v8

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v34, :cond_14

    const v8, -0xce76a26

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->V:I

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    const v8, -0xce5fea0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    invoke-static {v8, v12, v10}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    if-eqz v34, :cond_15

    const v11, -0xce37ffa

    const v13, 0x7f14035f

    invoke-static {v12, v11, v13, v12, v10}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :cond_15
    const v11, -0xce14ad5

    const v13, 0x7f1402fa

    invoke-static {v12, v11, v13, v12, v10}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    :goto_d
    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    move-object v9, v7

    move-object v7, v8

    move-object v8, v11

    move-wide v10, v13

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    const/4 v14, 0x1

    invoke-static {v12, v14, v1, v5}, Lo60;->d(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v19, 0x0

    const/16 v20, 0x8

    move/from16 v17, v5

    move/from16 v16, v7

    move/from16 v18, v8

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v2, v4, v12, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget-wide v7, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v12, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v32, :cond_1b

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_16

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v7, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v37

    move-object/from16 v2, v38

    invoke-static {v4, v12, v0, v12, v2}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v11, v39

    invoke-static {v12, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v33, :cond_1a

    const v0, 0x15f972ce

    invoke-static {v12, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v2, "productCarousel_productPrice_text"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v36, v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_18

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    const v2, -0x3918b76c

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    move-wide v9, v2

    goto :goto_10

    :cond_17
    const/4 v10, 0x0

    const v0, -0x3918ced4

    invoke-static {v12, v0, v10}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_18
    const/4 v10, 0x0

    const v2, -0x3918c3e6

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :goto_10
    const/16 v28, 0x0

    const v29, 0x1fff8

    move-object/from16 v26, v12

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, p1

    move-object/from16 v12, v26

    iget-boolean v0, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->h:Z

    if-eqz v0, :cond_19

    const v0, 0x1603ba2c

    invoke-static {v12, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const v0, 0x7f140a7a

    invoke-static {v12, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v28, 0x0

    const v29, 0x1fff8

    move-object/from16 v26, v12

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v26

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    const v0, 0x1609619b

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    const/4 v14, 0x1

    goto :goto_13

    :cond_1a
    move-object/from16 v2, p1

    const/4 v10, 0x0

    const v0, 0x160997db

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v30

    goto :goto_14

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_1e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1f

    new-instance v0, Lb3;

    const/16 v7, 0x15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, 0x6bba121f

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {v4, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "ProductCarouselSkeletonItem"

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v1, v3, v4, p0}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object p0

    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v4, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v6, v4, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, p0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, p0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, p0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v6, 0x30

    const/16 v7, 0xd

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->c(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v5

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v8, p0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x6

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v8, p0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Laj0;

    const/16 v1, 0x1a

    invoke-direct {v0, p1, v1}, Laj0;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
