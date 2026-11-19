.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1"
    f = "ThematicPlpThemesOverlay.kt"
    l = {
        0xd0,
        0xd9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:F

.field public c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/animation/core/Animatable;

.field public final synthetic g:F

.field public final synthetic h:F


# direct methods
.method public constructor <init>(FFLandroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->d:F

    iput p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->e:F

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->f:Landroidx/compose/animation/core/Animatable;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->g:F

    iput p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->h:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->g:F

    iget v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->h:F

    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->d:F

    iget v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->e:F

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->f:Landroidx/compose/animation/core/Animatable;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;-><init>(FFLandroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->c:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->d:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->b:F

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v11, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->e:F

    add-float/2addr p1, v1

    mul-float v1, p1, v2

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v1}, Ljava/lang/Float;-><init>(F)V

    const/4 p1, 0x0

    sget-object v6, Landroidx/compose/animation/core/EasingKt;->b:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v8, 0x1f4

    invoke-static {v8, p1, v6, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    iput v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->b:F

    iput v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->c:I

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->f:Landroidx/compose/animation/core/Animatable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xc

    move-object v11, p0

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v2}, Ljava/lang/Float;-><init>(F)V

    iget p0, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->h:F

    const/4 p1, 0x4

    iget v2, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->g:F

    invoke-static {v2, p0, p1, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v8

    iput v1, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->b:F

    iput v5, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->c:I

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;->f:Landroidx/compose/animation/core/Animatable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xc

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
