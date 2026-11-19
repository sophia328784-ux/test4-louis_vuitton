.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EyeContactInfo"
.end annotation


# instance fields
.field public catchlight_radius:F

.field public catchlight_threshold:F

.field public contour_shift_vector:Landroid/graphics/PointF;

.field public contour_shrink_ranges:[F

.field public contour_transform_factors:[F

.field public contour_transformed_points:[Landroid/graphics/PointF;

.field public eye_center:Landroid/graphics/PointF;

.field public eye_center_in_image:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center_in_image:Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transform_factors:[F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shift_vector:Landroid/graphics/PointF;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transformed_points:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transformed_points:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shrink_ranges:[F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center_in_image:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->eye_center_in_image:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transform_factors:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transform_factors:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shift_vector:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shift_vector:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    move v1, v0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transformed_points:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_transformed_points:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shrink_ranges:[F

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->contour_shrink_ranges:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->catchlight_radius:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->catchlight_radius:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->catchlight_threshold:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$EyeContactInfo;->catchlight_threshold:F

    return-void
.end method
