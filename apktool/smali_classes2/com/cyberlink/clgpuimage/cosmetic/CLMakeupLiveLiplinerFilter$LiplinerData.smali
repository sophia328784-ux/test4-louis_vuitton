.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiplinerData"
.end annotation


# instance fields
.field public m_background_image_height:I

.field public m_background_image_width:I

.field public m_blend_weight_and_lvel_map:[B

.field public m_camera_matrix:[F

.field public m_color_b:I

.field public m_color_g:I

.field public m_color_r:I

.field public m_face_3d_xyz:[F

.field public m_force_bright_threshold:I

.field public m_is_flipped:Z

.field public m_is_texcoord_changed:Z

.field public m_is_valid:Z

.field public m_mask_height:I

.field public m_mask_width:I

.field public m_mouth_mask_data:[B

.field public m_normal_pnp_matrix:[F

.field public m_normal_vectors:[F

.field public m_num_triangles:I

.field public m_pnp_matrix:[F

.field public m_roi_height:I

.field public m_roi_width:I

.field public m_roi_x:I

.field public m_roi_y:I

.field public m_rotation:I

.field public m_texcoords:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_blend_weight_and_lvel_map:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_face_3d_xyz:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_texcoord_changed:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_camera_matrix:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_pnp_matrix:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_pnp_matrix:[F

    return-void
.end method


# virtual methods
.method public AllocByteArray(III)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_height:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_height:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mouth_mask_data:[B

    :cond_1
    if-gtz p3, :cond_3

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    if-eq p1, p3, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    mul-int/lit8 p1, p3, 0x9

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_face_3d_xyz:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    mul-int/lit8 p3, p3, 0x6

    new-array p1, p3, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;)V
    .locals 4

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_width:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_height:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mouth_mask_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mouth_mask_data:[B

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_mask_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_x:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_y:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_roi_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_background_image_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_background_image_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_background_image_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_background_image_height:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_blend_weight_and_lvel_map:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_blend_weight_and_lvel_map:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_flipped:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_flipped:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_r:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_r:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_g:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_g:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_b:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_color_b:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_force_bright_threshold:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_force_bright_threshold:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_valid:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_num_triangles:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_face_3d_xyz:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v0, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_face_3d_xyz:[F

    mul-int/lit8 v3, v0, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_face_3d_xyz:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_vectors:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_texcoords:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_camera_matrix:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_pnp_matrix:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_pnp_matrix:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;->m_normal_pnp_matrix:[F

    array-length v0, p1

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
