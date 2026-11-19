.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpWishListTopBarButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V
    .locals 9

    if-eqz p3, :cond_0

    const-string v0, "PdpWishListTopBarButton"

    invoke-static {p3, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p3

    :cond_0
    move-object v1, p3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p3, 0x78e627e1

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p2, p1

    invoke-virtual {v6, p5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_1

    :cond_2
    const/16 p3, 0x10

    :goto_1
    or-int/2addr p2, p3

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x100

    goto :goto_2

    :cond_3
    const/16 p3, 0x80

    :goto_2
    or-int/2addr p2, p3

    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p3, 0x800

    goto :goto_3

    :cond_4
    const/16 p3, 0x400

    :goto_3
    or-int/2addr p2, p3

    and-int/lit16 p3, p2, 0x493

    const/16 v0, 0x492

    const/4 v2, 0x1

    if-eq p3, v0, :cond_5

    move p3, v2

    goto :goto_4

    :cond_5
    const/4 p3, 0x0

    :goto_4
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {v6, v0, p3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p3, Lj9;

    invoke-direct {p3, p5, p0, v2}, Lj9;-><init>(ZII)V

    const v0, 0x45356803

    invoke-static {v0, p3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 p3, p2, 0x9

    and-int/lit8 p3, p3, 0xe

    const/high16 v0, 0x180000

    or-int/2addr p3, v0

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x70

    or-int v7, p3, p2

    const/16 v8, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_6
    move-object v0, p4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    move-object v4, v0

    new-instance v0, Le6;

    move v3, p0

    move v5, p1

    move v2, p5

    invoke-direct/range {v0 .. v5}, Le6;-><init>(Landroidx/compose/ui/Modifier;ZILkotlin/jvm/functions/Function0;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "WishlistLoadingAnimation"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0x79f39b1e

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    or-int/lit8 v3, v1, 0x6

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-eq v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v10

    :goto_0
    and-int/2addr v3, v6

    invoke-virtual {v8, v3, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-static {v2, v8, v10}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v9, 0x3fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v3

    invoke-static {v10, v8}, Lcom/vuitton/android/designkit/components/LoadingExtKt;->b(ZLandroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v13

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v2}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v2, :cond_3

    :cond_2
    new-instance v5, Lx;

    const/16 v2, 0x8

    invoke-direct {v5, v3, v2}, Lx;-><init>(Lcom/airbnb/lottie/compose/LottieAnimationState;I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x0

    const v24, 0x1fdf8

    const/4 v7, 0x0

    move-object/from16 v21, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v4 .. v24}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    goto :goto_1

    :cond_4
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lqe;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v1, v4}, Lqe;-><init>(Landroidx/compose/ui/Modifier;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
