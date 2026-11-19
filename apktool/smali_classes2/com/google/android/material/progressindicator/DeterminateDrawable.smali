.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;"
    }
.end annotation


# static fields
.field public static final z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# instance fields
.field public final o:Lcom/google/android/material/progressindicator/DrawingDelegate;

.field public final p:Landroidx/dynamicanimation/animation/SpringForce;

.field public final q:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

.field public s:F

.field public t:Z

.field public final u:Landroid/animation/ValueAnimator;

.field public v:Landroid/animation/ValueAnimator;

.field public w:Landroid/animation/TimeInterpolator;

.field public x:Landroid/animation/TimeInterpolator;

.field public y:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->t:Z

    iput-object p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    new-instance p1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->h:Z

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->a(F)V

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/google/android/material/progressindicator/DeterminateDrawable;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lb7;

    invoke-direct {v1, p0, p2, p3}, Lb7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->b(Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->m:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->j:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->j:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->g(ZZZ)Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->b()F

    move-result v4

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->f()Z

    move-result v5

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->e()Z

    move-result v6

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v7, v1, Lcom/google/android/material/progressindicator/DrawingDelegate;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v7}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->d()V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/progressindicator/DrawingDelegate;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->c()F

    move-result v1

    iget-object v9, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput v1, v9, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->f:F

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v10, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->c:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, v10, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->e:[I

    const/4 v11, 0x0

    aget v1, v1, v11

    iput v1, v9, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->c:I

    iget v1, v10, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->i:I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    if-lez v1, :cond_2

    instance-of v2, v2, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    if-eqz v2, :cond_1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v2, v9, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v2, v4, v5}, Landroidx/core/math/MathUtils;->a(FFF)F

    move-result v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v5

    float-to-int v1, v2

    goto :goto_0

    :goto_1
    iget v4, v9, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    iget v6, v10, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->f:I

    iget v7, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->l:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/DrawingDelegate;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_2

    :cond_2
    iget v6, v10, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->f:I

    iget v7, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->l:I

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/DrawingDelegate;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_2
    iget v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->l:I

    iget-object v4, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v4, p1, v3, v9, v1}, Lcom/google/android/material/progressindicator/DrawingDelegate;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;I)V

    iget-object v1, v10, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->e:[I

    aget v1, v1, v11

    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->l:I

    invoke-virtual {v4, v1, v0, p1, v3}, Lcom/google/android/material/progressindicator/DrawingDelegate;->b(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_3
    return-void
.end method

.method public final g(ZZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->d:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->h(ZZZ)Z

    move-result p0

    return p0
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->l:I

    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->e()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->o:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->f()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final h(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->h(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->d:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "animator_duration_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->t:Z

    return p1

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->t:Z

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p3, p2

    iget-object p0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->p:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    return p1
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->g()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iput v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 6

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x460ca000    # 9000.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->t:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->r:Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    const v4, 0x461c4000    # 10000.0f

    iget-object v5, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->q:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->g()V

    div-float/2addr p1, v4

    iput p1, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput v0, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    iget p0, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->b:F

    mul-float/2addr p0, v4

    iput p0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iput-boolean v2, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->c:Z

    invoke-virtual {v5, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->f(F)V

    :goto_1
    return v2
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->g(ZZZ)Z

    move-result p0

    return p0
.end method
