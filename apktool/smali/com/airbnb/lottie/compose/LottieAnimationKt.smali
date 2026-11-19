.class public abstract Lcom/airbnb/lottie/compose/LottieAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/airbnb/lottie/compose/LottieDynamicProperties;",
        "setDynamicProperties",
        "",
        "progress",
        "lottie-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v0, p1

    move/from16 v11, p8

    const-string v1, "LottieAnimation"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x4f5919ed

    move-object/from16 v3, p5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v14, v0

    and-int/lit8 v0, v11, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move/from16 v3, p2

    :goto_0
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move/from16 v4, p3

    :goto_1
    sget-object v19, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    and-int/lit16 v0, v11, 0x4000

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object/from16 v21, v0

    goto :goto_2

    :cond_4
    move-object/from16 v21, p4

    :goto_2
    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v23, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    sget-object v27, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v8, 0x380

    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v0

    move v3, v4

    move v4, v6

    const v1, 0xb094889

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->w(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_6

    :cond_5
    new-instance v2, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$6$1;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$6$1;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    shl-int/lit8 v0, p6, 0x3

    and-int/lit16 v0, v0, 0x380

    const v1, 0x40000008    # 2.000002f

    or-int/2addr v0, v1

    shr-int/lit8 v1, p6, 0xc

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v30, v0, v1

    const v31, 0x8000

    const/16 v32, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v12, p0

    move-object/from16 v29, v7

    invoke-static/range {v12 .. v32}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v27

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_7

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;

    move-object/from16 v1, p0

    move/from16 v9, p6

    move/from16 v10, p7

    move-object v2, v14

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$7;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/BiasAlignment;Lcom/airbnb/lottie/AsyncUpdates;III)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p20

    const-string v3, "LottieAnimation"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x16d2bdc6

    move-object/from16 v5, p17

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move/from16 v13, p3

    :goto_0
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move/from16 v14, p4

    :goto_1
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    move/from16 v15, p5

    :goto_2
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    move/from16 v7, p6

    :goto_3
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_6

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    move-object v8, v3

    goto :goto_4

    :cond_6
    move-object/from16 v8, p7

    :goto_4
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_7

    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    move/from16 v9, p8

    :goto_5
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_8

    const/4 v12, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_9

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    move-object v11, v3

    goto :goto_7

    :cond_9
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_a

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    goto :goto_8

    :cond_a
    move-object/from16 v3, p11

    :goto_8
    and-int/lit16 v6, v2, 0x1000

    if-eqz v6, :cond_b

    const/16 v17, 0x1

    goto :goto_9

    :cond_b
    move/from16 v17, p12

    :goto_9
    and-int/lit16 v6, v2, 0x2000

    if-eqz v6, :cond_c

    const/16 v18, 0x0

    goto :goto_a

    :cond_c
    move/from16 v18, p13

    :goto_a
    and-int/lit16 v6, v2, 0x4000

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_b

    :cond_d
    move-object/from16 v6, p14

    :goto_b
    const v16, 0x8000

    and-int v16, v2, v16

    if-eqz v16, :cond_e

    sget-object v16, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    goto :goto_c

    :cond_e
    move-object/from16 v16, p15

    :goto_c
    const/high16 v19, 0x10000

    and-int v19, v2, v19

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_d

    :cond_f
    move/from16 v19, p16

    :goto_d
    sget-object v20, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 p2, 0x0

    const v10, 0xb0932b9

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->w(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v5, :cond_10

    new-instance v10, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v10}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v10, Lcom/airbnb/lottie/LottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v2, 0xb0932e8

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->w(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_11

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v2, Landroid/graphics/Matrix;

    move-object/from16 p3, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v2, 0xb093338

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->w(I)V

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    move/from16 p4, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez p4, :cond_12

    if-ne v2, v5, :cond_13

    :cond_12
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v21, v2

    check-cast v21, Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v5, 0xb09336c

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->w(I)V

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->b()F

    move-result v5

    const/16 v20, 0x0

    cmpg-float v5, v5, v20

    if-nez v5, :cond_15

    :cond_14
    move v1, v15

    move-object v15, v6

    move v6, v1

    move-object v1, v0

    move-object v0, v4

    move-object v10, v12

    move v4, v13

    move v5, v14

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v17, v19

    move-object v12, v3

    move v3, v2

    goto/16 :goto_e

    :cond_15
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v5, v10

    move-object v10, v1

    iget-object v1, v10, Lcom/airbnb/lottie/LottieComposition;->k:Landroid/graphics/Rect;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v1

    move-object/from16 p2, v2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p4, v3

    new-instance v3, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    invoke-direct {v3, v1, v2}, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;-><init>(II)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object v3, v0

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;

    move-object/from16 v2, v16

    move/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, p4

    move-object/from16 v24, v1

    move-object/from16 v23, v3

    move-object/from16 v22, v4

    move-object v3, v11

    move-object/from16 v1, v20

    move-object/from16 v20, p1

    move-object/from16 v4, p3

    move-object v11, v6

    move v6, v7

    move/from16 v7, v19

    move-object/from16 v19, p2

    invoke-direct/range {v0 .. v21}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;-><init>(Landroid/graphics/Rect;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/Alignment;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;ZZLcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/AsyncUpdates;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Lcom/airbnb/lottie/compose/LottieDynamicProperties;ZZZZZZLandroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    move/from16 v1, v16

    move-object/from16 v16, v9

    move v9, v1

    move-object v10, v12

    move v4, v13

    move v5, v14

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v1, v24

    move-object v12, v2

    move/from16 v17, v7

    move-object v2, v0

    move v7, v6

    move v6, v15

    move-object/from16 v0, v22

    move-object v15, v11

    move-object v11, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object v1, v0

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$3;

    move-object/from16 v2, p1

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v25, v1

    move-object/from16 v3, v23

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$3;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZIII)V

    move-object/from16 v1, v25

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :goto_e
    shr-int/lit8 v2, p18, 0x6

    and-int/lit8 v2, v2, 0xe

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object v2, v0

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object v3, v1

    move-object/from16 v26, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZIII)V

    move-object/from16 v2, v26

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
