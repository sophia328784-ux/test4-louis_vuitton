.class Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# virtual methods
.method public final a(Landroidx/cardview/widget/CardView$1;F)V
    .locals 4

    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->e:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->f:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->g:Z

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, v0, Landroidx/cardview/widget/RoundRectDrawable;->e:F

    iput-boolean v2, v0, Landroidx/cardview/widget/RoundRectDrawable;->f:Z

    iput-boolean v1, v0, Landroidx/cardview/widget/RoundRectDrawable;->g:Z

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->b(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->b(Landroidx/cardview/widget/CardViewDelegate;)V

    return-void
.end method

.method public final b(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 10

    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->a()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardViewDelegate;->c(IIII)V

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->e:F

    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    iget v0, v0, Landroidx/cardview/widget/RoundRectDrawable;->a:F

    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->d()Z

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_1

    float-to-double v4, p0

    sget-wide v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->a:D

    sub-double v6, v2, v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    double-to-float v1, v6

    goto :goto_0

    :cond_1
    sget v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->b:I

    move v1, p0

    :goto_0
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->d()Z

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz v4, :cond_2

    mul-float/2addr p0, v5

    float-to-double v4, p0

    sget-wide v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->a:D

    sub-double/2addr v2, v6

    float-to-double v6, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float p0, v2

    goto :goto_1

    :cond_2
    mul-float/2addr p0, v5

    :goto_1
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0, v1, p0}, Landroidx/cardview/widget/CardViewDelegate;->c(IIII)V

    return-void
.end method
