.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPHeaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u0006\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "selected",
        "Landroidx/compose/ui/unit/Dp;",
        "verticalPadding",
        "imageSize",
        "borderWidth",
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v4, p3

    const-string v1, "CatalogHeaderItemWithImage"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x17480e61

    move-object/from16 v3, p5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p6, v2

    move-object/from16 v3, p1

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    move-object/from16 v12, p2

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    goto :goto_2

    :cond_3
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x800

    goto :goto_3

    :cond_4
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v2, v5

    move-object/from16 v13, p4

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x4000

    goto :goto_4

    :cond_5
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x2493

    const/16 v6, 0x2492

    const/4 v15, 0x0

    if-eq v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    move v5, v15

    :goto_5
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v4, :cond_7

    const v5, -0x657dd6da

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    :goto_6
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_7
    const v5, -0x657dd199

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    goto :goto_6

    :goto_7
    const/16 v6, 0x12c

    const/4 v7, 0x0

    const/4 v8, 0x6

    move v10, v6

    invoke-static {v10, v15, v7, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    move v11, v10

    const/16 v10, 0x30

    move/from16 v16, v11

    const/16 v11, 0xc

    move-object/from16 v17, v7

    move/from16 v18, v8

    const/4 v8, 0x0

    move/from16 p5, v2

    move/from16 v14, v16

    move-object/from16 v3, v17

    move/from16 v2, v18

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    const/high16 v5, 0x42900000    # 72.0f

    if-eqz v4, :cond_8

    const/high16 v6, 0x42b00000    # 88.0f

    goto :goto_8

    :cond_8
    move v6, v5

    :goto_8
    invoke-static {v14, v15, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    const/16 v10, 0x1b0

    const/16 v11, 0x8

    move v8, v5

    move v5, v6

    move-object v6, v7

    const-string v7, "Image size animation"

    move/from16 v17, v8

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    if-eqz v4, :cond_9

    const v5, -0x657d939a

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    :goto_9
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_9
    const v5, -0x657d8e9a

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    goto :goto_9

    :goto_a
    invoke-static {v14, v15, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    const/16 v10, 0x1b0

    const/16 v11, 0x8

    const-string v7, "Border width animation"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    const/4 v5, 0x7

    invoke-static {v0, v3, v3, v5}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v8, 0x30

    invoke-static {v6, v7, v9, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v7, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v9, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_a

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    iget v5, v5, Landroidx/compose/ui/unit/Dp;->b:F

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v6, v5, v8}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    iget v5, v5, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    xor-int/lit8 v14, v4, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x1e

    move v5, v15

    const/4 v15, 0x0

    move-object/from16 v17, v13

    move-object v13, v3

    move v3, v8

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    new-instance v10, Lhk0;

    invoke-direct {v10, v2, v5}, Lhk0;-><init>(Landroidx/compose/runtime/State;I)V

    shr-int/lit8 v2, p5, 0x6

    and-int/lit8 v2, v2, 0x70

    invoke-static {v8, v4, v10, v9, v2}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v16, 0x180

    const/16 v17, 0x7f8

    const/4 v8, 0x0

    move-object v14, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object v5, v2

    move v2, v6

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v15

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x42900000    # 72.0f

    invoke-static {v5, v2, v8, v3}, Landroidx/compose/foundation/layout/SizeKt;->u(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    if-eqz v4, :cond_b

    const v1, 0x49c9ea3

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-wide v7, v1

    goto :goto_d

    :cond_b
    const/4 v5, 0x0

    const v1, 0x49ca502

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    goto :goto_c

    :goto_d
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v9

    sget v9, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v13, v1}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    shr-int/lit8 v1, p5, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v15, v1, 0x6c30

    const/16 v16, 0x20

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v16}, Lcom/vuitton/android/designkit/components/components/ResizableTextKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v14

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_e

    move-object v1, v0

    new-instance v0, Lqf;

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lqf;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object/from16 v5, p4

    const-string v12, "PLPHeader"

    if-eqz v0, :cond_0

    invoke-static {v0, v12}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x565b889

    move-object/from16 v6, p5

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    or-int/lit8 v4, p6, 0x6

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_0

    :cond_1
    const/16 v6, 0x10

    :goto_0
    or-int/2addr v4, v6

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v4, v6

    or-int/lit16 v4, v4, 0xc00

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x4000

    goto :goto_2

    :cond_3
    const/16 v6, 0x2000

    :goto_2
    or-int/2addr v4, v6

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x20000

    goto :goto_3

    :cond_4
    const/high16 v6, 0x10000

    :goto_3
    or-int/2addr v4, v6

    const v6, 0x12493

    and-int/2addr v6, v4

    const v7, 0x12492

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    and-int/lit8 v7, v4, 0x1

    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_29

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v13}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v14, :cond_6

    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v8, v13}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v16, :cond_7

    if-ne v15, v14, :cond_8

    :cond_7
    new-instance v15, Ldb;

    const/4 v9, 0x7

    invoke-direct {v15, v2, v9}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v15, v13, v3, v9}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v18

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_c

    if-eqz p2, :cond_b

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const/16 v19, 0x0

    move-object v15, v9

    check-cast v15, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v15, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_5

    :cond_a
    const/16 v19, 0x0

    move-object/from16 v9, v19

    :goto_5
    invoke-interface {v2, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_6

    :cond_b
    const/16 v19, 0x0

    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    :goto_7
    check-cast v3, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v9, :cond_d

    if-ne v15, v14, :cond_11

    :cond_d
    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    move-object v9, v2

    check-cast v9, Ljava/lang/Iterable;

    instance-of v15, v9, Ljava/util/Collection;

    if-eqz v15, :cond_e

    move-object v15, v9

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_9

    :cond_e
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v15, :cond_10

    goto :goto_8

    :cond_f
    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    shr-int/lit8 v15, v4, 0x9

    and-int/lit8 v15, v15, 0x70

    invoke-static {v11, v1, v13, v15}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->b(Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/high16 v20, 0x70000

    if-eqz v9, :cond_24

    const v3, 0x186efb56

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_12

    if-ne v9, v14, :cond_13

    :cond_12
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v9, Ljava/util/Map;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    sget-object v18, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    sub-float/2addr v3, v15

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    new-instance v1, Laj0;

    move/from16 v21, v4

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Laj0;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v15, v4, v1, v13, v4}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v15, 0xe

    invoke-static {v1, v11, v4, v15}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_14

    if-ne v15, v14, :cond_15

    :cond_14
    new-instance v15, Lud;

    const/16 v4, 0xe

    invoke-direct {v15, v2, v4}, Lud;-><init>(Ljava/util/List;I)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v1, v4, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v15}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v15, v5, v13, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v4, v3

    iget-wide v2, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v18, v2

    iget-object v2, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v2, :cond_23

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_16

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x5d9308d9

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v15, v3, 0x1

    if-ltz v3, :cond_21

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v1

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    or-int v1, v1, v22

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    or-int v1, v1, v22

    move/from16 v22, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v22, :cond_18

    if-ne v1, v14, :cond_17

    goto :goto_d

    :cond_17
    move/from16 v22, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    new-instance v1, Lik0;

    move/from16 v22, v4

    const/4 v4, 0x0

    invoke-direct {v1, v10, v9, v2, v4}, Lik0;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    and-int v4, v21, v20

    move/from16 v23, v5

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    :goto_f
    or-int v4, v23, v4

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    move/from16 v5, v22

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v22

    or-int v4, v4, v22

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    or-int v4, v4, v22

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    or-int v4, v4, v22

    move-object/from16 v22, v2

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_1b

    if-ne v2, v14, :cond_1a

    goto :goto_10

    :cond_1a
    move-object v4, v2

    move/from16 v27, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v24, v11

    move-object/from16 v16, v12

    move/from16 v2, v21

    move-object/from16 v7, v22

    move-object v12, v6

    move-object/from16 v21, v10

    move/from16 v22, v15

    const/4 v15, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    new-instance v4, Lcy;

    move-object/from16 v16, v12

    move/from16 v2, v21

    move-object v12, v6

    move-object/from16 v21, v10

    move-object v10, v11

    move-object/from16 v6, p4

    move-object v11, v8

    move-object v8, v9

    move v9, v5

    move-object v5, v7

    move-object/from16 v7, v22

    move/from16 v22, v15

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v11}, Lcy;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;Ljava/util/Map;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V

    move-object/from16 v23, v5

    move-object/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit16 v5, v2, 0x380

    const/16 v10, 0x100

    if-ne v5, v10, :cond_1c

    const/4 v8, 0x1

    goto :goto_12

    :cond_1c
    move v8, v15

    :goto_12
    or-int/2addr v4, v8

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1d

    if-ne v5, v14, :cond_1e

    :cond_1d
    move-object v4, v7

    move v7, v3

    goto :goto_13

    :cond_1e
    move-object/from16 v4, p2

    move-object v8, v9

    goto :goto_14

    :goto_13
    new-instance v3, Ljk0;

    move-object v8, v9

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object v6, v12

    invoke-direct/range {v3 .. v9}, Ljk0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;Ljava/lang/String;Landroid/content/Context;ILkotlin/jvm/functions/Function0;I)V

    move-object v7, v4

    move-object v4, v5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v3

    :goto_14
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    invoke-static {v1, v3, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_15

    :cond_1f
    move-object/from16 v1, v19

    :goto_15
    if-nez v1, :cond_20

    const-string v1, ""

    :cond_20
    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v11, 0x0

    move-object v7, v1

    move-object v9, v8

    move-object/from16 v1, p4

    move v8, v3

    move v3, v10

    move-object v10, v13

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPHeaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v12

    move-object/from16 v12, v16

    move-object/from16 v1, v18

    move-object/from16 v10, v21

    move/from16 v3, v22

    move-object/from16 v7, v23

    move-object/from16 v11, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v4, v27

    move/from16 v21, v2

    goto/16 :goto_c

    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v19

    :cond_22
    move-object/from16 v4, p2

    move-object/from16 v1, p4

    move-object v10, v13

    const/4 v5, 0x1

    const/4 v15, 0x0

    invoke-static {v10, v15, v5, v15}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    move-object/from16 v8, p1

    goto/16 :goto_18

    :cond_23
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_24
    move v2, v4

    move-object v1, v5

    move-object v10, v13

    const/4 v5, 0x1

    const/4 v15, 0x0

    move-object/from16 v4, p2

    const v6, 0x18a57ae9

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->c:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_25
    invoke-interface {v3}, Landroidx/compose/runtime/IntState;->f()I

    move-result v16

    move-object/from16 v8, p1

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    and-int v2, v2, v20

    const/high16 v12, 0x20000

    if-ne v2, v12, :cond_26

    goto :goto_17

    :cond_26
    move v5, v15

    :goto_17
    or-int v2, v11, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_27

    if-ne v5, v14, :cond_28

    :cond_27
    new-instance v5, Ljx;

    const/16 v2, 0x1c

    invoke-direct {v5, v8, v1, v3, v2}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v14, v6

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move v3, v15

    move v15, v7

    invoke-static/range {v13 .. v22}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt;->a(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_19

    :cond_29
    move-object v8, v2

    move-object v4, v3

    move-object v1, v5

    move-object v10, v13

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_2a

    move-object v1, v0

    new-instance v0, Lkj0;

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v3, v4

    move-object v2, v8

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lkj0;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method
