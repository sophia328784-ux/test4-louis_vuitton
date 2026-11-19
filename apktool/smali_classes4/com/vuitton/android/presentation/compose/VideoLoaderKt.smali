.class public abstract Lcom/vuitton/android/presentation/compose/VideoLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    const-string v0, "VideoLoader"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    const v1, 0x104e35af

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_1

    or-int/lit8 v1, p3, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p3

    :goto_1
    or-int/lit8 v1, v1, 0x30

    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    and-int/2addr v1, v4

    invoke-virtual {v7, v1, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_4
    sget-object p1, Lcom/vuitton/android/presentation/loading/LoadingMode;->LightMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-static {p2, v7, v5}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object p2

    sget-object v0, Lcom/vuitton/android/presentation/loading/LoadingMode;->DarkMode:Lcom/vuitton/android/presentation/loading/LoadingMode;

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    invoke-static {v4, v7}, Lcom/vuitton/android/designkit/components/LoadingExtKt;->b(ZLandroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v6

    invoke-virtual {p2}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v9, 0x8000

    const v10, 0x3fbfbc

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/high16 v8, 0x180000

    invoke-static/range {v2 .. v10}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->a(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/Composer;III)V

    :goto_4
    move-object v1, p0

    move-object v2, p1

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_4

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Li31;

    const/4 v5, 0x4

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Li31;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;III)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
