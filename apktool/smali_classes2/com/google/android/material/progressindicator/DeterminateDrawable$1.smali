.class Lcom/google/android/material/progressindicator/DeterminateDrawable$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
        "*>;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget p0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final b(Ljava/lang/Object;F)V
    .locals 2

    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    const p0, 0x461c4000    # 10000.0f

    div-float p0, p2, p0

    sget-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput p0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    float-to-int p0, p2

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->c:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->b(Z)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->b:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->a:Landroid/view/animation/LinearInterpolator;

    const v1, 0x7f040482

    invoke-static {p2, v1, v0}, Lcom/google/android/material/motion/MotionUtils;->d(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->x:Landroid/animation/TimeInterpolator;

    const v1, 0x7f04047a

    invoke-static {p2, v1, v0}, Lcom/google/android/material/motion/MotionUtils;->d(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->y:Landroid/animation/TimeInterpolator;

    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lft;

    invoke-direct {v1, p1, v0}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    int-to-float p0, p0

    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float p2, p0, p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p2, :cond_2

    const p2, 0x460ca000    # 9000.0f

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    iget p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->s:F

    cmpl-float p2, p0, p2

    iget-object v1, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->s:F

    cmpl-float p0, p0, v0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->x:Landroid/animation/TimeInterpolator;

    iput-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->w:Landroid/animation/TimeInterpolator;

    iget-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    iget-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->y:Landroid/animation/TimeInterpolator;

    iput-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->w:Landroid/animation/TimeInterpolator;

    iget-object p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput p0, p2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->e:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
