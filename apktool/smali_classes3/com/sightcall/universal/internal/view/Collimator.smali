.class Lcom/sightcall/universal/internal/view/Collimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private cornerLength:F

.field private final corners:Landroid/graphics/Path;

.field private final cornersPaint:Landroid/graphics/Paint;

.field private final edgesPaint:Landroid/graphics/Paint;

.field private ratio:F

.field private final rect:Landroid/graphics/Rect;

.field private safeArea:F

.field private show:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    iput v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->show:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    new-instance v0, Lcom/sightcall/universal/internal/view/Collimator$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/internal/view/Collimator$1;-><init>(Lcom/sightcall/universal/internal/view/Collimator;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->edgesPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/sightcall/universal/internal/view/Collimator$2;

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/internal/view/Collimator$2;-><init>(Lcom/sightcall/universal/internal/view/Collimator;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornersPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/sightcall/universal/internal/view/Collimator$3;

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/internal/view/Collimator$3;-><init>(Lcom/sightcall/universal/internal/view/Collimator;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->show:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/Collimator;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v12, p1

    iget-object v13, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v6, p1

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    int-to-float v4, p1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->edgesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornersPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->edgesPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sightcall/universal/R$dimen;->universal_collimator_edge_stroke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->edgesPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    sget v4, Lcom/sightcall/universal/R$dimen;->universal_collimator_corner_stroke_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->edgesPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sightcall/graphik/R$color;->universal_collimator_edge:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornersPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sightcall/universal/R$dimen;->universal_collimator_corner_stroke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornersPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    sget v4, Lcom/sightcall/universal/R$dimen;->universal_collimator_corner_stroke_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornersPaint:Landroid/graphics/Paint;

    sget v3, Lcom/sightcall/graphik/R$color;->universal_collimator_corner:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Lcom/sightcall/universal/R$dimen;->universal_collimator_corner_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornerLength:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lcom/sightcall/graphik/R$color;->universal_collimator_background:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sightcall/universal/internal/view/Collimator;->updateRect(II)V

    return-void
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ratio()F
    .locals 0

    .line 7
    iget p0, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    return p0
.end method

.method public ratio(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    return-void
.end method

.method public safeArea()F
    .locals 0

    .line 7
    iget p0, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    return p0
.end method

.method public safeArea(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    return-void
.end method

.method public show(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->show:Z

    return-void
.end method

.method public updateRect(II)V
    .locals 4

    int-to-float p1, p1

    iget v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    div-float v0, p1, v0

    int-to-float p2, p2

    cmpg-float v0, v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    div-float v2, p1, v2

    invoke-direct {v0, v1, v1, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->ratio:F

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/sightcall/universal/internal/view/Collimator;->safeArea:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr p2, v2

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornerLength:F

    float-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->cornerLength:F

    float-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    int-to-float p2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/Collimator;->corners:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/Collimator;->rect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method
