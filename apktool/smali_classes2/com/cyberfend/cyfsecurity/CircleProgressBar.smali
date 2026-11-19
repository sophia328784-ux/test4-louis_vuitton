.class public Lcom/cyberfend/cyfsecurity/CircleProgressBar;
.super Landroid/view/View;


# instance fields
.field public final b:F

.field public c:F

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public i:I

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->b:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->c:F

    const/16 p2, 0x64

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->d:I

    const/16 p2, 0x10e

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->i:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->j:Landroid/os/Handler;

    new-instance v0, Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/cyberfend/cyfsecurity/CircleProgressBar$1;-><init>(Lcom/cyberfend/cyfsecurity/CircleProgressBar;)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->k:Ljava/lang/Runnable;

    :try_start_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->f:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->h:Landroid/graphics/Paint;

    const v2, 0x7f060022

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->c:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->d:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->f:Landroid/graphics/RectF;

    iget v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->e:I

    int-to-float v4, v0

    iget-object v7, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->h:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p2, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->f:Landroid/graphics/RectF;

    iget p0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->b:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/4 v0, 0x0

    add-float/2addr v0, p0

    int-to-float p1, p1

    sub-float/2addr p1, p0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->d:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->i:I

    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->j:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setProgressBarColor(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->g:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
