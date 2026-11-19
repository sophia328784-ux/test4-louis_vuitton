.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HairDyeData"
.end annotation


# static fields
.field public static final m_max_target_color_count:I = 0x4


# instance fields
.field public m_alpha_adjuster:[I

.field public m_analyzing_frame_height:I

.field public m_analyzing_frame_width:I

.field public m_bound_gradient_map_data:[B

.field public m_gamma_table:[B

.field public m_hair_bottom_x:F

.field public m_hair_bottom_y:F

.field public m_hair_ombre_mapping_range:F

.field public m_hair_ombre_range:F

.field public m_hair_ombre_y:F

.field public m_hair_top_x:F

.field public m_hair_top_y:F

.field public m_is_enabled:Z

.field public m_is_flip:Z

.field public m_mask_center_x:F

.field public m_mask_center_y:F

.field public m_median_gray:I

.field public m_misc_tables:[B

.field public m_roi_height:I

.field public m_roi_width:I

.field public m_roi_x:I

.field public m_roi_y:I

.field public m_rotation:I

.field public m_salon_mode_only_boundary_improvement:Z

.field public m_salon_table:[B

.field public m_segment_map_data:[B

.field m_segment_map_height:I

.field m_segment_map_width:I

.field public m_shine_ratio:[I

.field public m_shine_table:[B

.field public m_target_color_b:[I

.field public m_target_color_count:I

.field public m_target_color_g:[I

.field public m_target_color_r:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_r:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_b:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_alpha_adjuster:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_ratio:[I

    const/16 v0, 0x1000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_gamma_table:[B

    const/16 v1, 0x400

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_misc_tables:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_table:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_salon_table:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_enabled:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_flip:Z

    return-void
.end method


# virtual methods
.method public AllocByteArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    mul-int/2addr p1, p2

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_bound_gradient_map_data:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V
    .locals 1

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_enabled:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_bound_gradient_map_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_bound_gradient_map_data:[B

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_median_gray:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_median_gray:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_r:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_r:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_g:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_g:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_b:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_alpha_adjuster:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_alpha_adjuster:[I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_ratio:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_ratio:[I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_salon_mode_only_boundary_improvement:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_salon_mode_only_boundary_improvement:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_mask_center_x:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_mask_center_x:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_mask_center_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_mask_center_y:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_top_x:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_top_x:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_top_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_top_y:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_bottom_x:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_bottom_x:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_bottom_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_bottom_y:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_y:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_range:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_range:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_count:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_target_color_count:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_mapping_range:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_hair_ombre_mapping_range:F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_gamma_table:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_gamma_table:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_misc_tables:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_misc_tables:[B

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_table:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_shine_table:[B

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_salon_table:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_salon_table:[B

    return-void
.end method
