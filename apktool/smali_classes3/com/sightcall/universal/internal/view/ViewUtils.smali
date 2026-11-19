.class public Lcom/sightcall/universal/internal/view/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_INT:F

.field public static final MAX_IN_BOUNDS:F

.field public static final MINIMUM_TIME_INTERVAL_FOR_POINTER:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FFFF"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_INT:F

    const-string v0, "FFFE"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_IN_BOUNDS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaddingTakenByFitSystemWindows(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/view/ViewUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/internal/view/ViewUtils$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static addViewSilently(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static applyThumbnailEffects(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$bool;->universal_thumbnail_outline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/sightcall/universal/internal/view/RoundRectOutlineProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/internal/view/RoundRectOutlineProvider;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/view/RoundRectOutlineProvider;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$bool;->universal_thumbnail_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$dimen;->universal_thumbnail_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_3
    return-void
.end method

.method public static floatPercentToIntPercent(F)I
    .locals 1

    sget v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_INT:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static floatPercentToIntPercentBounded(FZ)I
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget p0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_INT:F

    goto :goto_0

    :cond_0
    sget v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_IN_BOUNDS:F

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    :cond_1
    mul-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public static intPercentBoundedToFloatPixel(IIZ)F
    .locals 2

    int-to-float p0, p0

    sget v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_IN_BOUNDS:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    if-eqz p2, :cond_1

    sub-float p0, v0, p0

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static intPercentToFloatPercent(I)F
    .locals 1

    int-to-float p0, p0

    sget v0, Lcom/sightcall/universal/internal/view/ViewUtils;->MAX_INT:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static remap(FFFFF)F
    .locals 0

    .line 11
    sub-float/2addr p4, p3

    sub-float/2addr p0, p1

    mul-float/2addr p0, p4

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    add-float/2addr p0, p3

    return p0
.end method

.method public static remap(IIIII)I
    .locals 1

    int-to-float v0, p3

    sub-int/2addr p4, p3

    sub-int/2addr p0, p1

    mul-int/2addr p0, p4

    int-to-float p0, p0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static remapLocalCoordinates([FFFLandroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v5

    iget p1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    div-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v4

    return-void

    :cond_1
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    aput p1, p0, v4

    aput p1, p0, v5

    return-void

    :cond_2
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static remapRemoteCoordinates([FFFII)V
    .locals 2

    if-eqz p0, :cond_0

    .line 35
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    int-to-float p3, p3

    mul-float/2addr p1, p3

    const/4 p3, 0x0

    .line 36
    aput p1, p0, p3

    int-to-float p1, p4

    mul-float/2addr p2, p1

    const/4 p1, 0x1

    .line 37
    aput p2, p0, p1

    return-void

    .line 38
    :cond_0
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static remapRemoteCoordinates([FFFLandroid/graphics/RectF;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    const/4 p1, 0x0

    aput v1, p0, p1

    iget p1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p2

    add-float/2addr p3, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    return-void

    :cond_0
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static removeViewSilently(Landroid/view/WindowManager;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
