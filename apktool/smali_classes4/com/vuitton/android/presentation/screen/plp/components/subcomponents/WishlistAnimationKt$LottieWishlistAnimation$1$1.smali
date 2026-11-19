.class final Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;
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
    c = "com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt$LottieWishlistAnimation$1$1"
    f = "WishlistAnimation.kt"
    l = {
        0x5c,
        0x5d,
        0x64
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

.field public final synthetic i:Landroidx/compose/animation/core/Animatable;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lcom/airbnb/lottie/compose/LottieCompositionResult;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;Lcom/airbnb/lottie/compose/LottieCompositionResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->g:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->h:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->i:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->j:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->k:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->j:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->k:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->g:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->h:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->i:Landroidx/compose/animation/core/Animatable;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;Lcom/airbnb/lottie/compose/LottieCompositionResult;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->f:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->g:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, p0

    goto/16 :goto_4

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->e:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->d:F

    iget v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->c:F

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->b:Z

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->i:Landroidx/compose/animation/core/Animatable;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->h:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a:Z

    if-eqz v6, :cond_4

    move p1, v8

    goto :goto_0

    :cond_4
    move p1, v7

    :goto_0
    if-eqz v6, :cond_5

    move v3, v7

    goto :goto_1

    :cond_5
    move v3, v8

    :goto_1
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->k:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/LottieComposition;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->b()F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->c(F)I

    move-result v7

    goto :goto_2

    :cond_6
    const/16 v7, 0x320

    :goto_2
    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p1}, Ljava/lang/Float;-><init>(F)V

    iput-boolean v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->b:Z

    iput p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->c:F

    iput v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->d:F

    iput v7, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->e:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->f:I

    invoke-virtual {v1, v8, p0}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v4, p1

    move v1, v7

    :goto_3
    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v3}, Ljava/lang/Float;-><init>(F)V

    const/4 p1, 0x0

    sget-object v7, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    invoke-static {v1, p1, v7, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    iput-boolean v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->b:Z

    iput v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->c:F

    iput v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->d:F

    iput v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->f:I

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->i:Landroidx/compose/animation/core/Animatable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0xc

    move-object v12, p0

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_4
    iget-object p0, v12, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    move-object v12, p0

    iget-boolean p0, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a:Z

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, v7}, Ljava/lang/Float;-><init>(F)V

    iput v3, v12, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt$LottieWishlistAnimation$1$1;->f:I

    invoke-virtual {v1, p0, v12}, Landroidx/compose/animation/core/Animatable;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    :goto_6
    return-object v0

    :cond_b
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
