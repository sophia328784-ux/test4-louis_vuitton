.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LipstickData"
.end annotation


# instance fields
.field public m_background_image_height:I

.field public m_background_image_width:I

.field public m_blend_weight_and_lvel_map:[B

.field public m_camera_matrix:[F

.field public m_color_b:[I

.field public m_color_g:[I

.field public m_color_r:[I

.field public m_enable_color_shimmer_0:Z

.field public m_enable_color_shimmer_1:Z

.field public m_face_3d_xyz:[F

.field public m_force_bright_threshold_0:I

.field public m_force_bright_threshold_1:I

.field public m_fullness:I

.field public m_fullness_adjusting_factor:F

.field public m_fullness_shadow_adjusting_factor:F

.field public m_gloss_contrast_scale_0:F

.field public m_gloss_contrast_scale_1:F

.field public m_gloss_contrast_shift_0:I

.field public m_gloss_contrast_shift_1:I

.field public m_gloss_contrast_shrink_0:F

.field public m_gloss_contrast_shrink_1:F

.field public m_is_flipped:Z

.field public m_is_lip_shape_enabled:Z

.field public m_is_texcoord_changed:Z

.field public m_is_upper_lower_omber:Z

.field public m_is_valid:Z

.field public m_layer_count:I

.field public m_mask_height:I

.field public m_mask_width:I

.field public m_mouth_layer_mask_data:[B

.field public m_mouth_mask_data:[B

.field public m_normal_pnp_matrix:[F

.field public m_normal_vectors:[F

.field public m_num_triangles:I

.field public m_pnp_matrix:[F

.field public m_primer_color:[I

.field public m_primer_mask_height:I

.field public m_primer_mask_width:I

.field public m_primer_roi_height:I

.field public m_primer_roi_width:I

.field public m_primer_roi_x:I

.field public m_primer_roi_y:I

.field public m_roi_height:I

.field public m_roi_width:I

.field public m_roi_x:I

.field public m_roi_y:I

.field public m_rotation:I

.field public m_shimmer_color_0:[I

.field public m_shimmer_color_1:[I

.field public m_shimmer_data:[B

.field public m_shimmer_height:I

.field public m_shimmer_intensity_0:F

.field public m_shimmer_intensity_1:F

.field public m_shimmer_normalize_factor_0:F

.field public m_shimmer_normalize_factor_1:F

.field public m_shimmer_width:I

.field public m_smooth_kernel_size:I

.field public m_texcoords:[F

.field public m_use_median_0:Z

.field public m_use_median_1:Z

.field public m_version:I

.field public m_wrinkless:I

.field public mp_primer_blend_weight_and_level_mask:[B

.field public mp_primer_data:[B

.field mp_template_data:[B

.field public template_height:I

.field public template_stride:I

.field public template_width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_blend_weight_and_lvel_map:[B

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_r:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_g:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_b:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_0:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_1:[I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_blend_weight_and_level_mask:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_face_3d_xyz:[F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_texcoord_changed:Z

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_camera_matrix:[F

    const/16 v3, 0xc

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_pnp_matrix:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_pnp_matrix:[F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_template_data:[B

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_stride:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_adjusting_factor:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_shadow_adjusting_factor:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_smooth_kernel_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_wrinkless:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_lip_shape_enabled:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_height:I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_data:[B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_color:[I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_version:I

    return-void
.end method


# virtual methods
.method public AllocByteArray(IIIII)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_height:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_height:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x3

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_mask_data:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_layer_mask_data:[B

    :cond_1
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_width:I

    if-ne p1, p3, :cond_2

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_height:I

    if-eq p1, p4, :cond_3

    :cond_2
    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_width:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_height:I

    mul-int/2addr p3, p4

    shl-int/lit8 p1, p3, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_data:[B

    :cond_3
    if-gtz p5, :cond_5

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    if-eq p1, p5, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    mul-int/lit8 p1, p5, 0x9

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_face_3d_xyz:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    mul-int/lit8 p5, p5, 0x6

    new-array p1, p5, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    return-void
.end method

.method public AllocPrimerArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_data:[B

    return-void
.end method

.method public AllocTemplateArray(II)V
    .locals 1

    mul-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_template_data:[B

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_height:I

    shl-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_stride:I

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;)V
    .locals 4

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_width:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_height:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_mask_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_mask_data:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_layer_mask_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mouth_layer_mask_data:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_data:[B

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_mask_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_background_image_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_background_image_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_background_image_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_background_image_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_scale_0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_scale_0:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_scale_1:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_scale_1:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shift_0:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shift_0:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shift_1:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shift_1:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shrink_0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shrink_0:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shrink_1:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_gloss_contrast_shrink_1:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_force_bright_threshold_0:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_force_bright_threshold_0:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_force_bright_threshold_1:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_force_bright_threshold_1:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_use_median_0:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_use_median_0:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_use_median_1:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_use_median_1:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_normalize_factor_0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_normalize_factor_0:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_normalize_factor_1:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_normalize_factor_1:F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_blend_weight_and_lvel_map:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_blend_weight_and_lvel_map:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_flipped:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_flipped:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_layer_count:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_layer_count:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_upper_lower_omber:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_upper_lower_omber:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_r:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_r:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_g:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_g:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_color_b:[I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_enable_color_shimmer_0:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_enable_color_shimmer_0:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_enable_color_shimmer_1:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_enable_color_shimmer_1:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_0:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_0:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_1:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_color_1:[I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_intensity_0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_intensity_0:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_intensity_1:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_shimmer_intensity_1:F

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_valid:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_num_triangles:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_face_3d_xyz:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v0, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_face_3d_xyz:[F

    mul-int/lit8 v3, v0, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_face_3d_xyz:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_vectors:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_texcoords:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_camera_matrix:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_pnp_matrix:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_normal_pnp_matrix:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_template_data:[B

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_width:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->template_height:I

    invoke-virtual {p0, v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->AllocTemplateArray(II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_template_data:[B

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_template_data:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_adjusting_factor:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_adjusting_factor:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_shadow_adjusting_factor:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_fullness_shadow_adjusting_factor:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_smooth_kernel_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_smooth_kernel_size:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_wrinkless:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_wrinkless:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_lip_shape_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_is_lip_shape_enabled:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_width:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_mask_height:I

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_data:[B

    :cond_3
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_blend_weight_and_level_mask:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->mp_primer_blend_weight_and_level_mask:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_color:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_primer_color:[I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_version:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;->m_version:I

    return-void
.end method
