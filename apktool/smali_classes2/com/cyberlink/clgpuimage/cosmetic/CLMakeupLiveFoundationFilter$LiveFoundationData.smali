.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFoundationData"
.end annotation


# instance fields
.field analyzing_frame_height:I

.field analyzing_frame_width:I

.field eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

.field eyes_data:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

.field fade_out_mask:[B

.field forehead_neck_mask:[B

.field glow_intensity:I

.field highlight_mask:[B

.field is_enabled:Z

.field is_front_camera:Z

.field is_valid:Z

.field mouth_mask:[B

.field mouth_mask_height:I

.field mouth_mask_width:I

.field mouth_roi_height:I

.field mouth_roi_width:I

.field mouth_roi_x:I

.field mouth_roi_y:I

.field rotation:I

.field skin_cb_average:F

.field skin_cr_average:F

.field skin_luma_average:F

.field skin_luma_average_left_part:F

.field skin_luma_average_right_part:F

.field skin_luma_standard_deviation:F

.field skin_mask_forehead_face_boundary:F

.field skin_mask_roi_bottom:F

.field skin_mask_roi_height:I

.field skin_mask_roi_left:F

.field skin_mask_roi_right:F

.field skin_mask_roi_top:F

.field skin_mask_roi_width:I

.field skin_mask_size_height:I

.field skin_mask_size_width:I

.field skin_probability_mask:[B

.field skin_region_roi_rect_rotated_cos:F

.field skin_region_roi_rect_rotated_sin:F

.field smooth_intensity:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_valid:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->glow_intensity:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->smooth_intensity:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->highlight_mask:[B

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->fade_out_mask:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask:[B

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->rotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_front_camera:Z

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eyes_data:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_left_part:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_right_part:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    new-instance v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    invoke-direct {v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public AllocByteArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    mul-int/2addr p1, p2

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->highlight_mask:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->fade_out_mask:[B

    return-void
.end method

.method public AllocMouthMaskBuffer(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_valid:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_enabled:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->glow_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->glow_intensity:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->smooth_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->smooth_intensity:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->highlight_mask:[B

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->highlight_mask:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->fade_out_mask:[B

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_3
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->fade_out_mask:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_front_camera:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->is_front_camera:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_standard_deviation:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_standard_deviation:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cb_average:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cb_average:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cr_average:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cr_average:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_left_part:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_left_part:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_right_part:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_right_part:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eye_data:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eyes_data:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->eyes_data:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;

    invoke-virtual {v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationEyeData;)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask:[B

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_4
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_mask_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_height:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->mouth_roi_height:I

    return-void
.end method
