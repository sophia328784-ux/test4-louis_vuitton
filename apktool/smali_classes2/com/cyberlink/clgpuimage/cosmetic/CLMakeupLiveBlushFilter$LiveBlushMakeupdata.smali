.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveBlushMakeupdata"
.end annotation


# instance fields
.field public m_center:Landroid/graphics/PointF;

.field public m_cos_val:F

.field public m_is_flipped:Z

.field public m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

.field public m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

.field public m_rotation:I

.field public m_sin_val:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    return-void
.end method


# virtual methods
.method public ComputeData(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 9

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    iget v5, p2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v7

    mul-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iput v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iput v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    const/4 v7, 0x1

    iput v7, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iput v7, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    invoke-static {v8, v3, v4, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, v3, v4, p3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, p3, v3, p4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, p3, p4, p5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iput v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iput v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    iput v7, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iput v7, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, p3, p4, p6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, p3, p4, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    move-object/from16 v0, p8

    invoke-static {p2, p3, p4, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    move-object/from16 v0, p9

    invoke-static {p2, p3, p4, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    invoke-static {p2, p3, p0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->j(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;)V
    .locals 3

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_cos_val:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_sin_val:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_center:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_left_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_right_blush_roi:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->a:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->c:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->b:F

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$a;->d:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_rotation:I

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_is_flipped:Z

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->m_is_flipped:Z

    return-void
.end method

.method public SetBlushFeaturePts(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-static {p4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p4

    invoke-static {p5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p5

    invoke-static {p6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p6

    invoke-static {p7}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p7

    invoke-static {p8}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p8

    invoke-static {p9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p9

    invoke-static {p10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter;->k(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p10

    invoke-virtual/range {p0 .. p10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;->ComputeData(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method
