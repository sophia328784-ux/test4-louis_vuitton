.class public Lcom/sightcall/universal/ui/IndeterminateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;,
        Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;
    }
.end annotation


# static fields
.field private static final EXTRA_PADDING_SAFE_ZONE:F = 0.5f


# instance fields
.field private final animator:Landroid/animation/Animator;

.field private final drawingBounds:Landroid/graphics/RectF;

.field private endAngle:F

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private rotation:F

.field private startAngle:F


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->drawingBounds:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->b(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->a(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->padding:F

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createIndeterminateDrawableAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable;-><init>(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->drawingBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->rotation:F

    iget v2, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->startAngle:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->endAngle:F

    sub-float/2addr v3, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->drawingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float v1, v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->drawingBounds:Landroid/graphics/RectF;

    iget p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->padding:F

    add-float/2addr v1, p0

    add-float/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setEndAngle(F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->endAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->rotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->startAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable;->animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method
