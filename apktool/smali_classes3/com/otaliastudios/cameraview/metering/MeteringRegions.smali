.class public Lcom/otaliastudios/cameraview/metering/MeteringRegions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 10

    iget v0, p0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    int-to-float v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v6, v4, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v5

    sub-float v7, p1, v2

    add-float/2addr v4, v1

    add-float/2addr p1, v2

    invoke-direct {v3, v6, v7, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    new-instance v6, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    const/16 v7, 0x3e8

    invoke-direct {v6, v3, v7}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    mul-float/2addr v4, v3

    new-instance v3, Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v5

    sub-float v7, v6, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    sub-float v5, v1, v4

    add-float/2addr v6, v2

    add-float/2addr v1, v4

    invoke-direct {v3, v7, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v5, v0

    invoke-direct {v3, v4, v4, v5, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v6, v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->b:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v4, v5, v7, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v3, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    iget v2, v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->c:I

    invoke-direct {v3, v4, v2}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public final b(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->b:Landroid/graphics/RectF;

    iget v1, v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->c:I

    invoke-interface {p2, v2, v1}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->a(Landroid/graphics/RectF;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iget-object v4, v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->b:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {p1, v3}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {p1, v3}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {p1, v3}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {p1, v3}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    new-instance v3, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    iget v1, v1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->c:I

    invoke-direct {v3, v2, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
