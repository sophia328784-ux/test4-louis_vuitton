.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEyeMakeupMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;
    }
.end annotation


# instance fields
.field m_analyzing_frame_height:I

.field m_analyzing_frame_width:I

.field m_ear_line_distance_limit:F

.field m_ear_line_equation_a:F

.field m_ear_line_equation_b:F

.field m_ear_line_equation_c:F

.field m_eye_points:[Landroid/graphics/PointF;

.field public m_eye_scale_left_to_right:F

.field public m_is_flipped:Z

.field public m_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

.field m_oriented_eye_centers:[Landroid/graphics/PointF;

.field m_oriented_eye_points:[Landroid/graphics/PointF;

.field m_parabolic_polar_transform_bottom_left_dst_aligned_coeff:[F

.field m_parabolic_polar_transform_bottom_left_dst_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_bottom_left_src_aligned_coeff:[F

.field m_parabolic_polar_transform_bottom_left_src_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_bottom_right_dst_aligned_coeff:[F

.field m_parabolic_polar_transform_bottom_right_dst_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_bottom_right_src_aligned_coeff:[F

.field m_parabolic_polar_transform_bottom_right_src_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_top_left_dst_aligned_coeff:[F

.field m_parabolic_polar_transform_top_left_dst_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_top_left_src_aligned_coeff:[F

.field m_parabolic_polar_transform_top_left_src_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_top_right_dst_aligned_coeff:[F

.field m_parabolic_polar_transform_top_right_dst_center:Landroid/graphics/PointF;

.field m_parabolic_polar_transform_top_right_src_aligned_coeff:[F

.field m_parabolic_polar_transform_top_right_src_center:Landroid/graphics/PointF;

.field public m_ratio_of_actual_lower_lid_height_to_limited_height:F

.field public m_ratio_of_actual_upper_lid_height_to_limited_height:F

.field public m_rotation:I

.field m_target_eye_lower_lid_luma:F

.field m_target_level_orientation_cos:F

.field m_target_level_orientation_sin:F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_points:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_points:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_points:[Landroid/graphics/PointF;

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_points:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_centers:[Landroid/graphics/PointF;

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_centers:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_center:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_center:Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_aligned_coeff:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_aligned_coeff:[F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_center:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_center:Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_aligned_coeff:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_aligned_coeff:[F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_center:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_center:Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_aligned_coeff:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_aligned_coeff:[F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_center:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_center:Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_aligned_coeff:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_aligned_coeff:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_scale_left_to_right:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_a:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_b:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_c:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_distance_limit:F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;)V
    .locals 5

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_eye_lower_lid_luma:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_eye_lower_lid_luma:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_analyzing_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_analyzing_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_analyzing_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_analyzing_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_level_orientation_cos:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_level_orientation_cos:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_level_orientation_sin:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_target_level_orientation_sin:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_points:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_points:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_points:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_points:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_centers:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_oriented_eye_centers:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_src_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_left_dst_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_src_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_top_right_dst_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_src_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_aligned_coeff:[F

    iget-object v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_left_dst_aligned_coeff:[F

    aget v4, v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_center:Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_center:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    :goto_5
    if-ge v0, v2, :cond_5

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_aligned_coeff:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_src_aligned_coeff:[F

    aget v3, v3, v0

    aput v3, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_aligned_coeff:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_parabolic_polar_transform_bottom_right_dst_aligned_coeff:[F

    aget v3, v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_is_flipped:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_is_flipped:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata$EyeMode;

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ratio_of_actual_upper_lid_height_to_limited_height:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ratio_of_actual_upper_lid_height_to_limited_height:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ratio_of_actual_lower_lid_height_to_limited_height:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ratio_of_actual_lower_lid_height_to_limited_height:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_scale_left_to_right:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_eye_scale_left_to_right:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_a:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_a:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_b:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_b:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_c:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_equation_c:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_distance_limit:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;->m_ear_line_distance_limit:F

    return-void
.end method
