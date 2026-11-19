.class public final synthetic Lft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lft;->a:I

    iput-object p1, p0, Lft;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget v0, p0, Lft;->a:I

    iget-object p0, p0, Lft;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->a(F)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/view/ScreenFlashView;

    sget v0, Landroidx/camera/view/ScreenFlashView;->d:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    const-string v1, "ScreenFlashView"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_3
    move-object v0, p0

    check-cast v0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [F

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float v1, p0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float v2, p0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->a(FFFF[F)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->E:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    iget-object v2, v0, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    iget v4, v2, Lcom/google/android/filament/utils/Float4;->a:F

    iget v5, v2, Lcom/google/android/filament/utils/Float4;->b:F

    iget v2, v2, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v2, v3, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v2, v2

    iget v4, v3, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    iget v2, v3, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v2, v2

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    new-instance v4, Lcom/google/android/filament/utils/Float3;

    iget v5, v3, Lcom/google/android/filament/utils/Float4;->a:F

    iget v6, v3, Lcom/google/android/filament/utils/Float4;->b:F

    iget v3, v3, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v4, v5, v6, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v3, v4, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v3, v3

    iget v5, v4, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v5, v5

    add-float/2addr v5, v3

    iget v3, v4, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v3, v3

    add-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v0, v0, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    new-instance v4, Lcom/google/android/filament/utils/Float3;

    iget v5, v0, Lcom/google/android/filament/utils/Float4;->a:F

    iget v6, v0, Lcom/google/android/filament/utils/Float4;->b:F

    iget v0, v0, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v0, v4, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v0, v0

    iget v5, v4, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v5, v5

    add-float/2addr v5, v0

    iget v0, v4, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v0, v0

    add-float/2addr v0, v5

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v0, v1, Lcom/google/android/filament/utils/Float3;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/google/android/material/math/MathUtils;->c(FFF)F

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->T:F

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->E:I

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, p1, p1, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v1}, Lcom/google/android/filament/utils/MatrixKt;->a(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/airbnb/lottie/LottieDrawable;

    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->O:Ljava/util/List;

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Lcom/airbnb/lottie/AsyncUpdates;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/airbnb/lottie/L;->a:Lcom/airbnb/lottie/AsyncUpdates;

    :goto_0
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->c()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->r(F)V

    :cond_2
    :goto_1
    return-void

    :pswitch_6
    check-cast p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->w:Landroid/animation/TimeInterpolator;

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    iput p0, p1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->e:F

    return-void

    :pswitch_7
    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    sget v0, Landroidx/media3/ui/DefaultTimeBar;->Q:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/media3/ui/DefaultTimeBar;->G:F

    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    sget v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->K:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->E:F

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
